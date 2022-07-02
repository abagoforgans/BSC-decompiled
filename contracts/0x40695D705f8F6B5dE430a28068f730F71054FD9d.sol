contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Grimace Factory', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = '', 0


address owner;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of struct shares;
array of address stor10;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 sub_6b492b7d;
uint256 sub_204efbb9;
uint256 sub_60e71962;
uint8 rewardsEnabled;
uint8 stor21;
uint256 stor21; offset 8
uint256 stor21;
uint8 stor22;
uint256 stor22; offset 8
uint256 stor22;
uint8 stor23;
uint256 stor23; offset 8
uint256 stor23;
uint8 stor24;
uint256 stor24; offset 8
uint256 stor24;
uint8 stor25;
uint256 stor25; offset 8
uint256 stor25;
uint8 stor26;
uint256 stor26; offset 8
uint256 stor26;
uint8 stor27;
uint256 stor27; offset 8
uint256 stor27;
uint8 stor28;
uint256 stor28; offset 8
uint256 stor28;
address stor29;
address sub_95cfbd79Address;
address sub_8c336a25Address;
address burnWalletAddress;
address routerAddress;
uint8 stor34; offset 160
uint8 swapEnabled; offset 168
uint128 stor34; offset 168
address pairAddress;
uint256 sub_0e5a9231;
uint256 sub_bec90112;
uint8 stor37;

function burnWallet() {
    return burnWalletAddress
}

function sub_0e5a9231(?) {
    return sub_0e5a9231
}

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function rewardsEnabled() {
    return bool(rewardsEnabled)
}

function sub_204efbb9(?) {
    return sub_204efbb9
}

function totalShares() {
    return totalShares
}

function sub_60e71962(?) {
    return sub_60e71962
}

function sub_6b492b7d(?) {
    return sub_6b492b7d
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function sub_8c336a25(?) {
    return sub_8c336a25Address
}

function _maxWalletSize() {
    return _maxWalletSize
}

function sub_95cfbd79(?) {
    return sub_95cfbd79Address
}

function totalDividends() {
    return totalDividends
}

function pair() {
    return pairAddress
}

function sub_bec90112(?) {
    return sub_bec90112
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
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

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_b94dc7dc(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    sub_6b492b7d = arg1
    sub_204efbb9 = arg2
    emit 0x65742e1c: arg1, arg2
}

function sub_a05c4ee3(?) {
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_1f23126a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    rewardsEnabled = uint8(bool(arg1))
    emit 0xada4466e: bool(arg1)
}

function sub_0c9aa629(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    Mask(88, 0, stor34.field_168) = Mask(88, 0, bool(arg1))
    emit 0xb51ae285: bool(arg1)
}

function sub_64e3c448(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    require arg1 >= 1
    require arg2 >= 1
    sub_0e5a9231 = arg1
    sub_bec90112 = arg2
    emit 0x304dfc18: arg1, arg2
}

function sub_fba879b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor7[address(arg1)] = uint8(bool(arg2))
    emit 0x4e5a8f1b: address(arg1), bool(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_13f8850a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 < 10 * 10^18:
        revert with 0, 'Cannot set maxTx below 1%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    _maxWalletSize = 10^9 * arg1
    emit 0x9e2bbd06: arg1
}

function sub_d9321814(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if stor29 == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set same address than actual marketingWallet'
    stor29 = address(arg1)
    emit 0x1b5a7723: address(arg1)
}

function sub_25ec2455(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    require address(arg1) != this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_101226e6(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > 25:
        revert with 0, 'Cannot set BuyTaxes over 25%'
    uint8(stor21.field_0) = uint8(arg1)
    Mask(248, 0, stor21.field_8) = 0
    uint8(stor23.field_0) = uint8(arg2)
    Mask(248, 0, stor23.field_8) = 0
    uint8(stor22.field_0) = uint8(arg3)
    Mask(248, 0, stor22.field_8) = 0
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    uint8(stor24.field_0) = uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1)))
    Mask(248, 0, stor24.field_8) = 0
    emit 0xeffc5516: arg1 << 248, arg2 << 248, uint8(arg3)
}

