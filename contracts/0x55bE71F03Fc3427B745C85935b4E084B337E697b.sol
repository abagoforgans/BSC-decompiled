contract main {




// =====================  Runtime code  =====================


#
#  - sub_6345118f(?)
#  - _fallback()
#
const decimals = 18


address _getOwner;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
address tokenAddress;
address routerAddress;
address factoryAddress;
address pairAddress;
address rewardAddress;
address wethAddress;
address tokenAAddress;
address tokenBAddress;
uint256 totalParticipant;
mapping of uint256 sub_77eea11c;
mapping of uint256 sub_00abe480;
uint256 totalDividends;
uint256 totalDistributed;
uint256 sub_50bb4fc9;
uint256 totalShares;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint8 sub_08e8d160;
uint256 sub_3fad1322;
uint256 sub_61a8e02f;
mapping of uint8 stor27;
address sub_4c1c1558Address;
array of address stor29;
mapping of uint256 stor30;
mapping of uint256 stor31;
mapping of uint256 sub_2be1c8c6;
uint256 sub_dc650790;
mapping of struct sub_53993c7d;
array of address stor49422300655976383518971161772042036479724517635858811238160587340303074464591;

function sub_00abe480(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_00abe480[arg1]
}

function sub_08e8d160(?) {
    return bool(sub_08e8d160)
}

function tokenA() {
    return tokenAAddress
}

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalSupply() {
    return totalSupply
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

function sub_3fad1322(?) {
    return sub_3fad1322
}

function sub_4c1c1558(?) {
    return sub_4c1c1558Address
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

function tokenB() {
    return tokenBAddress
}

function sub_61a8e02f(?) {
    return sub_61a8e02f
}

function totalParticipant() {
    return totalParticipant
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_77eea11c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_77eea11c[arg1]
}

function rewardAddress() {
    return rewardAddress
}

function isExcludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[arg1])
}

function factoryAddress() {
    return factoryAddress
}

function totalDividends() {
    return totalDividends
}

function tokenAddress() {
    return tokenAddress
}

function pairAddress() {
    return pairAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_53993c7d[arg1].field_0, sub_53993c7d[arg1].field_256, sub_53993c7d[arg1].field_512
}

function sub_dc650790(?) {
    return sub_dc650790
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function dividendsPerShare() {
    return dividendsPerShare
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

function sub_ede9014c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return not bool(stor27[address(arg1)])
}

function sub_f9c1b06f(?) {
    require calldata.size - 4 >= 32
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    sub_dc650790 = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    stor1[address(arg1)] = 0
}

function sub_4984eaa8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    sub_08e8d160 = uint8(bool(arg1))
}

function sub_7079891b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    sub_4c1c1558Address = address(arg1)
}

