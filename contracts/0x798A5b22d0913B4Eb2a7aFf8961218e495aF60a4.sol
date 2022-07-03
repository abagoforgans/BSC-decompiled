contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
address pairAddress;
address sub_32887550Address;
uint256 buyFee;
uint256 sub_000619c5;
uint256 setFee;
mapping of uint256 stor11;
mapping of uint8 stor12;
uint256 rewardsFee;
uint256 sub_9dc29666;
uint8 tradeEnabled;
uint256 _maxTxAmount;

function sub_000619c5(?) {
    return sub_000619c5
}

function totalSupply() {
    return totalSupply
}

function rewardsFee() {
    return rewardsFee
}

function setFee() {
    return setFee
}

function decimals() {
    return decimals
}

function sub_32887550(?) {
    return sub_32887550Address
}

function buyFee() {
    return buyFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function sub_9dc29666(?) {
    return sub_9dc29666
}

function pair() {
    return pairAddress
}

function tradeEnabled() {
    return bool(tradeEnabled)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_16453b2b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_3d631278(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_6cc57af6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_93020b6f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_93ec57f1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_9a75c6bf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_df36db55(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function authorize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function lockTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function claimDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function setTargetLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_6dd027cd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyFee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d8aa387b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function setFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_000619c5 = arg1
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    setFee = arg1
}

function enableTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradeEnabled = uint8(arg1)
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function rescue() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg3:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if 0 > balanceOf[address(arg1)]:
            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if balanceOf[address(arg1)] < 0:
            revert with 0, 17
        if balanceOf[arg2] > -1:
            revert with 0, 17
        if balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[arg2]
        emit Transfer(0, arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    else:
        if pairAddress == arg1:
            if not stor11[address(arg2)]:
                stor11[address(arg2)] = block.number
        else:
            if sub_32887550Address == arg1:
                if not stor11[address(arg2)]:
                    stor11[address(arg2)] = block.number
        if stor12[address(arg2)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
        else:
            if stor12[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if pairAddress == arg2:
                    if 326159487 == setFee:
                        if not tradeEnabled:
                            revert with 0, 'Trade is disabled'
                        if setFee < 326159389:
                            revert with 0, 17
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < 0:
                                revert with 0, 17
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address]
                            emit Transfer(0, arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and setFee - 326159389 > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if (-326159389 * arg3) + (setFee * arg3) / arg3 != setFee - 326159389:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if (-326159389 * arg3) + (setFee * arg3) / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < (-326159389 * arg3) + (setFee * arg3) / 100:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if (-326159389 * arg3) + (setFee * arg3) / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < (-326159389 * arg3) + (setFee * arg3) / 100:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= (-326159389 * arg3) + (setFee * arg3) / 100
                            if balanceOf[this.address] > !((-326159389 * arg3) + (setFee * arg3) / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100)
                            emit Transfer(((-326159389 * arg3) + (setFee * arg3) / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ((-326159389 * arg3) + (setFee * arg3) / 100)
                            if balanceOf[arg2] > !(arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)):
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)
                            emit Transfer((arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                    else:
                        if stor11[address(arg1)] > block.number:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if block.number < stor11[address(arg1)]:
                            revert with 0, 17
                        if block.number - stor11[address(arg1)] < 2:
                            if not arg3:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and sub_000619c5 > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg3 * sub_000619c5 / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < arg3 * sub_000619c5 / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                emit Transfer((arg3 * sub_000619c5 / 100), arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                if balanceOf[arg2] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100)
                                emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
                        else:
                            if stor11[address(arg1)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if block.number < stor11[address(arg1)]:
                                revert with 0, 17
                            if 100 == block.number - stor11[address(arg1)]:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 0:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and sub_000619c5 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg3 * sub_000619c5 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < arg3 * sub_000619c5 / 100:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                    if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                    emit Transfer((arg3 * sub_000619c5 / 100), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), arg1, arg2);
                            else:
                                if not tradeEnabled:
                                    revert with 0, 'Trade is disabled'
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 0:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and 98 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if 98 * arg3 / arg3 != 98:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 98 * arg3 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 98 * arg3 / 100:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 98 * arg3 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 98 * arg3 / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= 98 * arg3 / 100
                                    if balanceOf[this.address] > !(98 * arg3 / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (98 * arg3 / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (98 * arg3 / 100)
                                    emit Transfer((98 * arg3 / 100), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 - (98 * arg3 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 - (98 * arg3 / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (98 * arg3 / 100)
                                    if balanceOf[arg2] > !(arg3 - (98 * arg3 / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 - (98 * arg3 / 100) < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (98 * arg3 / 100)
                                    emit Transfer((arg3 - (98 * arg3 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[616 len 24] >> 64, 0
                else:
                    if sub_32887550Address != arg2:
                        if pairAddress == arg1:
                            if not arg3:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and buyFee > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * buyFee / arg3 != buyFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if arg3 * buyFee / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < arg3 * buyFee / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 * buyFee / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3 * buyFee / 100:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3 * buyFee / 100
                                if balanceOf[this.address] > !(arg3 * buyFee / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (arg3 * buyFee / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * buyFee / 100)
                                emit Transfer((arg3 * buyFee / 100), arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 - (arg3 * buyFee / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3 - (arg3 * buyFee / 100):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * buyFee / 100)
                                if balanceOf[arg2] > !(arg3 - (arg3 * buyFee / 100)):
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 - (arg3 * buyFee / 100) < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * buyFee / 100)
                                emit Transfer((arg3 - (arg3 * buyFee / 100)), arg1, arg2);
                        else:
                            if sub_32887550Address != arg1:
                                if arg3:
                                    if arg3 and 0 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if 0 / arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 0:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and buyFee > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if arg3 * buyFee / arg3 != buyFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if arg3 * buyFee / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < arg3 * buyFee / 100:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 * buyFee / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 * buyFee / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3 * buyFee / 100
                                    if balanceOf[this.address] > !(arg3 * buyFee / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (arg3 * buyFee / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * buyFee / 100)
                                    emit Transfer((arg3 * buyFee / 100), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 - (arg3 * buyFee / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * buyFee / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * buyFee / 100)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * buyFee / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 - (arg3 * buyFee / 100) < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * buyFee / 100)
                                    emit Transfer((arg3 - (arg3 * buyFee / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                    else:
                        if 326159487 == setFee:
                            if not tradeEnabled:
                                revert with 0, 'Trade is disabled'
                            if setFee < 326159389:
                                revert with 0, 17
                            if not arg3:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and setFee - 326159389 > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if (-326159389 * arg3) + (setFee * arg3) / arg3 != setFee - 326159389:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if (-326159389 * arg3) + (setFee * arg3) / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < (-326159389 * arg3) + (setFee * arg3) / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if (-326159389 * arg3) + (setFee * arg3) / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < (-326159389 * arg3) + (setFee * arg3) / 100:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= (-326159389 * arg3) + (setFee * arg3) / 100
                                if balanceOf[this.address] > !((-326159389 * arg3) + (setFee * arg3) / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100)
                                emit Transfer(((-326159389 * arg3) + (setFee * arg3) / 100), arg1, this.address);
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ((-326159389 * arg3) + (setFee * arg3) / 100)
                                if balanceOf[arg2] > !(arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)):
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)
                                emit Transfer((arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                        else:
                            if stor11[address(arg1)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if block.number < stor11[address(arg1)]:
                                revert with 0, 17
                            if block.number - stor11[address(arg1)] < 2:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 0:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and sub_000619c5 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg3 * sub_000619c5 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < arg3 * sub_000619c5 / 100:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                    if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                    emit Transfer((arg3 * sub_000619c5 / 100), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                    if balanceOf[arg2] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
                            else:
                                if stor11[address(arg1)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if block.number < stor11[address(arg1)]:
                                    revert with 0, 17
                                if 100 == block.number - stor11[address(arg1)]:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, arg1, this.address);
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and sub_000619c5 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg3 * sub_000619c5 / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < arg3 * sub_000619c5 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                        if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                        emit Transfer((arg3 * sub_000619c5 / 100), arg1, this.address);
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * sub_000619c5 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), arg1, arg2);
                                else:
                                    if not tradeEnabled:
                                        revert with 0, 'Trade is disabled'
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, arg1, this.address);
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and 98 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if 98 * arg3 / arg3 != 98:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if 98 * arg3 / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 98 * arg3 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 98 * arg3 / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 98 * arg3 / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= 98 * arg3 / 100
                                        if balanceOf[this.address] > !(98 * arg3 / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (98 * arg3 / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (98 * arg3 / 100)
                                        emit Transfer((98 * arg3 / 100), arg1, this.address);
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 - (98 * arg3 / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[518 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 - (98 * arg3 / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (98 * arg3 / 100)
                                        if balanceOf[arg2] > !(arg3 - (98 * arg3 / 100)):
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 - (98 * arg3 / 100) < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (98 * arg3 / 100)
                                        emit Transfer((arg3 - (98 * arg3 / 100)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[616 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x9dc29666(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x93ec57f1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x7d1db4a5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _maxTxAmount
                    if unknown_0x82bf293c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        setFee = arg1
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        require unknown_0x93020b6f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
            if unknown_0x93ec57f1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x99734872(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x9a75c6bf(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x9a8baedf(?????):
                            require unknown_0x9abd3572(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            require not msg.value
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                    mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4.length):
                    if 31 < uint255(stor4.length) * 0.5:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
            if ceil32(stor4.length.field_1) > stor4.length.field_1:
                mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
        if unknown_0xd621e813(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd621e813(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(tradeEnabled)
            if unknown_0xd8aa387b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _maxTxAmount = arg1
            else:
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                if unknown_0xdf36db55(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                else:
                    if unknown_0xf275f64b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        tradeEnabled = uint8(bool(arg1))
                    else:
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
        if unknown_0x9dc29666(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_9dc29666
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if arg2 > allowance[msg.sender][address(arg1)]:
                revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
            if allowance[msg.sender][address(arg1)] < arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
            emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
        else:
            if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return pairAddress
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                require unknown_0xc0246668(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor12[address(arg1)] = uint8(bool(arg2))
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not arg2:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < 0:
                    revert with 0, 17
                if balanceOf[address(arg1)] > -1:
                    revert with 0, 17
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)]
                emit Transfer(0, msg.sender, address(arg1));
            else:
                if pairAddress == msg.sender:
                    if not stor11[address(arg1)]:
                        stor11[address(arg1)] = block.number
                else:
                    if sub_32887550Address == msg.sender:
                        if not stor11[address(arg1)]:
                            stor11[address(arg1)] = block.number
                if stor12[address(arg1)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if stor12[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if pairAddress == address(arg1):
                            if 326159487 == setFee:
                                if not tradeEnabled:
                                    revert with 0, 'Trade is disabled'
                                if setFee < 326159389:
                                    revert with 0, 17
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if arg2 and setFee - 326159389 > -1 / arg2:
                                        revert with 0, 17
                                    if not arg2:
                                        revert with 0, 18
                                    if (-326159389 * arg2) + (setFee * arg2) / arg2 != setFee - 326159389:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (-326159389 * arg2) + (setFee * arg2) / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < (-326159389 * arg2) + (setFee * arg2) / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if (-326159389 * arg2) + (setFee * arg2) / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < (-326159389 * arg2) + (setFee * arg2) / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= (-326159389 * arg2) + (setFee * arg2) / 100
                                    if balanceOf[this.address] > !((-326159389 * arg2) + (setFee * arg2) / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + ((-326159389 * arg2) + (setFee * arg2) / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ((-326159389 * arg2) + (setFee * arg2) / 100)
                                    emit Transfer(((-326159389 * arg2) + (setFee * arg2) / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((-326159389 * arg2) + (setFee * arg2) / 100)
                                    if balanceOf[address(arg1)] > !(arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] + arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100)
                                    emit Transfer((arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100)), msg.sender, address(arg1));
                            else:
                                if stor11[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if block.number < stor11[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number - stor11[address(msg.sender)] < 2:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if arg2 and sub_000619c5 > -1 / arg2:
                                            revert with 0, 17
                                        if not arg2:
                                            revert with 0, 18
                                        if arg2 * sub_000619c5 / arg2 != sub_000619c5:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * sub_000619c5 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * sub_000619c5 / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * sub_000619c5 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * sub_000619c5 / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2 * sub_000619c5 / 100
                                        if balanceOf[this.address] > !(arg2 * sub_000619c5 / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (arg2 * sub_000619c5 / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * sub_000619c5 / 100)
                                        emit Transfer((arg2 * sub_000619c5 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * sub_000619c5 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_000619c5 / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_000619c5 / 100)
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_000619c5 / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100)
                                        emit Transfer((arg2 - (arg2 * sub_000619c5 / 100)), msg.sender, address(arg1));
                                else:
                                    if stor11[address(msg.sender)] > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if block.number < stor11[address(msg.sender)]:
                                        revert with 0, 17
                                    if 100 == block.number - stor11[address(msg.sender)]:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and sub_000619c5 > -1 / arg2:
                                                revert with 0, 17
                                            if not arg2:
                                                revert with 0, 18
                                            if arg2 * sub_000619c5 / arg2 != sub_000619c5:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg2 * sub_000619c5 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * sub_000619c5 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2 * sub_000619c5 / 100
                                            if balanceOf[this.address] > !(arg2 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg2 * sub_000619c5 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * sub_000619c5 / 100)
                                            emit Transfer((arg2 * sub_000619c5 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * sub_000619c5 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_000619c5 / 100)
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_000619c5 / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100)
                                            emit Transfer((arg2 - (arg2 * sub_000619c5 / 100)), msg.sender, address(arg1));
                                    else:
                                        if not tradeEnabled:
                                            revert with 0, 'Trade is disabled'
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and 98 > -1 / arg2:
                                                revert with 0, 17
                                            if not arg2:
                                                revert with 0, 18
                                            if 98 * arg2 / arg2 != 98:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 98 * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 98 * arg2 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 98 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 98 * arg2 / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= 98 * arg2 / 100
                                            if balanceOf[this.address] > !(98 * arg2 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (98 * arg2 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (98 * arg2 / 100)
                                            emit Transfer((98 * arg2 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (98 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (98 * arg2 / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (98 * arg2 / 100)
                                            if balanceOf[address(arg1)] > !(arg2 - (98 * arg2 / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 - (98 * arg2 / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (98 * arg2 / 100)
                                            emit Transfer((arg2 - (98 * arg2 / 100)), msg.sender, address(arg1));
                        else:
                            if sub_32887550Address != address(arg1):
                                if pairAddress == msg.sender:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if arg2 and buyFee > -1 / arg2:
                                            revert with 0, 17
                                        if not arg2:
                                            revert with 0, 18
                                        if arg2 * buyFee / arg2 != buyFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg2 * buyFee / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * buyFee / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * buyFee / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * buyFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2 * buyFee / 100
                                        if balanceOf[this.address] > !(arg2 * buyFee / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (arg2 * buyFee / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * buyFee / 100)
                                        emit Transfer((arg2 * buyFee / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * buyFee / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyFee / 100)
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                                        emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, address(arg1));
                                else:
                                    if sub_32887550Address != msg.sender:
                                        if arg2:
                                            if arg2 and 0 > -1 / arg2:
                                                revert with 0, 17
                                            if not arg2:
                                                revert with 0, 18
                                            if 0 / arg2:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and buyFee > -1 / arg2:
                                                revert with 0, 17
                                            if not arg2:
                                                revert with 0, 18
                                            if arg2 * buyFee / arg2 != buyFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg2 * buyFee / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * buyFee / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * buyFee / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 * buyFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2 * buyFee / 100
                                            if balanceOf[this.address] > !(arg2 * buyFee / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg2 * buyFee / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * buyFee / 100)
                                            emit Transfer((arg2 * buyFee / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * buyFee / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyFee / 100)
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                                            emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, address(arg1));
                            else:
                                if 326159487 == setFee:
                                    if not tradeEnabled:
                                        revert with 0, 'Trade is disabled'
                                    if setFee < 326159389:
                                        revert with 0, 17
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, address(arg1));
                                    else:
                                        if arg2 and setFee - 326159389 > -1 / arg2:
                                            revert with 0, 17
                                        if not arg2:
                                            revert with 0, 18
                                        if (-326159389 * arg2) + (setFee * arg2) / arg2 != setFee - 326159389:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (-326159389 * arg2) + (setFee * arg2) / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < (-326159389 * arg2) + (setFee * arg2) / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if (-326159389 * arg2) + (setFee * arg2) / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < (-326159389 * arg2) + (setFee * arg2) / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= (-326159389 * arg2) + (setFee * arg2) / 100
                                        if balanceOf[this.address] > !((-326159389 * arg2) + (setFee * arg2) / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + ((-326159389 * arg2) + (setFee * arg2) / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ((-326159389 * arg2) + (setFee * arg2) / 100)
                                        emit Transfer(((-326159389 * arg2) + (setFee * arg2) / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((-326159389 * arg2) + (setFee * arg2) / 100)
                                        if balanceOf[address(arg1)] > !(arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] + arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100)
                                        emit Transfer((arg2 - ((-326159389 * arg2) + (setFee * arg2) / 100)), msg.sender, address(arg1));
                                else:
                                    if stor11[address(msg.sender)] > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if block.number < stor11[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number - stor11[address(msg.sender)] < 2:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if arg2 and sub_000619c5 > -1 / arg2:
                                                revert with 0, 17
                                            if not arg2:
                                                revert with 0, 18
                                            if arg2 * sub_000619c5 / arg2 != sub_000619c5:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg2 * sub_000619c5 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * sub_000619c5 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2 * sub_000619c5 / 100
                                            if balanceOf[this.address] > !(arg2 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg2 * sub_000619c5 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * sub_000619c5 / 100)
                                            emit Transfer((arg2 * sub_000619c5 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * sub_000619c5 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_000619c5 / 100)
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_000619c5 / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100)
                                            emit Transfer((arg2 - (arg2 * sub_000619c5 / 100)), msg.sender, address(arg1));
                                    else:
                                        if stor11[address(msg.sender)] > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if block.number < stor11[address(msg.sender)]:
                                            revert with 0, 17
                                        if 100 == block.number - stor11[address(msg.sender)]:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and sub_000619c5 > -1 / arg2:
                                                    revert with 0, 17
                                                if not arg2:
                                                    revert with 0, 18
                                                if arg2 * sub_000619c5 / arg2 != sub_000619c5:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if arg2 * sub_000619c5 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < arg2 * sub_000619c5 / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 * sub_000619c5 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2 * sub_000619c5 / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2 * sub_000619c5 / 100
                                                if balanceOf[this.address] > !(arg2 * sub_000619c5 / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (arg2 * sub_000619c5 / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * sub_000619c5 / 100)
                                                emit Transfer((arg2 * sub_000619c5 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 - (arg2 * sub_000619c5 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_000619c5 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_000619c5 / 100)
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_000619c5 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_000619c5 / 100)
                                                emit Transfer((arg2 - (arg2 * sub_000619c5 / 100)), msg.sender, address(arg1));
                                        else:
                                            if not tradeEnabled:
                                                revert with 0, 'Trade is disabled'
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if arg2 and 98 > -1 / arg2:
                                                    revert with 0, 17
                                                if not arg2:
                                                    revert with 0, 18
                                                if 98 * arg2 / arg2 != 98:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 98 * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 98 * arg2 / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 98 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 98 * arg2 / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= 98 * arg2 / 100
                                                if balanceOf[this.address] > !(98 * arg2 / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (98 * arg2 / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (98 * arg2 / 100)
                                                emit Transfer((98 * arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 - (98 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2 - (98 * arg2 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (98 * arg2 / 100)
                                                if balanceOf[address(arg1)] > !(arg2 - (98 * arg2 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + arg2 - (98 * arg2 / 100) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (98 * arg2 / 100)
                                                emit Transfer((arg2 - (98 * arg2 / 100)), msg.sender, address(arg1));
    else:
        if unknown_0x32887550(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x45596e2e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x45596e2e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                if unknown_0x47062402(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return buyFee
                if unknown_0x6cc57af6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                if unknown_0x6dd027cd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    buyFee = arg1
                if unknown_0x6e27d889(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if unknown_0x32887550(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_32887550Address
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                if unknown_0x3bd5d173(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                else:
                    if unknown_0x3d18678e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_000619c5 = arg1
                    else:
                        require unknown_0x3d631278(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 0, 17
            if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
        else:
            if unknown_0x1fbe1979(?????) > uint32(call.func_hash) >> 224:
                if 399813 == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_000619c5
                if uint32(call.func_hash) >> 224 != name():
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                        if uint32(call.func_hash) >> 224 != unknown_0x16453b2b(?????):
                            require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return totalSupply
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                require not msg.value
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                    if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                        mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
            if unknown_0x1fbe1979(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rewardsFee
                if unknown_0x2ded3227(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return setFee
                require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return decimals
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not arg3:
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(arg1)] < 0:
                    revert with 0, 17
                if balanceOf[address(arg2)] > -1:
                    revert with 0, 17
                if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)]
                emit Transfer(0, address(arg1), address(arg2));
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
            else:
                if pairAddress == address(arg1):
                    if not stor11[address(arg2)]:
                        stor11[address(arg2)] = block.number
                else:
                    if sub_32887550Address == address(arg1):
                        if not stor11[address(arg2)]:
                            stor11[address(arg2)] = block.number
                if stor12[address(arg2)]:
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                else:
                    if stor12[address(arg1)]:
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg2):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                    else:
                        if pairAddress == address(arg2):
                            if 326159487 == setFee:
                                if not tradeEnabled:
                                    revert with 0, 'Trade is disabled'
                                if setFee < 326159389:
                                    revert with 0, 17
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 0:
                                        revert with 0, 17
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, address(arg1), this.address);
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(arg2):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if arg3 and setFee - 326159389 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if (-326159389 * arg3) + (setFee * arg3) / arg3 != setFee - 326159389:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (-326159389 * arg3) + (setFee * arg3) / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < (-326159389 * arg3) + (setFee * arg3) / 100:
                                        revert with 0, 17
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if (-326159389 * arg3) + (setFee * arg3) / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < (-326159389 * arg3) + (setFee * arg3) / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= (-326159389 * arg3) + (setFee * arg3) / 100
                                    if balanceOf[this.address] > !((-326159389 * arg3) + (setFee * arg3) / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100)
                                    emit Transfer(((-326159389 * arg3) + (setFee * arg3) / 100), address(arg1), this.address);
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(arg2):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ((-326159389 * arg3) + (setFee * arg3) / 100)
                                    if balanceOf[address(arg2)] > !(arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)
                                    emit Transfer((arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                            else:
                                if stor11[address(arg1)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if block.number < stor11[address(arg1)]:
                                    revert with 0, 17
                                if block.number - stor11[address(arg1)] < 2:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if arg3 and sub_000619c5 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg3 * sub_000619c5 / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < arg3 * sub_000619c5 / 100:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                        if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                        emit Transfer((arg3 * sub_000619c5 / 100), address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), address(arg1), address(arg2));
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                else:
                                    if stor11[address(arg1)] > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if block.number < stor11[address(arg1)]:
                                        revert with 0, 17
                                    if 100 == block.number - stor11[address(arg1)]:
                                        if not arg3:
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 0:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and sub_000619c5 > -1 / arg3:
                                                revert with 0, 17
                                            if not arg3:
                                                revert with 0, 18
                                            if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg3 * sub_000619c5 / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < arg3 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                            if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                            emit Transfer((arg3 * sub_000619c5 / 100), address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100)
                                            emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), address(arg1), address(arg2));
                                    else:
                                        if not tradeEnabled:
                                            revert with 0, 'Trade is disabled'
                                        if not arg3:
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 0:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and 98 > -1 / arg3:
                                                revert with 0, 17
                                            if not arg3:
                                                revert with 0, 18
                                            if 98 * arg3 / arg3 != 98:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if 98 * arg3 / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 98 * arg3 / 100:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 98 * arg3 / 100 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 98 * arg3 / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= 98 * arg3 / 100
                                            if balanceOf[this.address] > !(98 * arg3 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (98 * arg3 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (98 * arg3 / 100)
                                            emit Transfer((98 * arg3 / 100), address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 - (98 * arg3 / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 - (98 * arg3 / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (98 * arg3 / 100)
                                            if balanceOf[address(arg2)] > !(arg3 - (98 * arg3 / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 - (98 * arg3 / 100) < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (98 * arg3 / 100)
                                            emit Transfer((arg3 - (98 * arg3 / 100)), address(arg1), address(arg2));
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
                        else:
                            if sub_32887550Address != address(arg2):
                                if pairAddress == address(arg1):
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if arg3 and buyFee > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if arg3 * buyFee / arg3 != buyFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if arg3 * buyFee / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < arg3 * buyFee / 100:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 * buyFee / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 * buyFee / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3 * buyFee / 100
                                        if balanceOf[this.address] > !(arg3 * buyFee / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (arg3 * buyFee / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * buyFee / 100)
                                        emit Transfer((arg3 * buyFee / 100), address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 - (arg3 * buyFee / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * buyFee / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * buyFee / 100)
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                                        emit Transfer((arg3 - (arg3 * buyFee / 100)), address(arg1), address(arg2));
                                else:
                                    if sub_32887550Address != address(arg1):
                                        if arg3:
                                            if arg3 and 0 > -1 / arg3:
                                                revert with 0, 17
                                            if not arg3:
                                                revert with 0, 18
                                            if 0 / arg3:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if not arg3:
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 0:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and buyFee > -1 / arg3:
                                                revert with 0, 17
                                            if not arg3:
                                                revert with 0, 18
                                            if arg3 * buyFee / arg3 != buyFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg3 * buyFee / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < arg3 * buyFee / 100:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 * buyFee / 100 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 * buyFee / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3 * buyFee / 100
                                            if balanceOf[this.address] > !(arg3 * buyFee / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg3 * buyFee / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * buyFee / 100)
                                            emit Transfer((arg3 * buyFee / 100), address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 - (arg3 * buyFee / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * buyFee / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * buyFee / 100)
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100) < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                                            emit Transfer((arg3 - (arg3 * buyFee / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                            else:
                                if 326159487 == setFee:
                                    if not tradeEnabled:
                                        revert with 0, 'Trade is disabled'
                                    if setFee < 326159389:
                                        revert with 0, 17
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if arg3 and setFee - 326159389 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if (-326159389 * arg3) + (setFee * arg3) / arg3 != setFee - 326159389:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (-326159389 * arg3) + (setFee * arg3) / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < (-326159389 * arg3) + (setFee * arg3) / 100:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if (-326159389 * arg3) + (setFee * arg3) / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < (-326159389 * arg3) + (setFee * arg3) / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= (-326159389 * arg3) + (setFee * arg3) / 100
                                        if balanceOf[this.address] > !((-326159389 * arg3) + (setFee * arg3) / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + ((-326159389 * arg3) + (setFee * arg3) / 100)
                                        emit Transfer(((-326159389 * arg3) + (setFee * arg3) / 100), address(arg1), this.address);
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ((-326159389 * arg3) + (setFee * arg3) / 100)
                                        if balanceOf[address(arg2)] > !(arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100) < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)
                                        emit Transfer((arg3 - ((-326159389 * arg3) + (setFee * arg3) / 100)), address(arg1), address(arg2));
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                                else:
                                    if stor11[address(arg1)] > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if block.number < stor11[address(arg1)]:
                                        revert with 0, 17
                                    if block.number - stor11[address(arg1)] < 2:
                                        if not arg3:
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 0:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if arg3 and sub_000619c5 > -1 / arg3:
                                                revert with 0, 17
                                            if not arg3:
                                                revert with 0, 18
                                            if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if arg3 * sub_000619c5 / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < arg3 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                            if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                            emit Transfer((arg3 * sub_000619c5 / 100), address(arg1), this.address);
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[486 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100)
                                            emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), address(arg1), address(arg2));
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                                    else:
                                        if stor11[address(arg1)] > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if block.number < stor11[address(arg1)]:
                                            revert with 0, 17
                                        if 100 == block.number - stor11[address(arg1)]:
                                            if not arg3:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg3 < 0:
                                                    revert with 0, 17
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, address(arg1), this.address);
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg2):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and sub_000619c5 > -1 / arg3:
                                                    revert with 0, 17
                                                if not arg3:
                                                    revert with 0, 18
                                                if arg3 * sub_000619c5 / arg3 != sub_000619c5:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if arg3 * sub_000619c5 / 100 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg3 < arg3 * sub_000619c5 / 100:
                                                    revert with 0, 17
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 * sub_000619c5 / 100 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3 * sub_000619c5 / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3 * sub_000619c5 / 100
                                                if balanceOf[this.address] > !(arg3 * sub_000619c5 / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (arg3 * sub_000619c5 / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg3 * sub_000619c5 / 100)
                                                emit Transfer((arg3 * sub_000619c5 / 100), address(arg1), this.address);
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg2):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 - (arg3 * sub_000619c5 / 100) > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * sub_000619c5 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_000619c5 / 100)
                                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_000619c5 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100) < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_000619c5 / 100)
                                                emit Transfer((arg3 - (arg3 * sub_000619c5 / 100)), address(arg1), address(arg2));
                                        else:
                                            if not tradeEnabled:
                                                revert with 0, 'Trade is disabled'
                                            if not arg3:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg3 < 0:
                                                    revert with 0, 17
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, address(arg1), this.address);
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg2):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if arg3 and 98 > -1 / arg3:
                                                    revert with 0, 17
                                                if not arg3:
                                                    revert with 0, 18
                                                if 98 * arg3 / arg3 != 98:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 98 * arg3 / 100 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg3 < 98 * arg3 / 100:
                                                    revert with 0, 17
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 98 * arg3 / 100 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < 98 * arg3 / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= 98 * arg3 / 100
                                                if balanceOf[this.address] > !(98 * arg3 / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (98 * arg3 / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (98 * arg3 / 100)
                                                emit Transfer((98 * arg3 / 100), address(arg1), this.address);
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg2):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 - (98 * arg3 / 100) > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3 - (98 * arg3 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (98 * arg3 / 100)
                                                if balanceOf[address(arg2)] > !(arg3 - (98 * arg3 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] + arg3 - (98 * arg3 / 100) < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (98 * arg3 / 100)
                                                emit Transfer((arg3 - (98 * arg3 / 100)), address(arg1), address(arg2));
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
