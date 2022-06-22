contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 9

const symbol = ''


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 totalFee;
uint256 feeDenominator;
uint256 stor17;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address stor20;
uint256 stor21;
uint256 stor22;
address routerAddress;
address pairAddress;
address stor25;
address distributorAddress;
uint256 stor27;
uint8 swapEnabled;
uint8 stor28; offset 8
address masterAddress; offset 16
uint256 stor29;
uint256 sub_0047403c;
uint256 stor31;
uint256 totalSupply;
uint256 stor33;
uint256 stor34;

function sub_0047403c(?) {
    return sub_0047403c
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function swapEnabled() {
    return bool(swapEnabled)
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function pair() {
    return pairAddress
}

function sub_b8b7526a(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function master() {
    return masterAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor28)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function checkMaxTxAmount() {
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    return (stor33 / stor31)
}

function checkSwapThreshold() {
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    return (stor29 / stor31)
}

function checkMaxWalletToken() {
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    return (stor34 / stor31)
}

function sub_557c3f29(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor17 = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor25 = arg1
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    masterAddress = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_7c73ec43(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor21 = arg1
    stor22 = arg2
}

function sub_2f933302(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor7[address(arg1)] = uint8(arg2)
}

function sub_53f70533(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9[address(arg1)] = uint8(arg2)
}

function sub_75cb302e(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    return (stor5[address(arg1)] / stor31)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 250 * 3600
    stor27 = arg1
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_e608606b(?) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    stor20 = arg3
}

function getCirculatingSupply() {
    if stor5[stor3] > -7913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    return (-stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31)
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f7a40cdc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e56041875fa30000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e56041875fa30000 != arg1:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    stor33 = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e56041875fa30000 * arg1
}

function sub_fb586c7e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e56041875fa30000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e56041875fa30000 != arg1:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    stor34 = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e56041875fa30000 * arg1
}

function authorize(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_8bdfd026(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0bcc38000 * arg2 / 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0bcc38000 != arg2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    stor29 = 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0bcc38000 * arg2
}

function sub_d14c0915(?) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11 = arg1
    stor12 = arg2
    stor13 = arg3
    stor14 = arg4
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg4 + arg3 + arg2 + arg1
    feeDenominator = arg5
    require arg5 > arg4 + arg3 + arg2 + arg1
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor10[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if not stor31:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / stor31
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_045b31f4(?) {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    sub_0047403c++
    if stor28:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
        else:
            if -arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply += arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        stor31 = -7913129639936 / totalSupply
        require ext_code.size(stor25)
        call stor25.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        emit LogRebase(totalSupply, arg1);
    else:
        emit LogRebase(totalSupply, sub_0047403c);
    return totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[stor3] > -7913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    if not stor5[stor24] / stor31:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31)
    if 2 * stor5[stor24] / stor31 / stor5[stor24] / stor31 != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31)
    if 2 * stor5[stor24] / stor31 * arg1 / arg1 != 2 * stor5[stor24] / stor31:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor5[stor24] / stor31 * arg1 / -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[stor3] > -7913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    if not stor5[stor24] / stor31:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31 > arg1)
    if 2 * stor5[stor24] / stor31 / stor5[stor24] / stor31 != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31 > arg1)
    if 2 * stor5[stor24] / stor31 * arg2 / arg2 != 2 * stor5[stor24] / stor31:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor5[stor24] / stor31 * arg2 / -stor5[stor3] + -stor5[stor4] - 7913129639936 / stor31 > arg1)
}

function sub_8810b25d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if ('cd', 4).length >= 5001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x77474153204572726f723a206d6178206164647265737320616c6c6f77656420697320353030,
                    mem[202 len 26]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 10
        if not stor10[address(cd[((32 * idx) + cd[4] + 36)])]:
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 5
            _23 = mem[64]
            mem[64] = mem[64] + 64
            mem[_23] = 26
            mem[_23 + 32] = 'SafeMath: division by zero'
            if not stor31:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _23 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + cd[4] + 36)])] / stor31
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), stor5[address(cd[((32 * idx) + cd[4] + 36)])] / stor31
        idx = idx + 1
        continue 
}

function sub_f6759f48(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg2:
        if not totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == owner
            sub_0047403c++
            if stor28:
                revert with 0, 'Try again'
        else:
            if arg1 * totalSupply / 1000 / totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if masterAddress != msg.sender:
                require msg.sender == owner
            sub_0047403c++
            if stor28:
                revert with 0, 'Try again'
            if arg1 * totalSupply / 1000:
                if arg1 * totalSupply / 1000 >= 0:
                    if (arg1 * totalSupply / 1000) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1 * totalSupply / 1000
                else:
                    if -1 * arg1 * totalSupply / 1000 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply += arg1 * totalSupply / 1000
                if test266151307() < totalSupply:
                    totalSupply = test266151307()
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                stor31 = -7913129639936 / totalSupply
                require ext_code.size(stor25)
                call stor25.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == owner
            sub_0047403c++
            if stor28:
                revert with 0, 'Try again'
        else:
            if arg1 * totalSupply / 1000 / totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * arg1 * totalSupply / 1000 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, arg1 * totalSupply / 1000) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * arg1 * totalSupply / 1000 / -1 == arg1 * totalSupply / 1000
            if masterAddress != msg.sender:
                require msg.sender == owner
            sub_0047403c++
            if stor28:
                revert with 0, 'Try again'
            if -1 * arg1 * totalSupply / 1000:
                if -1 * arg1 * totalSupply / 1000 >= 0:
                    if (-1 * arg1 * totalSupply / 1000) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += -1 * arg1 * totalSupply / 1000
                else:
                    if test266151307() * arg1 * totalSupply / 1000 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply += -1 * arg1 * totalSupply / 1000
                if test266151307() < totalSupply:
                    totalSupply = test266151307()
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                stor31 = -7913129639936 / totalSupply
                require ext_code.size(stor25)
                call stor25.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, sub_0047403c);
    return totalSupply
}



}
