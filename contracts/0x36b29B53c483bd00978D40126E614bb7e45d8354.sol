contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct stor6;
mapping of uint256 stor7;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceAdmin() payable {
    if stor7[address(msg.sender)]:
        require stor6.length - 1 < stor6.length
        require stor7[address(msg.sender)] - 1 < stor6.length
        stor6[stor7[address(msg.sender)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(msg.sender)]
        require stor6.length
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor6[stor6.length].field_160 = 0
        stor7[address(arg1)] = stor6.length
    emit AdminAdded(arg1);
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

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if stor7[address(arg1)]:
        require stor6.length - 1 < stor6.length
        require stor7[address(arg1)] - 1 < stor6.length
        stor6[stor7[address(arg1)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
        require stor6.length
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(arg1)] = 0
    emit AdminRemoved(arg1);
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return (balanceOf[address(arg1)] > balanceOf[address(arg1)])
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
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

function transfer(address arg1, uint256 arg2) payable {
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
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function allAdmins() payable {
    require stor6.length <= test266151307()
    if not stor6.length:
        if var30002 >= stor6.length:
            mem[(32 * stor6.length) + 128] = 32
            mem[(32 * stor6.length) + 160] = stor6.length
            mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
            return memory
              from (32 * stor6.length) + 128
               len (96 * stor6.length) + 64
        if var36001 >= stor6.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor6.length) + 230 len 30]
        require var38002 < stor6.length
        require var44002 < stor6.length
        mem[(32 * var46001) + 128] = address(var46003)
        if var56002 < stor6.length:
            # nil
        else:
            mem[(32 * stor6.length) + 128] = 32
            mem[(32 * stor6.length) + 160] = stor6.length
            mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
            return memory
              from (32 * stor6.length) + 128
               len (96 * stor6.length) + 64
    else:
        mem[128 len 32 * stor6.length] = call.data[calldata.size len 32 * stor6.length]
        if var31002 >= stor6.length:
            mem[(32 * stor6.length) + 128] = 32
            mem[(32 * stor6.length) + 160] = stor6.length
            mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = call.data[calldata.size len floor32(stor6.length)]
            return memory
              from (32 * stor6.length) + 128
               len (96 * stor6.length) + 64
        if var37001 >= stor6.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor6.length) + 230 len 30]
        require var39002 < stor6.length
        require var45002 < stor6.length
        mem[(32 * var47001) + 128] = address(var47003)
        if var57002 < stor6.length:
            # nil
        else:
            mem[(32 * stor6.length) + 128] = 32
            mem[(32 * stor6.length) + 160] = stor6.length
            mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = call.data[calldata.size len floor32(stor6.length)]
            return memory
              from (32 * stor6.length) + 128
               len (96 * stor6.length) + 64
}



}
