contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 maxSupply;
address governanceAddress;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of address sub_ec66465f;
uint256 sub_ec941f0e;
mapping of uint256 sub_ba02132a;
address sub_aeacd861Address;
address token0Address;
address token1Address;
uint8 sub_fd1ada98; offset 160
uint128 stor18; offset 160
address pancakePairAddress;
address sub_220dfc8cAddress;
address sub_7856fa44Address;
uint256 stor20;

function name() payable {
    return name[0 len name.length]
}

function sub_0be06940(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function token0() payable {
    return token0Address
}

function totalSupply() payable {
    return totalSupply
}

function sub_220dfc8c(?) payable {
    return sub_220dfc8cAddress
}

function sub_2785d4ca(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_279d700d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function decimals() payable {
    return decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7856fa44(?) payable {
    return address(sub_7856fa44Address)
}

function sub_906513e7(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_aeacd861(?) payable {
    return sub_aeacd861Address
}

function pancakePair() payable {
    return pancakePairAddress
}

function sub_ba02132a(?) payable {
    require calldata.size - 4 >= 32
    return sub_ba02132a[arg1]
}

function token1() payable {
    return token1Address
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ec66465f(?) payable {
    require calldata.size - 4 >= 32
    return sub_ec66465f[arg1]
}

function sub_ec941f0e(?) payable {
    return sub_ec941f0e
}

function sub_fd1ada98(?) payable {
    return bool(sub_fd1ada98)
}

function _fallback() payable {
    revert
}

function sub_7e379bef(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor10[address(arg1)] = 1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function sub_77d1be53(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, '!governance'
    stor18 = Mask(96, 0, arg1)
}

function setpool(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, '!governance'
    pancakePairAddress = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) payable {
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_34017de8(?) payable {
    require calldata.size - 4 >= 64
    if not stor10[msg.sender]:
        revert with 0, '!adner'
    if not arg1:
        revert with 0, 'ERC20: adn to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply > maxSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a2063616e6e6f742061646e206f766572206d617820737570706c,
                    mem[197 len 31]
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
}

function sub_4a827136(?) payable {
    if not sub_ec941f0e:
        mem[(32 * sub_ec941f0e) + 128] = 32
        mem[(32 * sub_ec941f0e) + 160] = sub_ec941f0e
        mem[(32 * sub_ec941f0e) + 192 len floor32(sub_ec941f0e)] = mem[128 len floor32(sub_ec941f0e)]
        return memory
          from (32 * sub_ec941f0e) + 128
           len (96 * sub_ec941f0e) + 64
    mem[128 len 32 * sub_ec941f0e] = code.data[7143 len 32 * sub_ec941f0e]
    idx = 0
    while idx < sub_ec941f0e:
        mem[0] = idx
        mem[32] = 12
        require idx < sub_ec941f0e
        mem[(32 * idx) + 128] = sub_ec66465f[idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_ec941f0e) + 192 len floor32(sub_ec941f0e)] = mem[128 len floor32(sub_ec941f0e)]
    return Array(len=sub_ec941f0e, data=mem[128 len floor32(sub_ec941f0e)], mem[(32 * sub_ec941f0e) + floor32(sub_ec941f0e) + 192 len (32 * sub_ec941f0e) - floor32(sub_ec941f0e)]), 
}

function sub_e68866c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if governanceAddress != msg.sender:
        if not stor10[msg.sender]:
            revert with 0, '!governance'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if not stor11[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            sub_ec66465f[stor13] = mem[(32 * idx) + 140 len 20]
            sub_ec941f0e++
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            stor11[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if pancakePairAddress == arg1:
        if sub_fd1ada98:
            if pancakePairAddress == arg1:
                if not stor11[address(arg2)]:
                    revert with 0, ' recipient not white  swap'
            if pancakePairAddress == arg2:
                if not stor11[address(arg1)]:
                    revert with 0, ' sender  not white swap'
        if stor11[address(arg2)]:
            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
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
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if stor11[address(arg1)]:
                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
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
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if not arg3:
                    if balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not this.address:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[357 len 31]
                    if 0 > balanceOf[address(this.address)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, this.address, 0);
                else:
                    if 2 * arg3 / arg3 != 2:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if (2 * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[this.address] += 2 * arg3 / 100
                    if not this.address:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[357 len 31]
                    if 2 * arg3 / 100 > balanceOf[address(this.address)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    balanceOf[address(this.address)] -= 2 * arg3 / 100
                    if 2 * arg3 / 100 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= 2 * arg3 / 100
                    emit Transfer((2 * arg3 / 100), this.address, 0);
                if not arg3:
                    if not arg3:
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                        allowance[address(this.address)][stor15] = 0
                        emit Approval(0, this.address, sub_aeacd861Address);
                        mem[836 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                        allowance[address(this.address)][stor15] = 0
                        emit Approval(0, this.address, sub_aeacd861Address);
                        mem[932 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                    else:
                        if 3 * arg3 / arg3 != 3:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 3 * arg3 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (3 * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += 3 * arg3 / 100
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                        allowance[address(this.address)][stor15] = 0
                        emit Approval(0, this.address, sub_aeacd861Address);
                        mem[836 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                        allowance[address(this.address)][stor15] = 3 * arg3 / 100
                        emit Approval((3 * arg3 / 100), this.address, sub_aeacd861Address);
                        mem[932 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 3 * arg3 / 100, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                else:
                    if arg3 / arg3 != 1:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not arg3:
                        if arg3 / 100 < arg3 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg3 / 100
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                        allowance[address(this.address)][stor15] = arg3 / 100
                        emit Approval((arg3 / 100), this.address, sub_aeacd861Address);
                        mem[836 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / 100, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                        allowance[address(this.address)][stor15] = 0
                        emit Approval(0, this.address, sub_aeacd861Address);
                        mem[932 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                    else:
                        if 3 * arg3 / arg3 != 3:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (3 * arg3 / 100) + (arg3 / 100) < arg3 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if (3 * arg3 / 100) + (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] = (3 * arg3 / 100) + (arg3 / 100) + balanceOf[this.address]
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                        allowance[address(this.address)][stor15] = arg3 / 100
                        emit Approval((arg3 / 100), this.address, sub_aeacd861Address);
                        mem[836 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / 100, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_aeacd861Address)
                        staticcall sub_aeacd861Address.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                        if not sub_aeacd861Address:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                        allowance[address(this.address)][stor15] = 3 * arg3 / 100
                        emit Approval((3 * arg3 / 100), this.address, sub_aeacd861Address);
                        mem[932 len 0] = None
                        require ext_code.size(sub_aeacd861Address)
                        call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 3 * arg3 / 100, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, '', 27, 'SafeMath: addition overflow' << 40
                    emit Transfer(0, arg1, arg2);
                else:
                    if 94 * arg3 / arg3 != 94:
                        revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor20)
                    if (94 * arg3 / 100) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, '', 27, 'SafeMath: addition overflow' << 40
                    balanceOf[address(arg2)] += 94 * arg3 / 100
                    emit Transfer((94 * arg3 / 100), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                Mask(192, 32, block.timestamp + 60) >> 32,
                                0
                if not arg1:
                    revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                if not msg.sender:
                    revert with 0, '', 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
    else:
        if pancakePairAddress != arg2:
            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
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
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if sub_fd1ada98:
                if pancakePairAddress == arg1:
                    if not stor11[address(arg2)]:
                        revert with 0, ' recipient not white  swap'
                if pancakePairAddress == arg2:
                    if not stor11[address(arg1)]:
                        revert with 0, ' sender  not white swap'
            if stor11[address(arg2)]:
                if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
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
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if stor11[address(arg1)]:
                    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
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
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if not arg3:
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[357 len 31]
                        if 0 > balanceOf[address(this.address)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, this.address, 0);
                    else:
                        if 2 * arg3 / arg3 != 2:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if (2 * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += 2 * arg3 / 100
                        if not this.address:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[357 len 31]
                        if 2 * arg3 / 100 > balanceOf[address(this.address)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        balanceOf[address(this.address)] -= 2 * arg3 / 100
                        if 2 * arg3 / 100 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= 2 * arg3 / 100
                        emit Transfer((2 * arg3 / 100), this.address, 0);
                    if not arg3:
                        if not arg3:
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                            allowance[address(this.address)][stor15] = 0
                            emit Approval(0, this.address, sub_aeacd861Address);
                            mem[836 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                            allowance[address(this.address)][stor15] = 0
                            emit Approval(0, this.address, sub_aeacd861Address);
                            mem[932 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                        else:
                            if 3 * arg3 / arg3 != 3:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 3 * arg3 / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (3 * arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += 3 * arg3 / 100
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                            allowance[address(this.address)][stor15] = 0
                            emit Approval(0, this.address, sub_aeacd861Address);
                            mem[836 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                            allowance[address(this.address)][stor15] = 3 * arg3 / 100
                            emit Approval((3 * arg3 / 100), this.address, sub_aeacd861Address);
                            mem[932 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 3 * arg3 / 100, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                    else:
                        if arg3 / arg3 != 1:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not arg3:
                            if arg3 / 100 < arg3 / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += arg3 / 100
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                            allowance[address(this.address)][stor15] = arg3 / 100
                            emit Approval((arg3 / 100), this.address, sub_aeacd861Address);
                            mem[836 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3 / 100, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                            allowance[address(this.address)][stor15] = 0
                            emit Approval(0, this.address, sub_aeacd861Address);
                            mem[932 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                        else:
                            if 3 * arg3 / arg3 != 3:
                                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (3 * arg3 / 100) + (arg3 / 100) < arg3 / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if (3 * arg3 / 100) + (arg3 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] = (3 * arg3 / 100) + (arg3 / 100) + balanceOf[this.address]
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[744 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[742 len 30]
                            allowance[address(this.address)][stor15] = arg3 / 100
                            emit Approval((arg3 / 100), this.address, sub_aeacd861Address);
                            mem[836 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3 / 100, 0, 160, sub_220dfc8cAddress, block.timestamp + 60, 2, mem[836 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_aeacd861Address)
                            staticcall sub_aeacd861Address.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                            if not sub_aeacd861Address:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                            allowance[address(this.address)][stor15] = 3 * arg3 / 100
                            emit Approval((3 * arg3 / 100), this.address, sub_aeacd861Address);
                            mem[932 len 0] = None
                            require ext_code.size(sub_aeacd861Address)
                            call sub_aeacd861Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 3 * arg3 / 100, 0, 160, 0, address(sub_7856fa44Address), block.timestamp + 60, 2, mem[932 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                            revert with 0, '', 27, 'SafeMath: addition overflow' << 40
                        emit Transfer(0, arg1, arg2);
                    else:
                        if 94 * arg3 / arg3 != 94:
                            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor20)
                        if (94 * arg3 / 100) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                            revert with 0, '', 27, 'SafeMath: addition overflow' << 40
                        balanceOf[address(arg2)] += 94 * arg3 / 100
                        emit Transfer((94 * arg3 / 100), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    Mask(192, 32, block.timestamp + 60) >> 32,
                                    0
                    if not arg1:
                        revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                    if not msg.sender:
                        revert with 0, '', 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
