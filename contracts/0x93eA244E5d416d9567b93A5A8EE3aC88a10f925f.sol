contract main {




// =====================  Runtime code  =====================


#
#  - setShare(address arg1, uint256 arg2)
#  - migrate(address arg1, uint256 arg2)
#  - sub_f6ef8f0a(?)
#  - _fallback()
#
address _getOwner;
mapping of uint8 stor1;
address tokenAddress;
address wethAddress;
address routerAddress;
address sub_56807d60Address;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address sub_216fc4f3Address;
uint256 sub_1c4fd161;
uint256 sub_126f929f;
array of address stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of struct sub_53993c7d;
mapping of address sub_bbc10fe5;
mapping of uint256 sub_2be1c8c6;
uint256 sub_50bb4fc9;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 currentIndex;
uint256 sub_144d86d4;
uint256 minimumPeriod;
uint256 sub_08c11150;
uint256 sub_16885cfc;
mapping of uint8 stor26;

function sub_08c11150(?) {
    return sub_08c11150
}

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function sub_126f929f(?) {
    return sub_126f929f
}

function sub_144d86d4(?) {
    return sub_144d86d4
}

function sub_16885cfc(?) {
    return sub_16885cfc
}

function sub_1c4fd161(?) {
    return sub_1c4fd161
}

function sub_216fc4f3(?) {
    return sub_216fc4f3Address
}

function currentIndex() {
    return currentIndex
}

function sub_2be1c8c6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2be1c8c6[arg1]
}

function routerAddress() {
    return routerAddress
}

function totalShares() {
    return totalShares
}

function minimumPeriod() {
    return minimumPeriod
}

function wethAddress() {
    return wethAddress
}

function sub_50bb4fc9(?) {
    return sub_50bb4fc9
}

function sub_53993c7d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_53993c7d[address(arg1)].field_512
}

function sub_56807d60(?) {
    return sub_56807d60Address
}

function totalDividends() {
    return totalDividends
}

function tokenAddress() {
    return tokenAddress
}

function sub_bbc10fe5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bbc10fe5[arg1]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_53993c7d[arg1].field_0, sub_53993c7d[arg1].field_256, sub_53993c7d[arg1].field_512
}

function sub_d40fbf31(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor26[arg1])
}

function sub_d8073718(?) {
    return bool(uint8(stor6.field_160))
}

function dividendsPerShare() {
    return dividendsPerShare
}

function sub_ef646e43(?) {
    return bool(uint8(stor6.field_168))
}

function totalDistributed() {
    return totalDistributed
}

function _getOwner() {
    return _getOwner
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (_getOwner == arg1)
}

function sub_cb5bec57(?) {
    require calldata.size - 4 >= 64
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    minimumPeriod = arg1
    sub_08c11150 = arg2
}

function sub_0655fcff(?) {
    require calldata.size - 4 >= 32
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 <= 750000
    sub_16885cfc = arg1
}

function sub_5d341ccc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    sub_bbc10fe5[address(arg1)] = address(arg2)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_3af5db31(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    sub_56807d60Address = address(arg1)
}

function sub_3c29d70d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    sub_216fc4f3Address = address(arg1)
}

function sub_1b584eb6(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    Mask(88, 0, stor6.field_168) = Mask(88, 0, bool(arg1))
}

function sub_def509f8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    stor26[address(arg1)] = uint8(bool(arg2))
}

function sub_cfcd5e7b(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, bool(arg1))
    sub_1c4fd161 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    _getOwner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function getCurrentBalance() {
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6f20c2db(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function dividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_53993c7d[address(arg1)].field_0:
        return 0
    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
        return 0
    if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
        revert with 0, 17
    return ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256)
}

function getPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_d9cd9185(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if not sub_53993c7d[address(arg1)].field_0:
            stor10[address(arg1)] = stor9.length
            stor9.length++
            stor9[stor9.length] = address(arg1)
            if totalShares < sub_53993c7d[address(arg1)].field_0:
                revert with 0, 17
            if totalShares - sub_53993c7d[address(arg1)].field_0 > !ext_call.return_data[0]:
                revert with 0, 17
            totalShares = totalShares - sub_53993c7d[address(arg1)].field_0 + ext_call.return_data[0]
            sub_53993c7d[address(arg1)].field_0 = ext_call.return_data[0]
            sub_53993c7d[address(arg1)].field_256 = arg2
            sub_53993c7d[address(arg1)].field_512 = arg3
}