function sub_a58107ef(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > 25:
        revert with 0, 'Cannot set SellTaxes over 25%'
    uint8(stor25.field_0) = uint8(arg1)
    Mask(248, 0, stor25.field_8) = 0
    uint8(stor27.field_0) = uint8(arg2)
    Mask(248, 0, stor27.field_8) = 0
    uint8(stor26.field_0) = uint8(arg3)
    Mask(248, 0, stor26.field_8) = 0
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    uint8(stor28.field_0) = uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1)))
    Mask(248, 0, stor28.field_8) = 0
    emit 0xdcf601f6: arg1 << 248, arg2 << 248, uint8(arg3)
}

function sub_02199cd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if stor8[address(arg1)]:
        revert with 0, 'Already excluded'
    stor8[address(arg1)] = 1
    if shares[address(arg1)].field_0:
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 >= stor10.length:
            revert with 0, 50
        if stor5[address(arg1)] >= stor10.length:
            revert with 0, 50
        stor10[stor5[address(arg1)]] = stor10[stor10.length]
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 >= stor10.length:
            revert with 0, 50
        stor5[stor10[stor10.length]] = stor5[address(arg1)]
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length] = 0
        stor10.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > -1:
        revert with 0, 17
    totalShares -= shares[address(arg1)].field_0
    shares[address(arg1)].field_0 = 0
    if False and dividendsPerShare > 0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
    emit 0x349c1f70: address(arg1)
}

function sub_fadf9aaf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if not stor8[address(arg1)]:
        revert with 0, 'Address is not excluded'
    stor8[address(arg1)] = 0
    if balanceOf[address(arg1)] <= 0:
        if not balanceOf[address(arg1)]:
            if shares[address(arg1)].field_0:
                if stor10.length < 1:
                    revert with 0, 17
                if stor10.length - 1 >= stor10.length:
                    revert with 0, 50
                if stor5[address(arg1)] >= stor10.length:
                    revert with 0, 50
                stor10[stor5[address(arg1)]] = stor10[stor10.length]
                if stor10.length < 1:
                    revert with 0, 17
                if stor10.length - 1 >= stor10.length:
                    revert with 0, 50
                stor5[stor10[stor10.length]] = stor5[address(arg1)]
                if not stor10.length:
                    revert with 0, 49
                stor10[stor10.length] = 0
                stor10.length--
    else:
        if not shares[address(arg1)].field_0:
            stor5[address(arg1)] = stor10.length
            stor10.length++
            stor10[stor10.length] = address(arg1)
        else:
            if not balanceOf[address(arg1)]:
                if shares[address(arg1)].field_0:
                    if stor10.length < 1:
                        revert with 0, 17
                    if stor10.length - 1 >= stor10.length:
                        revert with 0, 50
                    if stor5[address(arg1)] >= stor10.length:
                        revert with 0, 50
                    stor10[stor5[address(arg1)]] = stor10[stor10.length]
                    if stor10.length < 1:
                        revert with 0, 17
                    if stor10.length - 1 >= stor10.length:
                        revert with 0, 50
                    stor5[stor10[stor10.length]] = stor5[address(arg1)]
                    if not stor10.length:
                        revert with 0, 49
                    stor10[stor10.length] = 0
                    stor10.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !balanceOf[address(arg1)]:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + balanceOf[address(arg1)]
    shares[address(arg1)].field_0 = balanceOf[address(arg1)]
    if balanceOf[address(arg1)] and dividendsPerShare > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = balanceOf[address(arg1)] * dividendsPerShare / dividendsPerShareAccuracyFactor
    emit 0x7d677263: address(arg1)
}