function sub_00a03885(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    stor27[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    _getOwner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_717c4500(?) {
    require calldata.size - 4 >= 32
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    if arg1 < 100:
        revert with 0, 'WebooFarming: min 1% and max 50%'
    if arg1 > 5000:
        revert with 0, 'WebooFarming: min 1% and max 50%'
    sub_3fad1322 = arg1
}

function sub_f6076936(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_40e77413(?) {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardAddress)
    call rewardAddress.0x14b6ca96 with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_6f20c2db(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if _getOwner != msg.sender:
        revert with 0, 'WebooFarming: !OWNER'
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

function calculateShare() {
    require ext_code.size(rewardAddress)
    call rewardAddress.0x7b6cc51a with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardAddress)
    call rewardAddress.0x14b6ca96 with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if totalSupply > 0:
        if totalDividends > -1:
            revert with 0, 17
        if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if dividendsPerShare > !(0 / totalSupply):
            revert with 0, 17
        dividendsPerShare += 0 / totalSupply
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2:
        if msg.sender:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            if not balanceOf[address(msg.sender)] - arg2:
                if totalParticipant > 0:
                    if totalParticipant < 1:
                        revert with 0, 17
                    totalParticipant--
        if arg1:
            if not balanceOf[address(arg1)]:
                if totalParticipant > -2:
                    revert with 0, 17
                totalParticipant++
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not balanceOf[address(msg.sender)]:
        if sub_53993c7d[address(msg.sender)].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[address(msg.sender)] >= stor29.length:
                revert with 0, 50
            stor29[stor30[address(msg.sender)]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[address(msg.sender)]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[address(msg.sender)].field_0:
            stor30[address(msg.sender)] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = msg.sender
        else:
            if not balanceOf[address(msg.sender)]:
                if sub_53993c7d[address(msg.sender)].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[address(msg.sender)] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[address(msg.sender)]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[address(msg.sender)]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[address(msg.sender)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(msg.sender)].field_0 > !balanceOf[address(msg.sender)]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(msg.sender)].field_0 + balanceOf[address(msg.sender)]
    sub_53993c7d[address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] and dividendsPerShare > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(msg.sender)].field_256 = balanceOf[address(msg.sender)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if not balanceOf[address(arg1)]:
        if sub_53993c7d[address(arg1)].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[address(arg1)] >= stor29.length:
                revert with 0, 50
            stor29[stor30[address(arg1)]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[address(arg1)]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[address(arg1)].field_0:
            stor30[address(arg1)] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = arg1
        else:
            if not balanceOf[address(arg1)]:
                if sub_53993c7d[address(arg1)].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[address(arg1)] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[address(arg1)]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[address(arg1)]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(arg1)].field_0 > !balanceOf[address(arg1)]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(arg1)].field_0 + balanceOf[address(arg1)]
    sub_53993c7d[address(arg1)].field_0 = balanceOf[address(arg1)]
    if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(arg1)].field_256 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3:
        if arg1:
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            if not balanceOf[address(arg1)] - arg3:
                if totalParticipant > 0:
                    if totalParticipant < 1:
                        revert with 0, 17
                    totalParticipant--
        if arg2:
            if not balanceOf[address(arg2)]:
                if totalParticipant > -2:
                    revert with 0, 17
                totalParticipant++
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if not balanceOf[address(arg1)]:
        if sub_53993c7d[address(arg1)].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[address(arg1)] >= stor29.length:
                revert with 0, 50
            stor29[stor30[address(arg1)]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[address(arg1)]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[address(arg1)].field_0:
            stor30[address(arg1)] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = arg1
        else:
            if not balanceOf[address(arg1)]:
                if sub_53993c7d[address(arg1)].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[address(arg1)] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[address(arg1)]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[address(arg1)]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(arg1)].field_0 > !balanceOf[address(arg1)]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(arg1)].field_0 + balanceOf[address(arg1)]
    sub_53993c7d[address(arg1)].field_0 = balanceOf[address(arg1)]
    if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(arg1)].field_256 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if not balanceOf[address(arg2)]:
        if sub_53993c7d[address(arg2)].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[address(arg2)] >= stor29.length:
                revert with 0, 50
            stor29[stor30[address(arg2)]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[address(arg2)]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[address(arg2)].field_0:
            stor30[address(arg2)] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = arg2
        else:
            if not balanceOf[address(arg2)]:
                if sub_53993c7d[address(arg2)].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[address(arg2)] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[address(arg2)]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[address(arg2)]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[address(arg2)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(arg2)].field_0 > !balanceOf[address(arg2)]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(arg2)].field_0 + balanceOf[address(arg2)]
    sub_53993c7d[address(arg2)].field_0 = balanceOf[address(arg2)]
    if balanceOf[address(arg2)] and dividendsPerShare > -1 / balanceOf[address(arg2)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(arg2)].field_256 = balanceOf[address(arg2)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_874f20a8(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'WebooFarming: Insufficient Amount'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa03885 with:
         gas gas_remaining wei
        args pairAddress, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pairAddress)
    call pairAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args tokenAAddress, tokenBAddress, arg1, 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg2) with:
         gas 2300 * is_zero(value) wei
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa03885 with:
         gas gas_remaining wei
        args pairAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if arg1:
        if msg.sender:
            if balanceOf[address(msg.sender)] < arg1:
                revert with 0, 17
            if not balanceOf[address(msg.sender)] - arg1:
                if totalParticipant > 0:
                    if totalParticipant < 1:
                        revert with 0, 17
                    totalParticipant--
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if not balanceOf[address(msg.sender)]:
        if sub_53993c7d[address(msg.sender)].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[address(msg.sender)] >= stor29.length:
                revert with 0, 50
            stor29[stor30[address(msg.sender)]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[address(msg.sender)]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[address(msg.sender)].field_0:
            stor30[address(msg.sender)] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = msg.sender
        else:
            if not balanceOf[address(msg.sender)]:
                if sub_53993c7d[address(msg.sender)].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[address(msg.sender)] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[address(msg.sender)]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[address(msg.sender)]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[address(msg.sender)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(msg.sender)].field_0 > !balanceOf[address(msg.sender)]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(msg.sender)].field_0 + balanceOf[address(msg.sender)]
    sub_53993c7d[address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] and dividendsPerShare > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(msg.sender)].field_256 = balanceOf[address(msg.sender)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if not balanceOf[0]:
        if sub_53993c7d[0].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[0] >= stor29.length:
                revert with 0, 50
            stor29[stor30[0]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[0]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[0].field_0:
            stor30[0] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = 0
        else:
            if not balanceOf[0]:
                if sub_53993c7d[0].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[0] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[0]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[0]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[0].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[0].field_0 > !balanceOf[0]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[0].field_0 + balanceOf[0]
    sub_53993c7d[0].field_0 = balanceOf[0]
    if balanceOf[0] and dividendsPerShare > -1 / balanceOf[0]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[0].field_256 = balanceOf[0] * dividendsPerShare / dividendsPerShareAccuracyFactor
    if not balanceOf[address(msg.sender)]:
        if sub_53993c7d[address(msg.sender)].field_0:
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            if stor30[address(msg.sender)] >= stor29.length:
                revert with 0, 50
            stor29[stor30[address(msg.sender)]] = stor29[stor29.length]
            if stor29.length < 1:
                revert with 0, 17
            if stor29.length - 1 >= stor29.length:
                revert with 0, 50
            stor30[stor29[stor29.length]] = stor30[address(msg.sender)]
            if not stor29.length:
                revert with 0, 49
            stor29[stor29.length] = 0
            stor29.length--
    else:
        if not sub_53993c7d[address(msg.sender)].field_0:
            stor30[address(msg.sender)] = stor29.length
            stor29.length++
            stor6D44[stor29.length] = msg.sender
        else:
            if not balanceOf[address(msg.sender)]:
                if sub_53993c7d[address(msg.sender)].field_0:
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    if stor30[address(msg.sender)] >= stor29.length:
                        revert with 0, 50
                    stor29[stor30[address(msg.sender)]] = stor29[stor29.length]
                    if stor29.length < 1:
                        revert with 0, 17
                    if stor29.length - 1 >= stor29.length:
                        revert with 0, 50
                    stor30[stor29[stor29.length]] = stor30[address(msg.sender)]
                    if not stor29.length:
                        revert with 0, 49
                    stor29[stor29.length] = 0
                    stor29.length--
    if totalShares < sub_53993c7d[address(msg.sender)].field_0:
        revert with 0, 17
    if totalShares - sub_53993c7d[address(msg.sender)].field_0 > !balanceOf[address(msg.sender)]:
        revert with 0, 17
    totalShares = totalShares - sub_53993c7d[address(msg.sender)].field_0 + balanceOf[address(msg.sender)]
    sub_53993c7d[address(msg.sender)].field_0 = balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] and dividendsPerShare > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    sub_53993c7d[address(msg.sender)].field_256 = balanceOf[address(msg.sender)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    require ext_code.size(rewardAddress)
    call rewardAddress.0x7b6cc51a with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardAddress)
    call rewardAddress.0x14b6ca96 with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if totalSupply > 0:
        if totalDividends > -1:
            revert with 0, 17
        if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if dividendsPerShare > !(0 / totalSupply):
            revert with 0, 17
        dividendsPerShare += 0 / totalSupply
    emit 0xa61d4114: msg.sender, arg1, address(arg2), ext_call.return_data[0], ext_call.return_data[32]
}

