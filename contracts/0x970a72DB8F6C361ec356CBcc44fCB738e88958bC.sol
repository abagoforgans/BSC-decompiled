contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address stor101;
mapping of uint256 allowance;
mapping of uint8 stor103;
mapping of uint256 balanceOf;
array of struct stor105;
array of struct stor106;
uint8 decimals;
uint256 totalSupply;
uint128 _marketingFee;
uint128 stor109; offset 128
uint256 stor109;
uint128 _projectFee;
uint128 stor110; offset 128
uint256 stor110;
uint128 _burnFee;
uint128 stor111; offset 128
uint256 stor111;
address marketingAddress;
address projectAddress;
address sub_f6b22b76Address;
address _pancakeV2PairAddress;
uint256 stor116;
address stor117;
address stor118;
mapping of uint256 stor119;
mapping of uint8 stor120;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;

function _projectFee() {
    return _projectFee
}

function totalSupply() {
    return totalSupply
}

function _marketingFee() {
    return _marketingFee
}

function decimals() {
    return decimals
}

function projectAddress() {
    return projectAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor103[address(arg1)])
}

function _pancakeV2Pair() {
    return _pancakeV2PairAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingAddress() {
    return marketingAddress
}

function _burnFee() {
    return _burnFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f6b22b76(?) {
    return sub_f6b22b76Address
}

function totalBuyFees() {
    if _marketingFee > -_projectFee + test266151307():
        revert with 0, 17
    if uint128(_projectFee + _marketingFee) > -_burnFee + test266151307():
        revert with 0, 17
    return uint128(_burnFee + uint128(_projectFee + _marketingFee))
}

function totalSellFees() {
    if _marketingFee > -_projectFee + test266151307():
        revert with 0, 17
    if uint128(_projectFee + _marketingFee) > -_burnFee + test266151307():
        revert with 0, 17
    if uint128(_burnFee + uint128(_projectFee + _marketingFee)) > 0x7fffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (2 * Mask(127, 0, _burnFee + uint128(_projectFee + _marketingFee)))
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

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    stor103[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    stor103[address(arg1)] = 1
}

function allowAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    stor120[address(arg1)] = uint8(arg2)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
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

function setAppContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Multisig: Access denied'
    if not arg1:
        revert with 0, 'AutoCrypto: App to the zero address'
    stor117 = arg1
}

function recoverBNB() {
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setProjectWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Multisig: Access denied'
    if not arg1:
        revert with 0, 'Wallet cannot be zero address'
    if projectAddress == arg1:
        revert with 0, 'Wallet already set!'
    projectAddress = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Multisig: Access denied'
    if not arg1:
        revert with 0, 'Wallet cannot be zero address'
    if marketingAddress == arg1:
        revert with 0, 'Wallet already set!'
    marketingAddress = arg1
}

function getTokensBought(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor119[address(arg1)]:
        return stor119[address(arg1)]
    require ext_code.size(stor117)
    staticcall stor117.balanceWithVesting(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 1
    require ext_code.size(stor117)
    staticcall stor117.balanceWithVesting(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d6741691(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    require ext_code.size(stor117)
    staticcall stor117.balanceWithVesting(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'AutoCrypto: Amount of tokens bought is greater than the balance of the user'
    stor119[address(arg1)] = arg2
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint128 arg1, uint128 arg2, uint128 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Multisig: Access denied'
    if arg1 > -arg2 + test266151307():
        revert with 0, 17
    if uint128(arg2 + arg1) > -arg3 + test266151307():
        revert with 0, 17
    if uint128(arg3 + uint128(arg2 + arg1)) > 6:
        revert with 0, 'AutoCrypto: Fees too high'
    _marketingFee = arg1
    uint128(stor109.field_128) = arg1
    _projectFee = arg2
    uint128(stor110.field_128) = arg2
    _burnFee = arg3
    uint128(stor111.field_128) = arg3
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AutoCrypto Timelock: Access denied'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function releaseToken(bool arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor101)
    staticcall stor101.0x91d14854 with:
            gas gas_remaining wei
           args 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AutoCrypto Owner: Access denied'
    require ext_code.size(arg2)
    call arg2.releaseToken() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor118)
    call stor118.liquidityAdded() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0x1a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e90:
        revert with 0, 17
    if arg1:
        require ext_code.size(sub_f6b22b76Address)
        staticcall sub_f6b22b76Address.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args _pancakeV2PairAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x1a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e90:
            revert with 0, 17
        if balanceOf[msg.sender] < 40000 * ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[msg.sender] += -40000 * ext_call.return_data[0]
        if balanceOf[stor115] > !(40000 * ext_call.return_data[0]):
            revert with 0, 17
        balanceOf[stor115] += 40000 * ext_call.return_data[0]
        require ext_code.size(_pancakeV2PairAddress)
        call _pancakeV2PairAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[msg.sender] < 40000 * eth.balance(this.address):
        revert with 0, 17
    balanceOf[msg.sender] += -40000 * eth.balance(this.address)
    if balanceOf[this.address] > !(40000 * eth.balance(this.address)):
        revert with 0, 17
    balanceOf[this.address] += 40000 * eth.balance(this.address)
    require ext_code.size(this.address)
    call this.address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f6b22b76Address, 40000 * eth.balance(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_f6b22b76Address)
    call sub_f6b22b76Address.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args this.address, 40000 * eth.balance(this.address), 0, 0, msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor116 = block.timestamp
    emit Transfer((40000 * eth.balance(this.address)), msg.sender, this.address);
}

function name() {
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105.length):
            if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105.length):
                if 31 < uint255(stor105.length) * 0.5:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor105.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 0, 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(uint255(stor105.length) * 0.5) + 192 len ceil32(uint255(stor105.length) * 0.5)] = mem[128 len ceil32(uint255(stor105.length) * 0.5)]
        if ceil32(uint255(stor105.length) * 0.5) > uint255(stor105.length) * 0.5:
            mem[(uint255(stor105.length) * 0.5) + ceil32(uint255(stor105.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)], mem[(2 * ceil32(uint255(stor105.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor105.length) * 0.5)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 0, 34
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105.length):
            if 31 < uint255(stor105.length) * 0.5:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while (uint255(stor105.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[stor105.length.field_1 + ceil32(stor105.length.field_1) + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function symbol() {
    if bool(stor106.length):
        if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor106.length):
            if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor106.length):
                if 31 < uint255(stor106.length) * 0.5:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor106.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor106[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)])
                mem[128] = 256 * stor106.length.field_8
        else:
            if bool(stor106.length) == stor106.length.field_1 < 32:
                revert with 0, 34
            if stor106.length.field_1:
                if 31 < stor106.length.field_1:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while stor106.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor106[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)])
                mem[128] = 256 * stor106.length.field_8
        mem[ceil32(uint255(stor106.length) * 0.5) + 192 len ceil32(uint255(stor106.length) * 0.5)] = mem[128 len ceil32(uint255(stor106.length) * 0.5)]
        if ceil32(uint255(stor106.length) * 0.5) > uint255(stor106.length) * 0.5:
            mem[(uint255(stor106.length) * 0.5) + ceil32(uint255(stor106.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)], mem[(2 * ceil32(uint255(stor106.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor106.length) * 0.5)]), 
    if bool(stor106.length) == stor106.length.field_1 < 32:
        revert with 0, 34
    if bool(stor106.length):
        if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor106.length):
            if 31 < uint255(stor106.length) * 0.5:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while (uint255(stor106.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor106[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)])
            mem[128] = 256 * stor106.length.field_8
    else:
        if bool(stor106.length) == stor106.length.field_1 < 32:
            revert with 0, 34
        if stor106.length.field_1:
            if 31 < stor106.length.field_1:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while stor106.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor106[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)])
            mem[128] = 256 * stor106.length.field_8
    mem[ceil32(stor106.length.field_1) + 192 len ceil32(stor106.length.field_1)] = mem[128 len ceil32(stor106.length.field_1)]
    if ceil32(stor106.length.field_1) > stor106.length.field_1:
        mem[stor106.length.field_1 + ceil32(stor106.length.field_1) + 192] = 0
    return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)], mem[(2 * ceil32(stor106.length.field_1)) + 192 len 2 * ceil32(stor106.length.field_1)]), 
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor101 != msg.sender:
        revert with 0, 'AutoCrypto Timelock: Access denied'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AutoCrypto: Router to the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AutoCrypto: Firewall to the zero address'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AutoCrypto: Timelock to the zero address'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    _pancakeV2PairAddress = ext_call.return_data[12 len 20]
    stor118 = arg2
    stor101 = arg3
    sub_f6b22b76Address = arg1
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor105.length) = 20
        stor105.length.field_8 = 'AutoCrypto' / 256
        idx = 0
        while (uint255(stor105.length) * 0.5) + 31 / 32 > idx:
            stor105[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        uint8(stor105.length) = 20
        stor105.length.field_8 = 'AutoCrypto' / 256
        idx = 0
        while stor105.length.field_1 + 31 / 32 > idx:
            stor105[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor106.length):
        if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor106.length) = 4
        stor106.length.field_8 = 'AU' / 256
        idx = 0
        while (uint255(stor106.length) * 0.5) + 31 / 32 > idx:
            stor106[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor106.length) == stor106.length.field_1 < 32:
            revert with 0, 34
        uint8(stor106.length) = 4
        stor106.length.field_8 = 'AU' / 256
        idx = 0
        while stor106.length.field_1 + 31 / 32 > idx:
            stor106[idx].field_0 = 0
            idx = idx + 1
            continue 
    decimals = 18
    stor103[this.address] = 1
    stor103[stor117] = 1
    uint256(stor109.field_0) = 0x200000000000000000000000000000002
    uint256(stor110.field_0) = 0x200000000000000000000000000000002
    uint256(stor111.field_0) = 0x200000000000000000000000000000002
    marketingAddress = 0x63a6486e8acf2c700de94668ffc22976aef447d6
    projectAddress = 0x41b297af3e52f12c25442d8b542463beb80b22bf
    if not decimals:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -100000001:
            revert with 0, 17
        totalSupply += 100 * 10^6
        if balanceOf[address(msg.sender)] > -100000001:
            revert with 0, 17
        balanceOf[address(msg.sender)] += 100 * 10^6
        emit Transfer(100 * 10^6, 0, msg.sender);
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(100 * 10^6 * 10^decimals):
                revert with 0, 17
            totalSupply += 100 * 10^6 * 10^decimals
            if balanceOf[address(msg.sender)] > !(100 * 10^6 * 10^decimals):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 100 * 10^6 * 10^decimals
            emit Transfer((100 * 10^6 * 10^decimals), 0, msg.sender);
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
            if s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(100 * 10^6 * s * t):
                revert with 0, 17
            totalSupply += 100 * 10^6 * s * t
            if balanceOf[address(msg.sender)] > !(100 * 10^6 * s * t):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 100 * 10^6 * s * t
            emit Transfer((100 * 10^6 * s * t), 0, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
