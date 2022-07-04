contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
address owner;
address vaultAddress;
address routerAddress;
mapping of uint8 stor15;
uint256 buybackFee;
uint256 swapLimit;
uint256 buybackLimit;
uint256 sub_5a53c1fb;
uint256 sub_b91854f4;
uint8 stor21;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function buybackFee() {
    return buybackFee
}

function sub_5a53c1fb(?) {
    return sub_5a53c1fb
}

function swapLimit() {
    return swapLimit
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function buybackLimit() {
    return buybackLimit
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pairAddress(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function sub_b91854f4(?) {
    return sub_b91854f4
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    stor15[address(arg1)] = 1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    vaultAddress = arg1
    return 1
}

function removePairAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    stor15[address(arg1)] = 0
}

function sub_d2f46f8a(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    buybackFee = arg1
    swapLimit = arg2
    buybackLimit = arg3
    sub_5a53c1fb = arg4
    sub_b91854f4 = block.number
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if vaultAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x775661756c744f776e65643a2063616c6c6572206973206e6f7420746865205661756c,
                    mem[199 len 29]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
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
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7245524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function _burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7245524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'Permit: expired deadline'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 32, 33, 0x735a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x735a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor21:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance'
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    else:
        if not buybackFee:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance'
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        else:
            if not stor15[address(arg1)]:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance'
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            else:
                if balanceOf[this.address] <= swapLimit:
                    if not arg2:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > arg2 + balanceOf[address(arg1)]:
                            revert with 0, 'Insufficient Balance'
                        balanceOf[address(arg1)] += arg2
                    else:
                        if buybackFee * arg2 / arg2 != buybackFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if (buybackFee * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += buybackFee * arg2 / 100
                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if buybackFee * arg2 / 100 > arg2 + balanceOf[address(arg1)]:
                            revert with 0, 'Insufficient Balance'
                        balanceOf[address(arg1)] = arg2 + balanceOf[address(arg1)] - (buybackFee * arg2 / 100)
                else:
                    stor21 = 1
                    mem[388 len 0] = None
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_b91854f4 + sub_5a53c1fb > block.number:
                        stor21 = 0
                        if not arg2:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, '', 'SafeMath: addition overflow'
                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > arg2 + balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg1)] += arg2
                        else:
                            if buybackFee * arg2 / arg2 != buybackFee:
                                revert with 0, 'eSafeMath: multiplication overfloddres'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if (buybackFee * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, '', 'SafeMath: addition overflow'
                            balanceOf[this.address] += buybackFee * arg2 / 100
                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if buybackFee * arg2 / 100 > arg2 + balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg1)] = arg2 + balanceOf[address(arg1)] - (buybackFee * arg2 / 100)
                    else:
                        if eth.balance(this.address) < buybackLimit:
                            stor21 = 0
                            if not arg2:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, '', 'SafeMath: addition overflow'
                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > arg2 + balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] += arg2
                            else:
                                if buybackFee * arg2 / arg2 != buybackFee:
                                    revert with 0, 'eSafeMath: multiplication overfloddres'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if (buybackFee * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, '', 'SafeMath: addition overflow'
                                balanceOf[this.address] += buybackFee * arg2 / 100
                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if buybackFee * arg2 / 100 > arg2 + balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] = arg2 + balanceOf[address(arg1)] - (buybackFee * arg2 / 100)
                        else:
                            mem[452 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), 0, block.timestamp, 2, mem[452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[this.address] > balanceOf[this.address]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not msg.sender:
                                revert with 0, '', 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            34,
                                            0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                            uint16(block.timestamp),
                                            0,
                                            Mask(16, -256, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, uint16(block.timestamp), 0) << 256
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, msg.sender, 0);
                            sub_b91854f4 = block.number
                            stor21 = 0
                            if not arg2:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > arg2 + balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] += arg2
                            else:
                                if buybackFee * arg2 / arg2 != buybackFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if (buybackFee * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[this.address] += buybackFee * arg2 / 100
                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if buybackFee * arg2 / 100 > arg2 + balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] = arg2 + balanceOf[address(arg1)] - (buybackFee * arg2 / 100)
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if -1 == allowance[address(arg1)][msg.sender]:
        if stor21:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance'
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        else:
            if not buybackFee:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                balanceOf[address(arg1)] -= arg3
                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            else:
                if not stor15[address(arg2)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance'
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                else:
                    if balanceOf[this.address] <= swapLimit:
                        if not arg3:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > arg3 + balanceOf[address(arg2)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg2)] += arg3
                        else:
                            if buybackFee * arg3 / arg3 != buybackFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg1)] -= arg3
                            if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += buybackFee * arg3 / 100
                            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
                    else:
                        stor21 = 1
                        mem[388 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b91854f4 + sub_5a53c1fb > block.number:
                            stor21 = 0
                            if not arg3:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, '', 'SafeMath: addition overflow'
                                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > arg3 + balanceOf[address(arg2)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg2)] += arg3
                            else:
                                if buybackFee * arg3 / arg3 != buybackFee:
                                    revert with 0, 'eSafeMath: multiplication overfloddres'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] -= arg3
                                if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, '', 'SafeMath: addition overflow'
                                balanceOf[this.address] += buybackFee * arg3 / 100
                                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
                        else:
                            if eth.balance(this.address) < buybackLimit:
                                stor21 = 0
                                if not arg3:
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, '', 'SafeMath: addition overflow'
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] += arg3
                                else:
                                    if buybackFee * arg3 / arg3 != buybackFee:
                                        revert with 0, 'eSafeMath: multiplication overfloddres'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, '', 'SafeMath: addition overflow'
                                    balanceOf[this.address] += buybackFee * arg3 / 100
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
                            else:
                                mem[452 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), 0, block.timestamp, 2, mem[452 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[this.address] > balanceOf[this.address]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, '', 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                uint16(block.timestamp),
                                                0,
                                                Mask(16, -256, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, uint16(block.timestamp), 0) << 256
                                if 0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                emit Transfer(0, msg.sender, 0);
                                sub_b91854f4 = block.number
                                stor21 = 0
                                if not arg3:
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] += arg3
                                else:
                                    if buybackFee * arg3 / arg3 != buybackFee:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += buybackFee * arg3 / 100
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
    else:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'Insufficient Allowance'
        allowance[address(arg1)][msg.sender] -= arg3
        if stor21:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance'
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        else:
            if not buybackFee:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                balanceOf[address(arg1)] -= arg3
                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            else:
                if not stor15[address(arg2)]:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance'
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                else:
                    if balanceOf[this.address] <= swapLimit:
                        if not arg3:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > arg3 + balanceOf[address(arg2)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg2)] += arg3
                        else:
                            if buybackFee * arg3 / arg3 != buybackFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg1)] -= arg3
                            if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += buybackFee * arg3 / 100
                            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                revert with 0, 'Insufficient Balance'
                            balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
                    else:
                        stor21 = 1
                        mem[452 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b91854f4 + sub_5a53c1fb > block.number:
                            stor21 = 0
                            if not arg3:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, '', 'SafeMath: addition overflow'
                                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > arg3 + balanceOf[address(arg2)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg2)] += arg3
                            else:
                                if buybackFee * arg3 / arg3 != buybackFee:
                                    revert with 0, 'eSafeMath: multiplication overfloddres'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg1)] -= arg3
                                if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, '', 'SafeMath: addition overflow'
                                balanceOf[this.address] += buybackFee * arg3 / 100
                                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                    revert with 0, 'Insufficient Balance'
                                balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
                        else:
                            if eth.balance(this.address) < buybackLimit:
                                stor21 = 0
                                if not arg3:
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, '', 'SafeMath: addition overflow'
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] += arg3
                                else:
                                    if buybackFee * arg3 / arg3 != buybackFee:
                                        revert with 0, 'eSafeMath: multiplication overfloddres'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, '', 'SafeMath: addition overflow'
                                    balanceOf[this.address] += buybackFee * arg3 / 100
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
                            else:
                                mem[516 len 0] = None
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), 0, block.timestamp, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[this.address] > balanceOf[this.address]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, '', 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[517 len 31]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                34,
                                                0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                                uint16(block.timestamp),
                                                0,
                                                Mask(16, -256, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, uint16(block.timestamp), 0) << 256
                                if 0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                emit Transfer(0, msg.sender, 0);
                                sub_b91854f4 = block.number
                                stor21 = 0
                                if not arg3:
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] += arg3
                                else:
                                    if buybackFee * arg3 / arg3 != buybackFee:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if (buybackFee * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += buybackFee * arg3 / 100
                                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if buybackFee * arg3 / 100 > arg3 + balanceOf[address(arg2)]:
                                        revert with 0, 'Insufficient Balance'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[address(arg2)] - (buybackFee * arg3 / 100)
    return 1
}



}