function claim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_53993c7d[address(arg1)].field_0:
        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        mem[0] = arg1
        mem[32] = 34
        if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > sub_53993c7d[address(arg1)].field_256:
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                revert with 0, 17
            if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                require ext_code.size(wethAddress)
                call wethAddress.0xd0e30db0 with:
                   value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                _57 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32
                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                _58 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256) >> 32 + 192]) + 193
                mem[(2 * ceil32(return_data.size)) + 192] = _58
                require (32 * _58) + _57 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _58)] = mem[ceil32(return_data.size) + _57 + 224 len ceil32(32 * _58)]
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _97 = mem[_96]
                if 1 >= _58:
                    revert with 0, 50
                _99 = mem[(2 * ceil32(return_data.size)) + 256]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                mem[mem[64] + 36] = _99
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
                    args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256, _99, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
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
                _130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _131 = mem[_130]
                if mem[_130] < _97:
                    revert with 0, 17
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _131 - _97
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _131 - _97
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_134] == bool(mem[_134])
                if sub_2be1c8c6[stor7] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                    revert with 0, 17
                sub_2be1c8c6[stor7] = sub_2be1c8c6[stor7] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                stor31[address(arg1)] = block.timestamp
                if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                    revert with 0, 17
                sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                mem[0] = arg1
                mem[32] = 34
                sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                    revert with 0, 17
                totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                require ext_code.size(rewardAddress)
                call rewardAddress.0x7b6cc51a with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = pairAddress
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args pairAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(rewardAddress)
                call rewardAddress.0x14b6ca96 with:
                     gas gas_remaining wei
                    args address(this.address), mem[_146]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if totalSupply > 0:
                    if totalDividends > -1:
                        revert with 0, 17
                    if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if dividendsPerShare > !(0 / totalSupply):
                        revert with 0, 17
                    dividendsPerShare += 0 / totalSupply
}

