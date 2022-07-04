contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - claimAirdrop()
#  - transfer(address arg1, uint256 arg2)
#  - sendAirdrop(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of struct stor5;
array of struct stor6;
uint8 stor7;
address stor7;
address _marketingAddress; offset 8
uint256 _buyMarketingFee;
uint256 _sellMarketingFee;
uint256 _liquidityFee;
address sub_e7e15ccbAddress;
uint256 _burnFee;
address _burnAddress;
uint256 stor15; offset 1
uint256 sub_872ffa57;
uint256 sub_994dfee7;
uint8 sub_5fa41db8;
mapping of uint8 stor18;
mapping of uint8 stor19;
uint256 stor20;
uint256 stor21;
address _uniswapV2RouterAddress;
address _uniswapV2PairAddress;
mapping of uint8 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
mapping of uint8 stor30;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _uniswapV2Router() {
    return _uniswapV2RouterAddress
}

function sub_5fa41db8(?) {
    return bool(sub_5fa41db8)
}

function _liquidityFee() {
    return _liquidityFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_872ffa57(?) {
    return sub_872ffa57
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function hasPermission(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function sub_994dfee7(?) {
    return sub_994dfee7
}

function _uniswapV2Pair() {
    return _uniswapV2PairAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[arg1])
}

function _burnAddress() {
    return _burnAddress
}

function _burnFee() {
    return _burnFee
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function _marketingAddress() {
    return _marketingAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7e15ccb(?) {
    return sub_e7e15ccbAddress
}

function sub_569ea101(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor19[address(arg1)]:
        return 0
    return 1
}

function sub_19938631(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor30[stor27][address(arg1)]:
        return 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: You are not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    stor26 = arg1
}

function sub_646cd202(?) {
    require calldata.size - 4 >= 64
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    require arg1 < _buyMarketingFee
    require arg1 < _sellMarketingFee
    stor20 = arg1
    stor21 = arg2
}

function setFeeWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    stor19[address(arg1)] = uint8(arg2)
    return 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    stor19[address(stor7.field_0)] = 0
    _marketingAddress = arg1
    stor19[arg1] = 1
    return 1
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    _burnFee = arg4
    _buyMarketingFee = arg1
    _sellMarketingFee = arg2
    _liquidityFee = arg3
}

function setPermission(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = uint8(arg2)
    stor19[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: You are not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    if _uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaOlympic: Swap pair cannot be removed'
    stor24[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaOlympic: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaOlympic: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_d08b2001(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == bool(cd[36])
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 19
        stor19[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fab97e28(?) payable {
    require calldata.size - 4 >= 32
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    require not stor25
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaOlympic: approve from the zero address'
    if not _uniswapV2RouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaOlympic: approve to the zero address'
    allowance[address(this.address)][stor22] = totalSupply
    emit Approval(totalSupply, this.address, _uniswapV2RouterAddress);
    call _uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(this.address), totalSupply, 0, 0, address(msg.sender), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor25 = block.timestamp
    stor26 = arg1
}

function sub_b01c64f1(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    sub_5fa41db8 = uint8(bool(arg1))
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        sub_994dfee7 = arg2
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg2 and 10^decimals > -1 / arg2:
                revert with 0, 17
            sub_994dfee7 = arg2 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            sub_994dfee7 = arg2 * s * t
}

function sub_910ea985(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    if cd[68] <= block.timestamp:
        revert with 0, 'MetaOlympic: bad deadline'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(block.number, 30)
        stor30[block.number][mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor29 = cd[4]
    stor27 = block.number
    stor28 = cd[68]
}

function name() {
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
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
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
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
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
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
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
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_b9ccf21d(?) {
    if not stor18[msg.sender]:
        revert with 0, 'MetaOlympic: Permission Denied'
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_994dfee7:
        if ext_call.return_data[0] > 0:
            uint8(stor7.field_0) = 1
            if not _liquidityFee:
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    emit 0xfe066963: 'Insufficient balance'
                else:
                    if not this.address:
                        revert with 0, 'MetaOlympic: approve from the zero address'
                    if not _uniswapV2RouterAddress:
                        revert with 0, 'MetaOlympic: approve to the zero address'
                    allowance[address(this.address)][stor22] = ext_call.return_data[0]
                    emit Approval(ext_call.return_data[0], this.address, _uniswapV2RouterAddress);
                    mem[(2 * ceil32(return_data.size)) + 128] = this.address
                    staticcall _uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(_uniswapV2RouterAddress)
                    call _uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
            else:
                if sub_872ffa57 < stor15:
                    revert with 0, 17
                if ext_call.return_data[0] < stor15:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0] - stor15:
                    emit 0xfe066963: 'Insufficient balance'
                else:
                    if not this.address:
                        revert with 0, 'MetaOlympic: approve from the zero address'
                    if not _uniswapV2RouterAddress:
                        revert with 0, 'MetaOlympic: approve to the zero address'
                    allowance[address(this.address)][stor22] = ext_call.return_data[0] - stor15
                    emit Approval((ext_call.return_data[0] - stor15), this.address, _uniswapV2RouterAddress);
                    mem[(2 * ceil32(return_data.size)) + 128] = this.address
                    staticcall _uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] - stor15
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(_uniswapV2RouterAddress)
                    call _uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - stor15, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
            emit 0xfe066963: 'No BNB for liquidity or marketing'
}



}