function claimDividend() {
    if stor6[msg.sender] > !sub_6b492b7d:
        revert with 0, 17
    if stor6[msg.sender] + sub_6b492b7d > block.timestamp:
        revert with 0, 'Can't claim yet'
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                    revert with 0, 17
                if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                    if totalDistributed > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    call sub_95cfbd79Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    stor6[address(msg.sender)] = block.timestamp
                    if shares[address(msg.sender)].field_512 > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function sub_e836e590(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor37 = 1
    if uint256(stor25.field_0) > !uint256(stor21.field_0):
        revert with 0, 17
    if uint256(stor28.field_0) > !uint256(stor24.field_0):
        revert with 0, 17
    if balanceOf[this.address] >= sub_bec90112:
        if not arg1:
            if sub_bec90112 and uint256(stor25.field_0) + uint256(stor21.field_0) > -1 / sub_bec90112:
                revert with 0, 17
            if not uint256(stor28.field_0) + uint256(stor24.field_0):
                revert with 0, 18
            if sub_bec90112 < (uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0):
                revert with 0, 17
            if (uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) < (uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2:
                revert with 0, 17
            if sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0)) > !(((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0)) - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)):
                revert with 0, 17
            mem[128] = this.address
            staticcall routerAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)
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
            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0)) - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2) > 0:
                revert with 0, 17
            if not sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2):
                revert with 0, 18
            uint8(stor34.field_160) = 1
            mem[ceil32(return_data.size) + 260] = 0
            mem[ceil32(return_data.size) + 292] = 0
            mem[ceil32(return_data.size) + 324] = owner
            mem[ceil32(return_data.size) + 356] = block.timestamp
            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2) wei
                 gas gas_remaining wei
                args this.address, Mask(255, 1, (uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0)), 0, 0, owner, block.timestamp
            mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            uint8(stor34.field_160) = 0
            mem[(2 * ceil32(return_data.size)) + 224] = 0 / sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)
            emit LiquidityAdded(Mask(255, 1, (uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0)), 0 / sub_bec90112 - ((uint256(stor25.field_0) * sub_bec90112) + (uint256(stor21.field_0) * sub_bec90112) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2));
        else:
            if balanceOf[this.address] and uint256(stor25.field_0) + uint256(stor21.field_0) > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not uint256(stor28.field_0) + uint256(stor24.field_0):
                revert with 0, 18
            if balanceOf[this.address] < (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0):
                revert with 0, 17
            if (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) < (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2:
                revert with 0, 17
            if balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)) > !(((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)) - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)):
                revert with 0, 17
            mem[128] = this.address
            staticcall routerAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)
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
            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)) - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2) > 0:
                revert with 0, 17
            if not balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2):
                revert with 0, 18
            uint8(stor34.field_160) = 1
            mem[ceil32(return_data.size) + 260] = 0
            mem[ceil32(return_data.size) + 292] = 0
            mem[ceil32(return_data.size) + 324] = owner
            mem[ceil32(return_data.size) + 356] = block.timestamp
            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2) wei
                 gas gas_remaining wei
                args this.address, Mask(255, 1, (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)), 0, 0, owner, block.timestamp
            mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            uint8(stor34.field_160) = 0
            mem[(2 * ceil32(return_data.size)) + 224] = 0 / balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)
            emit LiquidityAdded(Mask(255, 1, (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)), 0 / balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2));
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if uint256(stor27.field_0) > !uint256(stor23.field_0):
            revert with 0, 17
        if uint256(stor26.field_0) > !uint256(stor22.field_0):
            revert with 0, 17
        if uint256(stor28.field_0) > !uint256(stor24.field_0):
            revert with 0, 17
        if False and uint256(stor27.field_0) + uint256(stor23.field_0) > 0:
            revert with 0, 17
        if not uint256(stor28.field_0) + uint256(stor24.field_0):
            revert with 0, 18
        if False and uint256(stor26.field_0) + uint256(stor22.field_0) > 0:
            revert with 0, 17
        if not uint256(stor28.field_0) + uint256(stor24.field_0):
            revert with 0, 18
        if 0 / uint256(stor28.field_0) + uint256(stor24.field_0):
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            staticcall sub_95cfbd79Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall routerAddress.WETH() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[(4 * ceil32(return_data.size)) + 192]:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
            if 1 >= mem[(4 * ceil32(return_data.size)) + 192]:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + 256] = sub_95cfbd79Address
            mem[(6 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 292] = 0
            mem[(6 * ceil32(return_data.size)) + 324] = 128
            mem[(6 * ceil32(return_data.size)) + 420] = mem[(4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (4 * ceil32(return_data.size)) + 224
            t = (6 * ceil32(return_data.size)) + 452
            while idx < mem[(4 * ceil32(return_data.size)) + 192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 0 / uint256(stor28.field_0) + uint256(stor24.field_0) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 420 len (32 * mem[(4 * ceil32(return_data.size)) + 192]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall sub_95cfbd79Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
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
            if 0 / uint256(stor28.field_0) + uint256(stor24.field_0):
                call stor29 with:
                   value 0 / uint256(stor28.field_0) + uint256(stor24.field_0) wei
                     gas 30000 wei
                if not ext_call.success:
                    revert with 0, 'receiver rejected ETH transfer'
        stor37 = 0
        emit 0xde89ce57: bool(arg1)
    if balanceOf[this.address] and uint256(stor25.field_0) + uint256(stor21.field_0) > -1 / balanceOf[this.address]:
        revert with 0, 17
    if not uint256(stor28.field_0) + uint256(stor24.field_0):
        revert with 0, 18
    if balanceOf[this.address] < (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0):
        revert with 0, 17
    if (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) < (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2:
        revert with 0, 17
    if balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)) > !(((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)) - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)):
        revert with 0, 17
    mem[128] = this.address
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)
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
    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if False and ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)) - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2) > 0:
        revert with 0, 17
    if not balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2):
        revert with 0, 18
    uint8(stor34.field_160) = 1
    mem[ceil32(return_data.size) + 260] = 0
    mem[ceil32(return_data.size) + 292] = 0
    mem[ceil32(return_data.size) + 324] = owner
    mem[ceil32(return_data.size) + 356] = block.timestamp
    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value 0 / balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2) wei
         gas gas_remaining wei
        args this.address, Mask(255, 1, (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)), 0, 0, owner, block.timestamp
    mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    uint8(stor34.field_160) = 0
    mem[(2 * ceil32(return_data.size)) + 224] = 0 / balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2)
    emit LiquidityAdded(Mask(255, 1, (uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0)), 0 / balanceOf[this.address] - ((uint256(stor25.field_0) * balanceOf[this.address]) + (uint256(stor21.field_0) * balanceOf[this.address]) / uint256(stor28.field_0) + uint256(stor24.field_0) / 2));
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if uint256(stor27.field_0) > !uint256(stor23.field_0):
        revert with 0, 17
    if uint256(stor26.field_0) > !uint256(stor22.field_0):
        revert with 0, 17
    if uint256(stor28.field_0) > !uint256(stor24.field_0):
        revert with 0, 17
    if False and uint256(stor27.field_0) + uint256(stor23.field_0) > 0:
        revert with 0, 17
    if not uint256(stor28.field_0) + uint256(stor24.field_0):
        revert with 0, 18
    if False and uint256(stor26.field_0) + uint256(stor22.field_0) > 0:
        revert with 0, 17
    if not uint256(stor28.field_0) + uint256(stor24.field_0):
        revert with 0, 18
    if not 0 / uint256(stor28.field_0) + uint256(stor24.field_0):
        stor37 = 0
        emit 0xde89ce57: bool(arg1)
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    staticcall sub_95cfbd79Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= mem[(4 * ceil32(return_data.size)) + 192]:
        revert with 0, 50
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
    if 1 >= mem[(4 * ceil32(return_data.size)) + 192]:
        revert with 0, 50
    mem[(4 * ceil32(return_data.size)) + 256] = sub_95cfbd79Address
    mem[(6 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 292] = 0
    mem[(6 * ceil32(return_data.size)) + 324] = 128
    mem[(6 * ceil32(return_data.size)) + 420] = mem[(4 * ceil32(return_data.size)) + 192]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = (6 * ceil32(return_data.size)) + 452
    while idx < mem[(4 * ceil32(return_data.size)) + 192]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 356] = this.address
    mem[(6 * ceil32(return_data.size)) + 388] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 0 / uint256(stor28.field_0) + uint256(stor24.field_0) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 420 len (32 * mem[(4 * ceil32(return_data.size)) + 192]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    staticcall sub_95cfbd79Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
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
    if not 0 / uint256(stor28.field_0) + uint256(stor24.field_0):
        stor37 = 0
        emit 0xde89ce57: bool(arg1)
    call stor29 with:
       value 0 / uint256(stor28.field_0) + uint256(stor24.field_0) wei
         gas 30000 wei
    if not return_data.size:
        if ext_call.success:
            stor37 = 0
            emit 0xde89ce57: bool(arg1)
        mem[(8 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 292] = 32
        mem[(8 * ceil32(return_data.size)) + 324] = 30
        mem[(8 * ceil32(return_data.size)) + 356] = 'receiver rejected ETH transfer'
        revert with memory
          from (8 * ceil32(return_data.size)) + 288
           len (13 * ceil32(return_data.size)) + 100
    mem[(8 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        stor37 = 0
        emit 0xde89ce57: bool(arg1)
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 32
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 30
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 'receiver rejected ETH transfer'
    revert with memory
      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 289
       len (13 * ceil32(return_data.size)) + 100
}



}
