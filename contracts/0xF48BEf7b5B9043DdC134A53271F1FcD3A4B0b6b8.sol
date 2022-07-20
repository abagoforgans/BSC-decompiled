contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deptok(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 9

const symbol = ''


address stor0;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
uint256 sub_bc64b69c;
uint256 sub_ef731b14;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
address pairAddress;
uint256 stor26;
address stor27;
address stor28;
address stor29;
address stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 sub_5b57a7ca;
uint256 stor38;
address stor39;
uint256 stor40;
uint256 stor41;
uint8 sub_72927452;
uint256 sub_29da4f6b;
uint8 stor44;
uint8 stor44; offset 8
uint8 stor44; offset 16
uint8 stor44; offset 24
uint256 stor44; offset 32
uint8 sst;
uint256 sub_58e9a6a4;
uint8 sub_b164a912;
uint256 sub_96cff525;

function totalSupply() {
    return totalSupply
}

function sub_29da4f6b(?) {
    return sub_29da4f6b
}

function sub_58e9a6a4(?) {
    return sub_58e9a6a4
}

function sub_5b57a7ca(?) {
    return sub_5b57a7ca
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_72927452(?) {
    return bool(sub_72927452)
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_96cff525(?) {
    return sub_96cff525
}

function pair() {
    return pairAddress
}

function sub_b164a912(?) {
    return bool(sub_b164a912)
}

function sub_bc64b69c(?) {
    return sub_bc64b69c
}

function sst() {
    return bool(sst)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ef731b14(?) {
    return sub_ef731b14
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == stor0)
}

function setLFG() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor44.field_8) = 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function setrfu(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor30 = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setlprr(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor27 = arg1
}

function setrmnb(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor28 = arg1
}

function sub_75888db6(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor1[address(arg1)] = 1
}

function sub_337d04ee(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_b164a912 = uint8(arg1)
}

function sub_513bf790(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
    stor1[arg2] = 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_6df024d1(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor44.field_0) = uint8(arg1)
}

function sub_46a8249b(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_bc64b69c = totalSupply * arg1 / 10000
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMbTP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = totalSupply * arg1 / 10000
}

function setmswt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_ef731b14 = totalSupply * arg1 / 100000
}

function setMWP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxWalletToken = totalSupply * arg1 / 10000
}

function setTL(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor33 = arg1
    stor35 = arg2
}

function setFE(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setgas(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor41 = arg1
    stor34 = arg2
}

function setTLE(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setWME(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function setisTl(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
}

function setPreSale() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor44.field_16) = 0
    sub_72927452 = 0
    sst = 0
    stor22 = 0
    sub_b164a912 = 0
}

function setsste(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sst = uint8(arg1)
    sub_58e9a6a4 = arg2
}

function setvarsT(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_5b57a7ca = arg1
    stor38 = arg2
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor40 = arg1
}

function setbbfe(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_72927452 = uint8(arg1)
    sub_29da4f6b = arg2
}

function sub_ea6a4b72(?) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor32 = arg1
    stor31 = arg2
    stor36 = arg3
    stor26 = arg4
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setswe(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_b164a912 = uint8(arg1)
    sub_96cff525 = arg2 * totalSupply / 100000
}

function _getMyRewards() {
    require ext_code.size(stor39)
    call stor39.0x8bc04f8d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approval() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call stor30 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function currentReward() {
    require ext_code.size(stor39)
    staticcall stor39.getRAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function gettotalRewardsDistributed() {
    require ext_code.size(stor39)
    staticcall stor39.gettotalDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setsFrz(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor44.field_16) = uint8(arg1)
    uint8(stor44.field_24) = arg2
    Mask(224, 0, stor44.field_32) = 0
    Mask(224, 0, stor44.field_32) = Mask(224, 16, arg1) >> 16
}

function setPresaleAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor1[address(arg1)] = 1
    stor12[address(arg1)] = 1
    stor13[address(arg1)] = 1
    stor15[address(arg1)] = 1
    stor14[address(arg1)] = 1
    stor16[address(arg1)] = 1
}

function sub_6a352277(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.setnewra(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMyRewardsOwed(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor39)
    staticcall stor39.getRewardsOwed(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMyTotalRewards(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor39)
    staticcall stor39.getTotalRewards(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getccr(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.cCRwds(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getppr(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.cPRwds(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setnewrew(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.setnewrw(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a4cf0d0(?) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor28 = arg1
    stor29 = arg2
    stor30 = arg3
    require ext_code.size(stor39)
    call stor39.setnewra(address arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLauNch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor44.field_16) = 1
    sub_72927452 = 1
    sst = 1
    if stor20 + stor18 < stor18:
        revert with 0, 'SafeMath: addition overflow'
    if stor19 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stor21 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor22 = stor21 + stor19 + stor20 + stor18
    sub_b164a912 = 1
}

function setFFEE(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor18 = arg1
    stor19 = arg2
    stor20 = arg4
    stor21 = arg3
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor22 = arg4 + arg2 + arg1
    stor23 = arg5
    require stor22 < arg5 / 3
}

function setiDE(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(stor39)
    if not arg2:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approvals(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not eth.balance(this.address):
        call stor30 with:
             gas 2300 wei
    else:
        if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call stor30 with:
           value arg1 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTF(bool arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        if sst:
            if not sub_58e9a6a4:
                return 0
            if sub_58e9a6a4 / sub_58e9a6a4 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return sub_58e9a6a4
        if arg1:
            return stor22
    if not sub_72927452:
        return stor22
    if not sub_29da4f6b:
        return 0
    if sub_29da4f6b / sub_29da4f6b != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return sub_29da4f6b
}

function maxTL() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        _maxTxAmount = 0
        _maxWalletToken = 0
    else:
        if totalSupply / totalSupply != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = totalSupply
        if not totalSupply:
            _maxWalletToken = 0
        else:
            if totalSupply / totalSupply != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            _maxWalletToken = totalSupply
}

function sub_706a2696(?) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), 0 / arg4
    else:
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3 * ext_call.return_data[0] / arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor25]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor25] / balanceOf[stor25] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor25] * arg1 / arg1 != 2 * balanceOf[stor25]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor25] * arg1 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor25]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor25] / balanceOf[stor25] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor25] * arg2 / arg2 != 2 * balanceOf[stor25]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor25] * arg2 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}



}