function sub_9840b3b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor27[address(arg1)]:
        if sub_53993c7d[address(arg1)].field_0:
            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > sub_53993c7d[address(arg1)].field_256:
                if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                    revert with 0, 17
                if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                    call address(arg1) with:
                       value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                        revert with 0, 17
                    sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                    stor31[address(arg1)] = block.timestamp
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
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x7b6cc51a with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args pairAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x14b6ca96 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if totalSupply > 0:
                        if totalDividends > -1:
                            revert with 0, 17
                        if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if dividendsPerShare > !(0 / totalSupply):
                            revert with 0, 17
                        dividendsPerShare += 0 / totalSupply
    else:
        if not sub_53993c7d[address(arg1)].field_0:
            if sub_08e8d160:
                if False and sub_3fad1322 > 0:
                    revert with 0, 17
                if not sub_61a8e02f:
                    revert with 0, 18
                if 0 / sub_61a8e02f:
                    call sub_4c1c1558Address with:
                       value 0 / sub_61a8e02f wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if 0 < 0 / sub_61a8e02f:
                    revert with 0, 17
                if -0 / sub_61a8e02f:
                    call address(arg1) with:
                       value -0 / sub_61a8e02f wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_50bb4fc9 > !-(0 / sub_61a8e02f):
                        revert with 0, 17
                    sub_50bb4fc9 -= 0 / sub_61a8e02f
                    stor31[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > !-(0 / sub_61a8e02f):
                        revert with 0, 17
                    sub_53993c7d[address(arg1)].field_512 -= 0 / sub_61a8e02f
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > !-(0 / sub_61a8e02f):
                        revert with 0, 17
                    totalDistributed -= 0 / sub_61a8e02f
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x7b6cc51a with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args pairAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x14b6ca96 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if totalSupply > 0:
                        if totalDividends > -1:
                            revert with 0, 17
                        if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if dividendsPerShare > !(0 / totalSupply):
                            revert with 0, 17
                        dividendsPerShare += 0 / totalSupply
        else:
            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
                if sub_08e8d160:
                    if False and sub_3fad1322 > 0:
                        revert with 0, 17
                    if not sub_61a8e02f:
                        revert with 0, 18
                    if 0 / sub_61a8e02f:
                        call sub_4c1c1558Address with:
                           value 0 / sub_61a8e02f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 < 0 / sub_61a8e02f:
                        revert with 0, 17
                    if -0 / sub_61a8e02f:
                        call address(arg1) with:
                           value -0 / sub_61a8e02f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_50bb4fc9 > !-(0 / sub_61a8e02f):
                            revert with 0, 17
                        sub_50bb4fc9 -= 0 / sub_61a8e02f
                        stor31[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !-(0 / sub_61a8e02f):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 -= 0 / sub_61a8e02f
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !-(0 / sub_61a8e02f):
                            revert with 0, 17
                        totalDistributed -= 0 / sub_61a8e02f
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x7b6cc51a with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args pairAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x14b6ca96 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if totalSupply > 0:
                            if totalDividends > -1:
                                revert with 0, 17
                            if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if dividendsPerShare > !(0 / totalSupply):
                                revert with 0, 17
                            dividendsPerShare += 0 / totalSupply
            else:
                if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                    revert with 0, 17
                if not sub_08e8d160:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        call address(arg1) with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256):
                            revert with 0, 17
                        sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256
                        stor31[address(arg1)] = block.timestamp
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
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x7b6cc51a with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args pairAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x14b6ca96 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if totalSupply > 0:
                            if totalDividends > -1:
                                revert with 0, 17
                            if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if dividendsPerShare > !(0 / totalSupply):
                                revert with 0, 17
                            dividendsPerShare += 0 / totalSupply
                else:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and sub_3fad1322 > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not sub_61a8e02f:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f:
                        call sub_4c1c1558Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f:
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f):
                        call address(arg1) with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_50bb4fc9 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)):
                            revert with 0, 17
                        sub_50bb4fc9 = sub_50bb4fc9 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        stor31[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x7b6cc51a with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args pairAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x14b6ca96 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if totalSupply > 0:
                            if totalDividends > -1:
                                revert with 0, 17
                            if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if dividendsPerShare > !(0 / totalSupply):
                                revert with 0, 17
                            dividendsPerShare += 0 / totalSupply
}

