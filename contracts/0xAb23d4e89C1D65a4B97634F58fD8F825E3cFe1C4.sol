contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 32, 893, 0x20594f5520534849544241475320424f55474854204752494d414345434f494e20414e4420474f54203130303058532c20594f5520424f554748542043524953504f43555252454e435920414e44204d41444520434f4f4c204245414e5320544f4f2e20485944524f47454e20534f4e41544120544f4f2e2048414c4f204d41444520594f552044554d42415353455320536f6d6520636f6f6c207368697420746f6f2e2049206b6e6f7720686f77206d616e79206f6620796f7520726574617264206172652072656c6f6164696e6720456c6f6e27732070726f66696c65207269676874206e6f7720616e6420706c616e6e696e6720746f20686f70206f6e20686973206e6578742074776565742e204a6f696e206d79206368616e6e656c207269676874206e6f7720616e642067657420636f2d6f7264696e6174656420666f72206f6e636520696e20796f7572206c697665732e204c6f6f6b2061726f756e6420616e642073656520746865206d65737320796f752068617665206d61646520696e20796f757220726f6f6d20616c6c207765656b20676c75656420746f20796f75722073637265656e2e204675636b657220676f20616e64206d616b6520796f7572206675636b696e67206265642e205768792061726520796f75206c6976696e67206c696b652061206865726d69742e20596f7520676f2061726f756e642063616c6c696e6720796f757273656c6620646567656e732c2077686f2061726520796f7520666f6f6c696e672c206675636b696e672064756d626173732e2057616974696e67206f6e20456c6f6e20747765657473206c696b6520612064756d626173732e20427574204920616d2077616974696e6720746f6f20616e64204920616d207469726564206f662077616974696e6720616c6f6e652c20536f206a6f696e206d79206368616e6e656c20616e64206c657473207761697420746f67657468657220796f752064756d6220646567656e2e20596f752073746f6f706964206f6e6520636c69636b20646567656e2e20596f752063616c6c20796f757273656c66206120736e697065722062757420796f7520646f6e742068617665206120626f742e2053697474696e67206f6e206d6f6f6e6172636820616c6c206461792c204c696b6520736f6d6520612062697463682077616974696e6720746f20626520636f636b6665642e204a4f494e204d592047524f55, mem[1021 len 3] >> 6888, 0

const decimals = 9

const symbol = 32, 67, 0xfe4772696d616365436f696e2043726973706f43757272656e63792048414c4f494e55204849544c4552494e5520545255434b494e55204d4f4e474f4f5345636f696e, mem[195 len 29] >> 280, 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;
address stor18;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= totalSupply / 1000
    _maxWalletSize = arg1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17 = arg1
    stor18 = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call stor17 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if 1 > stor16:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor16 < 1:
            revert with 0, 17
        return (stor16 - 1)
    if not arg1:
        return stor15
    if stor15 > -2:
        revert with 0, 17
    if stor15 + 1 < stor15:
        revert with 0, 'SafeMath: addition overflow'
    return (stor15 + 1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor15 = arg1 + arg2 + arg3
    stor16 = arg4
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor17 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if not balanceOf[stor20]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if balanceOf[stor20] and 2 > -1 / balanceOf[stor20]:
        revert with 0, 17
    if not balanceOf[stor20]:
        revert with 0, 18
    if 2 * balanceOf[stor20] / balanceOf[stor20] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[stor20] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor20] / arg1 != 2 * balanceOf[stor20]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor20] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if not balanceOf[stor20]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if balanceOf[stor20] and 2 > -1 / balanceOf[stor20]:
        revert with 0, 17
    if not balanceOf[stor20]:
        revert with 0, 18
    if 2 * balanceOf[stor20] / balanceOf[stor20] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[stor20] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor20] / arg2 != 2 * balanceOf[stor20]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor20] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}



}
