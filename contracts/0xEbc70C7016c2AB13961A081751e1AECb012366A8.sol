contract main {




// =====================  Runtime code  =====================


#
#  - sub_204115be(?)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - swapFee()
#  - burnTokens(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - sub_c258ef60(?)
#  - sub_fd02eb08(?)
#  - _fallback()
#
const name = 'BASECAMP META BILIONARE', 0

const totalSupply = 21000000000 * 10^18

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_bfa31ff9;
uint256 _maxWallet;
uint256 stor13;
uint8 stor14;
uint256 stor14; offset 16
uint256 stor14; offset 8
uint256 _buyLiquidityFee;
uint256 stor16;
uint256 _buyMarketingFee;
uint256 stor18;
uint256 sub_6abebae1;
uint256 stor20;
uint256 _buyDevFee;
uint256 stor22;
uint256 _sellLiquidityFee;
uint256 stor24;
uint256 _sellMarketingFee;
uint256 stor26;
uint256 sub_35a60ed1;
uint256 stor28;
uint256 _sellDevFee;
uint256 stor30;
uint256 stor31;
mapping of uint8 stor32;
address stor33;
address stor34;
address stor35;
address uniswapV2PairAddress;
uint256 sub_f3922ca2;
uint8 stor40;
uint256 stor262B;
uint256 stor6A96;

function sub_35a60ed1(?) {
    return sub_35a60ed1
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function _buyDevFee() {
    return _buyDevFee
}

function sub_6abebae1(?) {
    return sub_6abebae1
}

function _maxWallet() {
    return _maxWallet
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function owner() {
    return owner
}

function sub_bfa31ff9(?) {
    return sub_bfa31ff9
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function _sellDevFee() {
    return _sellDevFee
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f3922ca2(?) {
    return sub_f3922ca2
}

function sub_3843db34(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor40 = 0
}

function sub_7643213a(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor40 = 1
}

function sub_35564a67(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3000aa82(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3922ca2 = arg1
    emit 0xbb53dfee: arg1
}

function setAutoSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor14.field_0) = uint8(arg1)
    emit autoSwapUpdate(arg1);
}

function sub_8d34e3ef(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(bool(arg2))
}

function sub_b9d428da(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function sub_cf878632(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(bool(arg2))
}

function sub_7721f151(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = uint8(bool(arg2))
}

function sub_7c7fffa4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, address(arg1));
    owner = address(arg1)
}

function setFreeTransfer(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor14.field_16) = Mask(240, 0, arg1)
    emit 0x8dd563d1: arg1
}

function sub_d6afa86c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
    emit 0xaf5916e1: bool(arg1)
}

function openTrading(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > !arg1:
        revert with 0, 17
    if block.timestamp + arg1 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    stor13 = block.timestamp + arg1
    stor40 = 1
}

function sub_ac36a4e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: address is the zero address'
    stor34 = address(arg1)
    stor5[address(arg1)] = 1
}

function sub_29646757(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: ceoaddress is the zero address'
    stor35 = address(arg1)
    stor5[address(arg1)] = 1
}

function sub_f061229e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: marketingAddress is the zero address'
    stor33 = address(arg1)
    stor5[address(arg1)] = 1
}

function sub_6d0f99ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'BEP20: send the zero address'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPriceImpact(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'max price impact must be less than or equal to 10000'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant prevent sells, choose value greater than 0'
    sub_bfa31ff9 = arg1
    emit PriceImpactUpdated(arg1);
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x3c5d43b3a54954ade454d026675d69547dd306c32:
        revert with 0, 17
    if 21000000000 * 10^18 * arg1 / 21000000000 * 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    _maxWallet = 21000000000 * 10^18 * arg1 / 1000
    emit MaxWalletAmountUpdated((21000000000 * 10^18 * arg1 / 1000));
}

function sub_e7169832(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == address(arg1):
        revert with 0, 'could not darurat current token'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'not enought token'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2c48dfad(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_81d0cc9d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 32
        stor32[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 57005 == arg1:
        return stor3[address(arg1)]
    if stor2[address(arg1)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor9 < stor6A96:
        if not stor9 / 21000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor9 / 21000000000 * 10^18)
    if 21000000000 * 10^18 < stor262B:
        if not stor9 / 21000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor9 / 21000000000 * 10^18)
    if stor6A96 > stor9:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor9 < stor6A96:
        revert with 0, 17
    if stor262B > 21000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 21000000000 * 10^18 < stor262B:
        revert with 0, 17
    if stor9 - stor6A96 < stor9 / 21000000000 * 10^18:
        if not stor9 / 21000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor9 / 21000000000 * 10^18)
    if not -stor262B + 21000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor9 - stor6A96 / -stor262B + 21000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor9 - stor6A96 / -stor262B + 21000000000 * 10^18)
}