function deposit() payable {
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if totalDividends > !0:
        revert with 0, 17
    if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if dividendsPerShare > !((ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares):
        revert with 0, 17
    dividendsPerShare += (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function sub_9840b3b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_53993c7d[address(arg1)].field_0:
        if uint8(stor6.field_168):
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(stor6.field_160):
                if False and totalShares > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(stor6.field_160):
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sub_216fc4f3Address with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                if 0 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if 0 < 0 / ext_call.return_data[0]:
                    revert with 0, 17
                if -0 / ext_call.return_data[0]:
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args -(0 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(arg1) with:
                       value -0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if sub_50bb4fc9 > -1:
                        revert with 0, 17
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > -1:
                        revert with 0, 17
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > -1:
                        revert with 0, 17
                    emit Distribute(address(arg1), 0);
            else:
                if False and sub_1c4fd161 > 0:
                    revert with 0, 17
                if not sub_126f929f:
                    revert with 0, 18
                if False and totalShares > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(stor6.field_160):
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sub_216fc4f3Address with:
                       value 0 / sub_126f929f wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                    revert with 0, 17
                if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (-(0 / sub_126f929f) - (0 / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(arg1) with:
                       value -(0 / sub_126f929f) - (0 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if sub_50bb4fc9 > -1:
                        revert with 0, 17
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > -1:
                        revert with 0, 17
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > -1:
                        revert with 0, 17
                    emit Distribute(address(arg1), 0);
    else:
        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
            if uint8(stor6.field_168):
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if -0 / ext_call.return_data[0]:
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value -0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
                else:
                    if False and sub_1c4fd161 > 0:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                           value 0 / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args (-(0 / sub_126f929f) - (0 / ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value -(0 / sub_126f929f) - (0 / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
        else:
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                revert with 0, 17
            if not uint8(stor6.field_168):
                if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call address(arg1) with:
                       value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]:
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                else:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and sub_1c4fd161 > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
}

function sub_7b6cc51a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor26[msg.sender]:
        revert with 0, 'Unauthorize for Set Share'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_53993c7d[address(arg1)].field_0:
        if not sub_53993c7d[address(arg1)].field_0:
            if uint8(stor6.field_168):
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if -0 / ext_call.return_data[0]:
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value -0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
                else:
                    if False and sub_1c4fd161 > 0:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                           value 0 / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args (-(0 / sub_126f929f) - (0 / ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value -(0 / sub_126f929f) - (0 / ext_call.return_data[0]) wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
        else:
            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
                if uint8(stor6.field_168):
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint8(stor6.field_160):
                        if False and totalShares > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 0 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args (0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not uint8(stor6.field_160):
                            call sub_56807d60Address with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call sub_216fc4f3Address with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call sub_56807d60Address with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                        if 0 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 0 < 0 / ext_call.return_data[0]:
                            revert with 0, 17
                        if -0 / ext_call.return_data[0]:
                            require ext_code.size(wethAddress)
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(arg1) with:
                               value -0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if sub_50bb4fc9 > -1:
                                revert with 0, 17
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > -1:
                                revert with 0, 17
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > -1:
                                revert with 0, 17
                            emit Distribute(address(arg1), 0);
                    else:
                        if False and sub_1c4fd161 > 0:
                            revert with 0, 17
                        if not sub_126f929f:
                            revert with 0, 18
                        if False and totalShares > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not uint8(stor6.field_160):
                            call sub_56807d60Address with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call sub_216fc4f3Address with:
                               value 0 / sub_126f929f wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call sub_56807d60Address with:
                               value 0 / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                        if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                            require ext_code.size(wethAddress)
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (-(0 / sub_126f929f) - (0 / ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(arg1) with:
                               value -(0 / sub_126f929f) - (0 / ext_call.return_data[0]) wei
                                 gas 2300 * is_zero(value) wei
                            if sub_50bb4fc9 > -1:
                                revert with 0, 17
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > -1:
                                revert with 0, 17
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > -1:
                                revert with 0, 17
                            emit Distribute(address(arg1), 0);
            else:
                if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                    revert with 0, 17
                if not uint8(stor6.field_168):
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(arg1) with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                else:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint8(stor6.field_160):
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not uint8(stor6.field_160):
                            call sub_56807d60Address with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call sub_216fc4f3Address with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call sub_56807d60Address with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                        if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]:
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            require ext_code.size(wethAddress)
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(arg1) with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]) wei
                                 gas 2300 * is_zero(value) wei
                            if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                    else:
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and sub_1c4fd161 > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                            revert with 0, 17
                        if not sub_126f929f:
                            revert with 0, 18
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(wethAddress)
                        call wethAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args (((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not uint8(stor6.field_160):
                            call sub_56807d60Address with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call sub_216fc4f3Address with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call sub_56807d60Address with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                                 gas 2300 * is_zero(value) wei
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            require ext_code.size(wethAddress)
                            call wethAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(arg1) with:
                               value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]) wei
                                 gas 2300 * is_zero(value) wei
                            if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
    if ext_call.return_data[0] <= 0:
        if not ext_call.return_data[0]:
            if sub_53993c7d[address(arg1)].field_0:
                if stor9.length < 1:
                    revert with 0, 17
                if stor9.length - 1 >= stor9.length:
                    revert with 0, 50
                if stor10[address(arg1)] >= stor9.length:
                    revert with 0, 50
                stor9[stor10[address(arg1)]] = stor9[stor9.length]
                if stor9.length < 1:
                    revert with 0, 17
                if stor9.length - 1 >= stor9.length:
                    revert with 0, 50
                stor10[stor9[stor9.length]] = stor10[address(arg1)]
                if not stor9.length:
                    revert with 0, 49
                stor9[stor9.length] = 0
                stor9.length--
    else:
        if not sub_53993c7d[address(arg1)].field_0:
            stor10[address(arg1)] = stor9.length
            stor9.length++
            stor9[stor9.length] = address(arg1)
        else:
            if not ext_call.return_data[0]:
                if sub_53993c7d[address(arg1)].field_0:
                    if stor9.length < 1:
                        revert with 0, 17
                    if stor9.length - 1 >= stor9.length:
                        revert with 0, 50
                    if stor10[address(arg1)] >= stor9.length:
                        revert with 0, 50
                    stor9[stor10[address(arg1)]] = stor9[stor9.length]
                    if stor9.length < 1:
                        revert with 0, 17
                    if stor9.length - 1 >= stor9.length:
                        revert with 0, 50
                    stor10[stor9[stor9.length]] = stor10[address(arg1)]
                    if not stor9.length:
                        revert with 0, 49
                    stor9[stor9.length] = 0
                    stor9.length--
    if totalShares < sub_53993c7d[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(arg1)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(arg1)].field_0 + ext_call.return_data[0]
    sub_53993c7d[address(arg1)].field_0 = ext_call.return_data[0]
    if ext_call.return_data[0] and dividendsPerShare > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(arg1)].field_256 = ext_call.return_data[0] * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function claimTo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if wethAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WebooReward: Wrong function if you want to claim to WETH'
    mem[0] = arg1
    mem[32] = 12
    if not sub_53993c7d[address(arg1)].field_0:
        if uint8(stor6.field_168):
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(stor6.field_160):
                if False and totalShares > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(stor6.field_160):
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sub_216fc4f3Address with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                if 0 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if 0 < 0 / ext_call.return_data[0]:
                    revert with 0, 17
                if -0 / ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = wethAddress
                    mem[ceil32(return_data.size) + 160] = arg2
                    mem[ceil32(return_data.size) + 196] = routerAddress
                    mem[ceil32(return_data.size) + 228] = 0
                    require ext_code.size(wethAddress)
                    call wethAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = -0 / ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = arg1
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_2be1c8c6[address(arg2)] > -1:
                        revert with 0, 17
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > -1:
                        revert with 0, 17
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > -1:
                        revert with 0, 17
                    emit Distribute(address(arg1), 0);
            else:
                if False and sub_1c4fd161 > 0:
                    revert with 0, 17
                if not sub_126f929f:
                    revert with 0, 18
                if False and totalShares > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(stor6.field_160):
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sub_216fc4f3Address with:
                       value 0 / sub_126f929f wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                    revert with 0, 17
                if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = wethAddress
                    mem[ceil32(return_data.size) + 160] = arg2
                    mem[ceil32(return_data.size) + 196] = routerAddress
                    mem[ceil32(return_data.size) + 228] = 0
                    require ext_code.size(wethAddress)
                    call wethAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = arg1
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_2be1c8c6[address(arg2)] > -1:
                        revert with 0, 17
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > -1:
                        revert with 0, 17
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > -1:
                        revert with 0, 17
                    emit Distribute(address(arg1), 0);
    else:
        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        mem[0] = arg1
        mem[32] = 12
        if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
            if uint8(stor6.field_168):
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if -0 / ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = arg2
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = 0
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, 0
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = -0 / ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_2be1c8c6[address(arg2)] > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
                else:
                    if False and sub_1c4fd161 > 0:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                           value 0 / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = arg2
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = 0
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, 0
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_2be1c8c6[address(arg2)] > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
        else:
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                revert with 0, 17
            if not uint8(stor6.field_168):
                if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                    mem[128] = wethAddress
                    mem[160] = arg2
                    require ext_code.size(wethAddress)
                    call wethAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_2be1c8c6[address(arg2)] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_2be1c8c6[address(arg2)] = sub_2be1c8c6[address(arg2)] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]:
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = arg2
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_2be1c8c6[address(arg2)] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_2be1c8c6[address(arg2)] = sub_2be1c8c6[address(arg2)] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                else:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and sub_1c4fd161 > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call sub_216fc4f3Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = arg2
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_2be1c8c6[address(arg2)] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_2be1c8c6[address(arg2)] = sub_2be1c8c6[address(arg2)] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
}

function claim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 12
    if not sub_53993c7d[address(arg1)].field_0:
        if uint8(stor6.field_168):
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint8(stor6.field_160):
                if False and totalShares > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(stor6.field_160):
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if -0 / ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = tokenAddress
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = -0 / ext_call.return_data[0]
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -0 / ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = -0 / ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = 64
                        mem[(2 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 292
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _629 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _642 = mem[_629]
                        require mem[_629] <= test266151307()
                        require _629 + mem[_629] + 31 < _629 + return_data.size
                        _655 = mem[_629 + mem[_629]]
                        if mem[_629 + mem[_629]] > test266151307():
                            revert with 0, 65
                        if _629 + ceil32(return_data.size) + ceil32(32 * mem[_629 + mem[_629]]) + 1 > test266151307() or ceil32(32 * mem[_629 + mem[_629]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _629 + ceil32(return_data.size) + ceil32(32 * mem[_629 + mem[_629]]) + 1
                        mem[_629 + ceil32(return_data.size)] = _655
                        require (32 * _655) + _642 + 32 <= return_data.size
                        mem[_629 + ceil32(return_data.size) + 32 len ceil32(32 * _655)] = mem[_629 + _642 + 32 len ceil32(32 * _655)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1084 = mem[_1071]
                        if 1 >= _655:
                            revert with 0, 50
                        _1121 = mem[_629 + ceil32(return_data.size) + 64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = -0 / ext_call.return_data[0]
                        mem[mem[64] + 36] = _1121
                        mem[mem[64] + 68] = 160
                        _1136 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _1136:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args -0 / ext_call.return_data[0], _1121, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1136) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1435 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1448 = mem[_1435]
                        if mem[_1435] < _1084:
                            revert with 0, 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1448 - _1084
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1448 - _1084
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1487] == bool(mem[_1487])
                        if sub_2be1c8c6[stor2] > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
                else:
                    call sub_216fc4f3Address with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if -0 / ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = tokenAddress
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = -0 / ext_call.return_data[0]
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -0 / ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = -0 / ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = 64
                        mem[(2 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 292
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _630 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _643 = mem[_630]
                        require mem[_630] <= test266151307()
                        require _630 + mem[_630] + 31 < _630 + return_data.size
                        _656 = mem[_630 + mem[_630]]
                        if mem[_630 + mem[_630]] > test266151307():
                            revert with 0, 65
                        if _630 + ceil32(return_data.size) + ceil32(32 * mem[_630 + mem[_630]]) + 1 > test266151307() or ceil32(32 * mem[_630 + mem[_630]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _630 + ceil32(return_data.size) + ceil32(32 * mem[_630 + mem[_630]]) + 1
                        mem[_630 + ceil32(return_data.size)] = _656
                        require (32 * _656) + _643 + 32 <= return_data.size
                        mem[_630 + ceil32(return_data.size) + 32 len ceil32(32 * _656)] = mem[_630 + _643 + 32 len ceil32(32 * _656)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1085 = mem[_1072]
                        if 1 >= _656:
                            revert with 0, 50
                        _1123 = mem[_630 + ceil32(return_data.size) + 64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = -0 / ext_call.return_data[0]
                        mem[mem[64] + 36] = _1123
                        mem[mem[64] + 68] = 160
                        _1137 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _1137:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args -0 / ext_call.return_data[0], _1123, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1137) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1436 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1449 = mem[_1436]
                        if mem[_1436] < _1085:
                            revert with 0, 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1449 - _1085
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1449 - _1085
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1488 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1488] == bool(mem[_1488])
                        if sub_2be1c8c6[stor2] > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
            else:
                if False and sub_1c4fd161 > 0:
                    revert with 0, 17
                if not sub_126f929f:
                    revert with 0, 18
                if False and totalShares > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(wethAddress)
                call wethAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not uint8(stor6.field_160):
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = tokenAddress
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 228] = 64
                        mem[(2 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 292
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _627 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _640 = mem[_627]
                        require mem[_627] <= test266151307()
                        require _627 + mem[_627] + 31 < _627 + return_data.size
                        _653 = mem[_627 + mem[_627]]
                        if mem[_627 + mem[_627]] > test266151307():
                            revert with 0, 65
                        if _627 + ceil32(return_data.size) + ceil32(32 * mem[_627 + mem[_627]]) + 1 > test266151307() or ceil32(32 * mem[_627 + mem[_627]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _627 + ceil32(return_data.size) + ceil32(32 * mem[_627 + mem[_627]]) + 1
                        mem[_627 + ceil32(return_data.size)] = _653
                        require (32 * _653) + _640 + 32 <= return_data.size
                        mem[_627 + ceil32(return_data.size) + 32 len ceil32(32 * _653)] = mem[_627 + _640 + 32 len ceil32(32 * _653)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1082 = mem[_1069]
                        if 1 >= _653:
                            revert with 0, 50
                        _1117 = mem[_627 + ceil32(return_data.size) + 64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[mem[64] + 36] = _1117
                        mem[mem[64] + 68] = 160
                        _1134 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _1134:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args -(0 / sub_126f929f) - (0 / ext_call.return_data[0]), _1117, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1134) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1446 = mem[_1433]
                        if mem[_1433] < _1082:
                            revert with 0, 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1446 - _1082
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1446 - _1082
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1485] == bool(mem[_1485])
                        if sub_2be1c8c6[stor2] > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
                else:
                    call sub_216fc4f3Address with:
                       value 0 / sub_126f929f wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_56807d60Address with:
                       value 0 / ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                        revert with 0, 17
                    if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = wethAddress
                        mem[ceil32(return_data.size) + 160] = tokenAddress
                        mem[ceil32(return_data.size) + 196] = routerAddress
                        mem[ceil32(return_data.size) + 228] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 228] = 64
                        mem[(2 * ceil32(return_data.size)) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 292
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _628 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _641 = mem[_628]
                        require mem[_628] <= test266151307()
                        require _628 + mem[_628] + 31 < _628 + return_data.size
                        _654 = mem[_628 + mem[_628]]
                        if mem[_628 + mem[_628]] > test266151307():
                            revert with 0, 65
                        if _628 + ceil32(return_data.size) + ceil32(32 * mem[_628 + mem[_628]]) + 1 > test266151307() or ceil32(32 * mem[_628 + mem[_628]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _628 + ceil32(return_data.size) + ceil32(32 * mem[_628 + mem[_628]]) + 1
                        mem[_628 + ceil32(return_data.size)] = _654
                        require (32 * _654) + _641 + 32 <= return_data.size
                        mem[_628 + ceil32(return_data.size) + 32 len ceil32(32 * _654)] = mem[_628 + _641 + 32 len ceil32(32 * _654)]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1070 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1083 = mem[_1070]
                        if 1 >= _654:
                            revert with 0, 50
                        _1119 = mem[_628 + ceil32(return_data.size) + 64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                        mem[mem[64] + 36] = _1119
                        mem[mem[64] + 68] = 160
                        _1135 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _1135:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args -(0 / sub_126f929f) - (0 / ext_call.return_data[0]), _1119, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1135) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1447 = mem[_1434]
                        if mem[_1434] < _1083:
                            revert with 0, 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _1447 - _1083
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _1447 - _1083
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1486] == bool(mem[_1486])
                        if sub_2be1c8c6[stor2] > -1:
                            revert with 0, 17
                        stor11[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > -1:
                            revert with 0, 17
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > -1:
                            revert with 0, 17
                        emit Distribute(address(arg1), 0);
    else:
        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        mem[0] = arg1
        mem[32] = 12
        if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
            if uint8(stor6.field_168):
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 0 < 0 / ext_call.return_data[0]:
                            revert with 0, 17
                        if -0 / ext_call.return_data[0]:
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = -0 / ext_call.return_data[0]
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -0 / ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = -0 / ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _625 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _638 = mem[_625]
                            require mem[_625] <= test266151307()
                            require _625 + mem[_625] + 31 < _625 + return_data.size
                            _651 = mem[_625 + mem[_625]]
                            if mem[_625 + mem[_625]] > test266151307():
                                revert with 0, 65
                            if _625 + ceil32(return_data.size) + ceil32(32 * mem[_625 + mem[_625]]) + 1 > test266151307() or ceil32(32 * mem[_625 + mem[_625]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _625 + ceil32(return_data.size) + ceil32(32 * mem[_625 + mem[_625]]) + 1
                            mem[_625 + ceil32(return_data.size)] = _651
                            require (32 * _651) + _638 + 32 <= return_data.size
                            mem[_625 + ceil32(return_data.size) + 32 len ceil32(32 * _651)] = mem[_625 + _638 + 32 len ceil32(32 * _651)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1080 = mem[_1067]
                            if 1 >= _651:
                                revert with 0, 50
                            _1113 = mem[_625 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = -0 / ext_call.return_data[0]
                            mem[mem[64] + 36] = _1113
                            mem[mem[64] + 68] = 160
                            _1132 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1132:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -0 / ext_call.return_data[0], _1113, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1132) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1431 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1444 = mem[_1431]
                            if mem[_1431] < _1080:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1444 - _1080
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1444 - _1080
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1483] == bool(mem[_1483])
                            if sub_2be1c8c6[stor2] > -1:
                                revert with 0, 17
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > -1:
                                revert with 0, 17
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > -1:
                                revert with 0, 17
                            emit Distribute(address(arg1), 0);
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if 0 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 0 < 0 / ext_call.return_data[0]:
                            revert with 0, 17
                        if -0 / ext_call.return_data[0]:
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = -0 / ext_call.return_data[0]
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -0 / ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = -0 / ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _626 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _639 = mem[_626]
                            require mem[_626] <= test266151307()
                            require _626 + mem[_626] + 31 < _626 + return_data.size
                            _652 = mem[_626 + mem[_626]]
                            if mem[_626 + mem[_626]] > test266151307():
                                revert with 0, 65
                            if _626 + ceil32(return_data.size) + ceil32(32 * mem[_626 + mem[_626]]) + 1 > test266151307() or ceil32(32 * mem[_626 + mem[_626]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _626 + ceil32(return_data.size) + ceil32(32 * mem[_626 + mem[_626]]) + 1
                            mem[_626 + ceil32(return_data.size)] = _652
                            require (32 * _652) + _639 + 32 <= return_data.size
                            mem[_626 + ceil32(return_data.size) + 32 len ceil32(32 * _652)] = mem[_626 + _639 + 32 len ceil32(32 * _652)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1081 = mem[_1068]
                            if 1 >= _652:
                                revert with 0, 50
                            _1115 = mem[_626 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = -0 / ext_call.return_data[0]
                            mem[mem[64] + 36] = _1115
                            mem[mem[64] + 68] = 160
                            _1133 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1133:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -0 / ext_call.return_data[0], _1115, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1133) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1445 = mem[_1432]
                            if mem[_1432] < _1081:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1445 - _1081
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1445 - _1081
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1484 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1484] == bool(mem[_1484])
                            if sub_2be1c8c6[stor2] > -1:
                                revert with 0, 17
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > -1:
                                revert with 0, 17
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > -1:
                                revert with 0, 17
                            emit Distribute(address(arg1), 0);
                else:
                    if False and sub_1c4fd161 > 0:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if False and totalShares > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((0 / sub_126f929f) + (0 / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _623 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _636 = mem[_623]
                            require mem[_623] <= test266151307()
                            require _623 + mem[_623] + 31 < _623 + return_data.size
                            _649 = mem[_623 + mem[_623]]
                            if mem[_623 + mem[_623]] > test266151307():
                                revert with 0, 65
                            if _623 + ceil32(return_data.size) + ceil32(32 * mem[_623 + mem[_623]]) + 1 > test266151307() or ceil32(32 * mem[_623 + mem[_623]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _623 + ceil32(return_data.size) + ceil32(32 * mem[_623 + mem[_623]]) + 1
                            mem[_623 + ceil32(return_data.size)] = _649
                            require (32 * _649) + _636 + 32 <= return_data.size
                            mem[_623 + ceil32(return_data.size) + 32 len ceil32(32 * _649)] = mem[_623 + _636 + 32 len ceil32(32 * _649)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1065 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1078 = mem[_1065]
                            if 1 >= _649:
                                revert with 0, 50
                            _1109 = mem[_623 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            mem[mem[64] + 36] = _1109
                            mem[mem[64] + 68] = 160
                            _1130 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1130:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -(0 / sub_126f929f) - (0 / ext_call.return_data[0]), _1109, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1130) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1429 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1442 = mem[_1429]
                            if mem[_1429] < _1078:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1442 - _1078
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1442 - _1078
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1481] == bool(mem[_1481])
                            if sub_2be1c8c6[stor2] > -1:
                                revert with 0, 17
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > -1:
                                revert with 0, 17
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > -1:
                                revert with 0, 17
                            emit Distribute(address(arg1), 0);
                    else:
                        call sub_216fc4f3Address with:
                           value 0 / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value 0 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if 0 / sub_126f929f > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if 0 < (0 / sub_126f929f) + (0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if -(0 / sub_126f929f) - (0 / ext_call.return_data[0]):
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _624 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _637 = mem[_624]
                            require mem[_624] <= test266151307()
                            require _624 + mem[_624] + 31 < _624 + return_data.size
                            _650 = mem[_624 + mem[_624]]
                            if mem[_624 + mem[_624]] > test266151307():
                                revert with 0, 65
                            if _624 + ceil32(return_data.size) + ceil32(32 * mem[_624 + mem[_624]]) + 1 > test266151307() or ceil32(32 * mem[_624 + mem[_624]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _624 + ceil32(return_data.size) + ceil32(32 * mem[_624 + mem[_624]]) + 1
                            mem[_624 + ceil32(return_data.size)] = _650
                            require (32 * _650) + _637 + 32 <= return_data.size
                            mem[_624 + ceil32(return_data.size) + 32 len ceil32(32 * _650)] = mem[_624 + _637 + 32 len ceil32(32 * _650)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1079 = mem[_1066]
                            if 1 >= _650:
                                revert with 0, 50
                            _1111 = mem[_624 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = -(0 / sub_126f929f) - (0 / ext_call.return_data[0])
                            mem[mem[64] + 36] = _1111
                            mem[mem[64] + 68] = 160
                            _1131 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1131:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -(0 / sub_126f929f) - (0 / ext_call.return_data[0]), _1111, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1131) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1430 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1443 = mem[_1430]
                            if mem[_1430] < _1079:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1443 - _1079
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1443 - _1079
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1482 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1482] == bool(mem[_1482])
                            if sub_2be1c8c6[stor2] > -1:
                                revert with 0, 17
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > -1:
                                revert with 0, 17
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > -1:
                                revert with 0, 17
                            emit Distribute(address(arg1), 0);
        else:
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                revert with 0, 17
            if not uint8(stor6.field_168):
                if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                    mem[96] = 2
                    mem[128] = wethAddress
                    mem[160] = tokenAddress
                    mem[196] = routerAddress
                    mem[228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    require ext_code.size(wethAddress)
                    call wethAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _635 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32
                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                    _648 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]) + 193
                    mem[(2 * ceil32(return_data.size)) + 192] = _648
                    require (32 * _648) + _635 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _648)] = mem[ceil32(return_data.size) + _635 + 224 len ceil32(32 * _648)]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1077 = mem[_1064]
                    if 1 >= _648:
                        revert with 0, 50
                    _1107 = mem[(2 * ceil32(return_data.size)) + 256]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    mem[mem[64] + 36] = _1107
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256, _1107, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1441 = mem[_1428]
                    if mem[_1428] < _1077:
                        revert with 0, 17
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = _1441 - _1077
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _1441 - _1077
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1480] == bool(mem[_1480])
                    if sub_2be1c8c6[stor2] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_2be1c8c6[stor2] = sub_2be1c8c6[stor2] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    stor11[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor6.field_160):
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]:
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _620 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _633 = mem[_620]
                            require mem[_620] <= test266151307()
                            require _620 + mem[_620] + 31 < _620 + return_data.size
                            _646 = mem[_620 + mem[_620]]
                            if mem[_620 + mem[_620]] > test266151307():
                                revert with 0, 65
                            if _620 + ceil32(return_data.size) + ceil32(32 * mem[_620 + mem[_620]]) + 1 > test266151307() or ceil32(32 * mem[_620 + mem[_620]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _620 + ceil32(return_data.size) + ceil32(32 * mem[_620 + mem[_620]]) + 1
                            mem[_620 + ceil32(return_data.size)] = _646
                            require (32 * _646) + _633 + 32 <= return_data.size
                            mem[_620 + ceil32(return_data.size) + 32 len ceil32(32 * _646)] = mem[_620 + _633 + 32 len ceil32(32 * _646)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1062 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1075 = mem[_1062]
                            if 1 >= _646:
                                revert with 0, 50
                            _1103 = mem[_620 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[mem[64] + 36] = _1103
                            mem[mem[64] + 68] = 160
                            _1127 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1127:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]), _1103, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1127) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1426 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1439 = mem[_1426]
                            if mem[_1426] < _1075:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1439 - _1075
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1439 - _1075
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1478 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1478] == bool(mem[_1478])
                            if sub_2be1c8c6[stor2] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_2be1c8c6[stor2] = sub_2be1c8c6[stor2] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                    else:
                        call sub_216fc4f3Address with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if 0 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]:
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _621 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _634 = mem[_621]
                            require mem[_621] <= test266151307()
                            require _621 + mem[_621] + 31 < _621 + return_data.size
                            _647 = mem[_621 + mem[_621]]
                            if mem[_621 + mem[_621]] > test266151307():
                                revert with 0, 65
                            if _621 + ceil32(return_data.size) + ceil32(32 * mem[_621 + mem[_621]]) + 1 > test266151307() or ceil32(32 * mem[_621 + mem[_621]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _621 + ceil32(return_data.size) + ceil32(32 * mem[_621 + mem[_621]]) + 1
                            mem[_621 + ceil32(return_data.size)] = _647
                            require (32 * _647) + _634 + 32 <= return_data.size
                            mem[_621 + ceil32(return_data.size) + 32 len ceil32(32 * _647)] = mem[_621 + _634 + 32 len ceil32(32 * _647)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1063 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1076 = mem[_1063]
                            if 1 >= _647:
                                revert with 0, 50
                            _1105 = mem[_621 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[mem[64] + 36] = _1105
                            mem[mem[64] + 68] = 160
                            _1128 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1128:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]), _1105, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1128) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1427 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1440 = mem[_1427]
                            if mem[_1427] < _1076:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1440 - _1076
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1440 - _1076
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1479 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1479] == bool(mem[_1479])
                            if sub_2be1c8c6[stor2] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_2be1c8c6[stor2] = sub_2be1c8c6[stor2] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                else:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and sub_1c4fd161 > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not sub_126f929f:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and totalShares > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(wethAddress)
                    call wethAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not uint8(stor6.field_160):
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _618 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _631 = mem[_618]
                            require mem[_618] <= test266151307()
                            require _618 + mem[_618] + 31 < _618 + return_data.size
                            _644 = mem[_618 + mem[_618]]
                            if mem[_618 + mem[_618]] > test266151307():
                                revert with 0, 65
                            if _618 + ceil32(return_data.size) + ceil32(32 * mem[_618 + mem[_618]]) + 1 > test266151307() or ceil32(32 * mem[_618 + mem[_618]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _618 + ceil32(return_data.size) + ceil32(32 * mem[_618 + mem[_618]]) + 1
                            mem[_618 + ceil32(return_data.size)] = _644
                            require (32 * _644) + _631 + 32 <= return_data.size
                            mem[_618 + ceil32(return_data.size) + 32 len ceil32(32 * _644)] = mem[_618 + _631 + 32 len ceil32(32 * _644)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1073 = mem[_1060]
                            if 1 >= _644:
                                revert with 0, 50
                            _1099 = mem[_618 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[mem[64] + 36] = _1099
                            mem[mem[64] + 68] = 160
                            _1125 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1125:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]), _1099, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1125) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1424 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1437 = mem[_1424]
                            if mem[_1424] < _1073:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1437 - _1073
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1437 - _1073
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1476 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1476] == bool(mem[_1476])
                            if sub_2be1c8c6[stor2] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_2be1c8c6[stor2] = sub_2be1c8c6[stor2] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
                    else:
                        call sub_216fc4f3Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call sub_56807d60Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) + ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]):
                            mem[ceil32(return_data.size) + 96] = 2
                            mem[ceil32(return_data.size) + 128] = wethAddress
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            mem[ceil32(return_data.size) + 196] = routerAddress
                            mem[ceil32(return_data.size) + 228] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            require ext_code.size(wethAddress)
                            call wethAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 228] = 64
                            mem[(2 * ceil32(return_data.size)) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 292
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _619 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _632 = mem[_619]
                            require mem[_619] <= test266151307()
                            require _619 + mem[_619] + 31 < _619 + return_data.size
                            _645 = mem[_619 + mem[_619]]
                            if mem[_619 + mem[_619]] > test266151307():
                                revert with 0, 65
                            if _619 + ceil32(return_data.size) + ceil32(32 * mem[_619 + mem[_619]]) + 1 > test266151307() or ceil32(32 * mem[_619 + mem[_619]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _619 + ceil32(return_data.size) + ceil32(32 * mem[_619 + mem[_619]]) + 1
                            mem[_619 + ceil32(return_data.size)] = _645
                            require (32 * _645) + _632 + 32 <= return_data.size
                            mem[_619 + ceil32(return_data.size) + 32 len ceil32(32 * _645)] = mem[_619 + _632 + 32 len ceil32(32 * _645)]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1061 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1074 = mem[_1061]
                            if 1 >= _645:
                                revert with 0, 50
                            _1101 = mem[_619 + ceil32(return_data.size) + 64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0])
                            mem[mem[64] + 36] = _1101
                            mem[mem[64] + 68] = 160
                            _1126 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = mem[64] + 196
                            while idx < _1126:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_1c4fd161) - (sub_53993c7d[address(arg1)].field_256 * sub_1c4fd161) / sub_126f929f) - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * totalShares) - (sub_53993c7d[address(arg1)].field_256 * totalShares) / ext_call.return_data[0]), _1101, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1126) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1425 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1438 = mem[_1425]
                            if mem[_1425] < _1074:
                                revert with 0, 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _1438 - _1074
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _1438 - _1074
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1477 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1477] == bool(mem[_1477])
                            if sub_2be1c8c6[stor2] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_2be1c8c6[stor2] = sub_2be1c8c6[stor2] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            stor11[address(arg1)] = block.timestamp
                            if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                            if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                            emit Distribute(address(arg1), (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256);
}



}
