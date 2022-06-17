contract main {




// =====================  Runtime code  =====================


const id = ''


array of uint256 stor0;
array of uint256 stor1;
uint256 totalSupply;
uint256 stor3;
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalStaked() payable {
    if stor3 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - stor3)
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor4 = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor9[address(arg1)] = 1
}

function stakedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor8[address(arg1)]:
        return balanceOf[address(arg1)]
    else:
        return 0
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor9[address(arg1)] = 0
}

function setInPrivateTransferMode(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor10 = uint8(arg1)
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor12[address(arg1)] = uint8(arg2)
}

function setHandler(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor11[address(arg1)] = uint8(arg2)
}

function setInfo(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor0[] = Array(len=arg1.length, data=arg1[all])
    stor1[] = Array(len=arg2.length, data=arg2[all])
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[100] = msg.sender
        mem[132] = arg1
        require ext_code.size(stor7[idx])
        call stor7[idx].claim(address arg1, address arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function recoverClaim(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9[msg.sender]:
        revert with 0, 'lBaseToken: forbidden'
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[100] = arg1
        mem[132] = arg2
        require ext_code.size(stor7[idx])
        call stor7[idx].claim(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x42617365546f6b656e3a20617070726f76652066726f6d20746865207a65726f2061646472657300,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7342617365546f6b656e3a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[202 len 26]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeNonStakingAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor9[msg.sender]:
        revert with 0, 'lBaseToken: forbidden'
    if not stor8[address(arg1)]:
        revert with 0, 'BaseToken: _account not marked'
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor7[idx])
        call stor7[idx].updateRewards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor8[address(arg1)] = 0
    if balanceOf[address(arg1)] > stor3:
        revert with 0, 'SafeMath: subtraction overflow'
    stor3 -= balanceOf[address(arg1)]
}

function sub_276eab4e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    stor7.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor7[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor7.length > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
}

function addNonStakingAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor9[msg.sender]:
        revert with 0, 'lBaseToken: forbidden'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542617365546f6b656e3a205f6163636f756e7420616c7265616479206d61726b65,
                    mem[198 len 30]
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor7[idx])
        call stor7[idx].updateRewards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor8[address(arg1)] = 1
    if balanceOf[address(arg1)] + stor3 < stor3:
        revert with 0, 'SafeMath: addition overflow'
    stor3 += balanceOf[address(arg1)]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor12[msg.sender]:
        revert with 0, 'MintableBaseToken: forbidden'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7342617365546f6b656e3a206d696e7420746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor7[idx])
        call stor7[idx].updateRewards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if stor8[address(arg1)]:
        if arg2 + stor3 < stor3:
            revert with 0, 'SafeMath: addition overflow'
        stor3 += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor12[msg.sender]:
        revert with 0, 'MintableBaseToken: forbidden'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6442617365546f6b656e3a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor7[idx])
        call stor7[idx].updateRewards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6442617365546f6b656e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    if stor8[address(arg1)]:
        if arg2 > stor3:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3 -= arg2
    emit Transfer(arg2, arg1, 0);
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor4 != msg.sender:
        revert with 0, 'lBaseToken: forbidden'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7342617365546f6b656e3a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6442617365546f6b656e3a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[203 len 25]
    if stor10:
        if not stor11[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42617365546f6b656e3a206d73672e73656e646572206e6f742077686974656c69737465,
                        mem[201 len 27]
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(stor7[idx])
        call stor7[idx].updateRewards(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor7[idx])
        call stor7[idx].updateRewards(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    42,
                    0x7342617365546f6b656e3a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[170 len 22],
                    mem[214 len 10]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if stor8[address(msg.sender)]:
        if arg2 > stor3:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3 -= arg2
    if stor8[address(arg1)]:
        if arg2 + stor3 < stor3:
            revert with 0, 'SafeMath: addition overflow'
        stor3 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor11[msg.sender]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x7342617365546f6b656e3a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[205 len 23]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x6442617365546f6b656e3a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[203 len 25]
        if stor10:
            if not stor11[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42617365546f6b656e3a206d73672e73656e646572206e6f742077686974656c69737465,
                            mem[201 len 27]
        idx = 0
        while idx < stor7.length:
            mem[0] = 7
            mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(stor7[idx])
            call stor7[idx].updateRewards(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor7.length:
            mem[0] = 7
            mem[96] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
            mem[100] = arg2
            require ext_code.size(stor7[idx])
            call stor7[idx].updateRewards(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        42,
                        0x7342617365546f6b656e3a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[170 len 22],
                        mem[214 len 10]
    else:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 
                        32,
                        44,
                        0x7342617365546f6b656e3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[172 len 20],
                        mem[212 len 12]
        if not arg1:
            revert with 0, 32, 40, 0x42617365546f6b656e3a20617070726f76652066726f6d20746865207a65726f2061646472657300, mem[300 len 24]
        if not msg.sender:
            revert with 0, 32, 38, 0x7342617365546f6b656e3a20617070726f766520746f20746865207a65726f20616464726573, mem[298 len 26]
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
        if not arg1:
            revert with 0, 32, 41, 0x7342617365546f6b656e3a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[301 len 23]
        if not arg2:
            revert with 0, 32, 39, 0x6442617365546f6b656e3a207472616e7366657220746f20746865207a65726f20616464726573, mem[299 len 25]
        if stor10:
            if not stor11[msg.sender]:
                revert with 0, 32, 37, 0xfe42617365546f6b656e3a206d73672e73656e646572206e6f742077686974656c69737465, mem[297 len 27]
        idx = 0
        while idx < stor7.length:
            mem[0] = 7
            mem[192] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            require ext_code.size(stor7[idx])
            call stor7[idx].updateRewards(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor7.length:
            mem[0] = 7
            mem[192] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            require ext_code.size(stor7[idx])
            call stor7[idx].updateRewards(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        42,
                        0x7342617365546f6b656e3a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[266 len 22],
                        mem[310 len 10]
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5))))
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if stor8[address(arg1)]:
        if arg3 > stor3:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3 -= arg3
    if stor8[address(arg2)]:
        if arg3 + stor3 < stor3:
            revert with 0, 'SafeMath: addition overflow'
        stor3 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