function sub_a7bb35c7(?) {
    require calldata.size - 4 >= 256
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg4 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of sell fees must be less than 50'
    if arg5 > !arg6:
        revert with 0, 17
    if arg5 + arg6 < arg5:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg6 > !arg7:
        revert with 0, 17
    if arg7 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg6 + arg7 > !arg8:
        revert with 0, 17
    if arg8 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg6 + arg7 + arg8 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of buy fees must be less than 50'
    _buyMarketingFee = arg1
    _buyLiquidityFee = arg2
    sub_6abebae1 = arg3
    _buyDevFee = arg4
    _sellMarketingFee = arg5
    _sellLiquidityFee = arg6
    sub_35a60ed1 = arg7
    _sellDevFee = arg8
    stor18 = arg1
    stor16 = arg2
    stor20 = arg3
    stor22 = arg4
    stor26 = arg5
    stor24 = arg6
    stor28 = arg7
    stor30 = arg8
    if arg6 > !arg5:
        revert with 0, 17
    if arg6 + arg5 < arg6:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 + arg5 > !arg8:
        revert with 0, 17
    if arg8 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor31 = arg6 + arg5 + arg8
    emit FeesUpdated(_buyMarketingFee, _buyLiquidityFee, sub_6abebae1, _buyDevFee, _sellMarketingFee, _sellLiquidityFee, sub_35a60ed1, _sellDevFee);
}

function sub_33c9e49d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not _sellMarketingFee:
        if not stor31:
            revert with 0, 'SafeMath: division by zero', 0
        if not _sellLiquidityFee:
            if not stor31:
                revert with 0, 'SafeMath: division by zero', 0
            if not _sellDevFee:
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if _sellDevFee and 100 > -1 / _sellDevFee:
                    revert with 0, 17
                if not _sellDevFee:
                    revert with 0, 18
                if 100 * _sellDevFee / _sellDevFee != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellDevFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellDevFee / stor31 / eth.balance(this.address) != 100 * _sellDevFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 100 * _sellDevFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            if _sellLiquidityFee and 100 > -1 / _sellLiquidityFee:
                revert with 0, 17
            if not _sellLiquidityFee:
                revert with 0, 18
            if 100 * _sellLiquidityFee / _sellLiquidityFee != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor31:
                revert with 0, 'SafeMath: division by zero', 0
            if not _sellDevFee:
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if _sellDevFee and 100 > -1 / _sellDevFee:
                    revert with 0, 17
                if not _sellDevFee:
                    revert with 0, 18
                if 100 * _sellDevFee / _sellDevFee != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellDevFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellDevFee / stor31 / eth.balance(this.address) != 100 * _sellDevFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 100 * _sellDevFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
    else:
        if _sellMarketingFee and 100 > -1 / _sellMarketingFee:
            revert with 0, 17
        if not _sellMarketingFee:
            revert with 0, 18
        if 100 * _sellMarketingFee / _sellMarketingFee != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not stor31:
            revert with 0, 'SafeMath: division by zero', 0
        if not _sellLiquidityFee:
            if not stor31:
                revert with 0, 'SafeMath: division by zero', 0
            if not _sellDevFee:
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / eth.balance(this.address) != 100 * _sellMarketingFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if _sellDevFee and 100 > -1 / _sellDevFee:
                    revert with 0, 17
                if not _sellDevFee:
                    revert with 0, 18
                if 100 * _sellDevFee / _sellDevFee != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / eth.balance(this.address) != 100 * _sellMarketingFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellDevFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellDevFee / stor31 / eth.balance(this.address) != 100 * _sellDevFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 100 * _sellDevFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            if _sellLiquidityFee and 100 > -1 / _sellLiquidityFee:
                revert with 0, 17
            if not _sellLiquidityFee:
                revert with 0, 18
            if 100 * _sellLiquidityFee / _sellLiquidityFee != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor31:
                revert with 0, 'SafeMath: division by zero', 0
            if not _sellDevFee:
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / eth.balance(this.address) != 100 * _sellMarketingFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 0 / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 0 / stor31 / eth.balance(this.address) != 0 / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 0 / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
            else:
                if _sellDevFee and 100 > -1 / _sellDevFee:
                    revert with 0, 17
                if not _sellDevFee:
                    revert with 0, 18
                if 100 * _sellDevFee / _sellDevFee != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor31:
                    revert with 0, 'SafeMath: division by zero', 0
                if not eth.balance(this.address):
                    call stor33 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellMarketingFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / eth.balance(this.address) != 100 * _sellMarketingFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor33 with:
                       value eth.balance(this.address) * 100 * _sellMarketingFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor34 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellLiquidityFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / eth.balance(this.address) != 100 * _sellLiquidityFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor34 with:
                       value eth.balance(this.address) * 100 * _sellLiquidityFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    call stor35 with:
                         gas 2300 wei
                else:
                    if eth.balance(this.address) and 100 * _sellDevFee / stor31 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not eth.balance(this.address):
                        revert with 0, 18
                    if eth.balance(this.address) * 100 * _sellDevFee / stor31 / eth.balance(this.address) != 100 * _sellDevFee / stor31:
                        revert with 0, 'SafeMath: multiplication overflow'
                    call stor35 with:
                       value eth.balance(this.address) * 100 * _sellDevFee / stor31 / 100 wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