function claimTo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor27[address(arg1)]:
        if sub_53993c7d[address(arg1)].field_0:
            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > sub_53993c7d[address(arg1)].field_256:
                if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                    revert with 0, 17
                if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                    require ext_code.size(wethAddress)
                    call wethAddress.0xd0e30db0 with:
                       value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    stor31[address(arg1)] = block.timestamp
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
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x7b6cc51a with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args pairAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x14b6ca96 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if totalSupply > 0:
                        if totalDividends > -1:
                            revert with 0, 17
                        if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if dividendsPerShare > !(0 / totalSupply):
                            revert with 0, 17
                        dividendsPerShare += 0 / totalSupply
    else:
        if not sub_53993c7d[address(arg1)].field_0:
            if sub_08e8d160:
                if False and sub_3fad1322 > 0:
                    revert with 0, 17
                if not sub_61a8e02f:
                    revert with 0, 18
                if 0 / sub_61a8e02f:
                    call sub_4c1c1558Address with:
                       value 0 / sub_61a8e02f wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if 0 < 0 / sub_61a8e02f:
                    revert with 0, 17
                if -0 / sub_61a8e02f:
                    require ext_code.size(wethAddress)
                    call wethAddress.0xd0e30db0 with:
                       value -0 / sub_61a8e02f wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128] = wethAddress
                    mem[160] = arg2
                    require ext_code.size(wethAddress)
                    call wethAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, -0 / sub_61a8e02f
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -0 / sub_61a8e02f
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
                        args -0 / sub_61a8e02f, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_2be1c8c6[address(arg2)] > !-(0 / sub_61a8e02f):
                        revert with 0, 17
                    sub_2be1c8c6[address(arg2)] -= 0 / sub_61a8e02f
                    stor31[address(arg1)] = block.timestamp
                    if sub_53993c7d[address(arg1)].field_512 > !-(0 / sub_61a8e02f):
                        revert with 0, 17
                    sub_53993c7d[address(arg1)].field_512 -= 0 / sub_61a8e02f
                    if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    if totalDistributed > !-(0 / sub_61a8e02f):
                        revert with 0, 17
                    totalDistributed -= 0 / sub_61a8e02f
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x7b6cc51a with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args pairAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardAddress)
                    call rewardAddress.0x14b6ca96 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if totalSupply > 0:
                        if totalDividends > -1:
                            revert with 0, 17
                        if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if dividendsPerShare > !(0 / totalSupply):
                            revert with 0, 17
                        dividendsPerShare += 0 / totalSupply
        else:
            if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= sub_53993c7d[address(arg1)].field_256:
                if sub_08e8d160:
                    if False and sub_3fad1322 > 0:
                        revert with 0, 17
                    if not sub_61a8e02f:
                        revert with 0, 18
                    if 0 / sub_61a8e02f:
                        call sub_4c1c1558Address with:
                           value 0 / sub_61a8e02f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if 0 < 0 / sub_61a8e02f:
                        revert with 0, 17
                    if -0 / sub_61a8e02f:
                        require ext_code.size(wethAddress)
                        call wethAddress.0xd0e30db0 with:
                           value -0 / sub_61a8e02f wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = wethAddress
                        mem[160] = arg2
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, -0 / sub_61a8e02f
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = -0 / sub_61a8e02f
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
                            args -0 / sub_61a8e02f, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_2be1c8c6[address(arg2)] > !-(0 / sub_61a8e02f):
                            revert with 0, 17
                        sub_2be1c8c6[address(arg2)] -= 0 / sub_61a8e02f
                        stor31[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !-(0 / sub_61a8e02f):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 -= 0 / sub_61a8e02f
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !-(0 / sub_61a8e02f):
                            revert with 0, 17
                        totalDistributed -= 0 / sub_61a8e02f
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x7b6cc51a with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args pairAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x14b6ca96 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if totalSupply > 0:
                            if totalDividends > -1:
                                revert with 0, 17
                            if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if dividendsPerShare > !(0 / totalSupply):
                                revert with 0, 17
                            dividendsPerShare += 0 / totalSupply
            else:
                if sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < sub_53993c7d[address(arg1)].field_256:
                    revert with 0, 17
                if not sub_08e8d160:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        require ext_code.size(wethAddress)
                        call wethAddress.0xd0e30db0 with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        stor31[address(arg1)] = block.timestamp
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
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x7b6cc51a with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args pairAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x14b6ca96 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if totalSupply > 0:
                            if totalDividends > -1:
                                revert with 0, 17
                            if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if dividendsPerShare > !(0 / totalSupply):
                                revert with 0, 17
                            dividendsPerShare += 0 / totalSupply
                else:
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 and sub_3fad1322 > -1 / (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256:
                        revert with 0, 17
                    if not sub_61a8e02f:
                        revert with 0, 18
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f:
                        call sub_4c1c1558Address with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 < (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f:
                        revert with 0, 17
                    if (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f):
                        require ext_code.size(wethAddress)
                        call wethAddress.0xd0e30db0 with:
                           value (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = wethAddress
                        mem[160] = arg2
                        require ext_code.size(wethAddress)
                        call wethAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args routerAddress, (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
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
                            args (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f), 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_2be1c8c6[address(arg2)] > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)):
                            revert with 0, 17
                        sub_2be1c8c6[address(arg2)] = sub_2be1c8c6[address(arg2)] + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        stor31[address(arg1)] = block.timestamp
                        if sub_53993c7d[address(arg1)].field_512 > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)):
                            revert with 0, 17
                        sub_53993c7d[address(arg1)].field_512 = sub_53993c7d[address(arg1)].field_512 + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        if sub_53993c7d[address(arg1)].field_0 and dividendsPerShare > -1 / sub_53993c7d[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        sub_53993c7d[address(arg1)].field_256 = sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        if totalDistributed > !((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - sub_53993c7d[address(arg1)].field_256 - ((sub_53993c7d[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor * sub_3fad1322) - (sub_53993c7d[address(arg1)].field_256 * sub_3fad1322) / sub_61a8e02f)
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x7b6cc51a with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args pairAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardAddress)
                        call rewardAddress.0x14b6ca96 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if totalSupply > 0:
                            if totalDividends > -1:
                                revert with 0, 17
                            if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if dividendsPerShare > !(0 / totalSupply):
                                revert with 0, 17
                            dividendsPerShare += 0 / totalSupply
}



}
