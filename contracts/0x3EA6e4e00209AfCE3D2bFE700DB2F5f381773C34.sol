contract main {




// =====================  Runtime code  =====================


const maxSupply = 12000000 * 10^18

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(48, 208, 'MINTER') >> 208)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 cap;
array of struct roleAdmin;
mapping of uint256 mintAllowances;
uint256 stor9;
uint8 stor10;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function mintAllowances(address arg1) payable {
    require calldata.size - 4 >= 32
    return mintAllowances[arg1]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return not not roleAdmin[0][1][address(arg1)].field_0
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return not not roleAdmin['MINTER'][1][address(arg1)].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function increaseMintAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if mintAllowances[address(arg1)] + arg2 < mintAllowances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        revert with 0, 'Approve mint to the zero address'
    mintAllowances[address(arg1)] += arg2
    return 1
}

function decreaseMintAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if arg2 > mintAllowances[address(arg1)]:
        revert with 0, 32, 35, 0x65446563726561736564206d696e742d616c6c6f77616e63652062656c6f77207a6572, mem[163 len 29], mem[221 len 3]
    if not arg1:
        revert with 0, 'Approve mint to the zero address'
    mintAllowances[address(arg1)] -= arg2
    return 1
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
        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
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

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin[0].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin['MINTER'][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to minters.'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if arg2 > mintAllowances[address(msg.sender)]:
        revert with 0, 'Mint amount exceeds allowance'
    if not msg.sender:
        revert with 0, 'Approve mint to the zero address'
    mintAllowances[address(msg.sender)] -= arg2
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function renounceAdmin() payable {
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[0][1][address(msg.sender)].field_0:
        require roleAdmin[0].field_0 - 1 < roleAdmin[0].field_0
        require roleAdmin[0][1][address(msg.sender)].field_0 - 1 < roleAdmin[0].field_0
        roleAdmin[0][roleAdmin[0][1][address(msg.sender)].field_0].field_0 = roleAdmin[0][roleAdmin[0].field_0].field_0
        roleAdmin[0][1][roleAdmin[0][roleAdmin[0].field_0].field_0].field_0 = roleAdmin[0][1][address(msg.sender)].field_0
        require roleAdmin[0].field_0
        roleAdmin[0][roleAdmin[0].field_0].field_0 = 0
        roleAdmin[0].field_0--
        roleAdmin[0][1][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0, msg.sender, msg.sender);
}

function addMinter(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin['MINTER'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin['MINTER'][1][address(arg1)].field_0:
        roleAdmin['MINTER'].field_0++
        roleAdmin['MINTER'][roleAdmin['MINTER'].field_0].field_0 = arg1
        roleAdmin['MINTER'][roleAdmin['MINTER'].field_0].field_160 = 0
        roleAdmin['MINTER'][1][address(arg1)].field_0 = roleAdmin['MINTER'].field_0
        emit RoleGranted(sha3('MINTER'), arg1, msg.sender);
    if not arg1:
        revert with 0, 'Approve mint to the zero address'
    mintAllowances[address(arg1)] = arg2
    emit AddMinter(address(arg1), arg2);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
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

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin['MINTER'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin['MINTER'][1][address(arg1)].field_0:
        require roleAdmin['MINTER'].field_0 - 1 < roleAdmin['MINTER'].field_0
        require roleAdmin['MINTER'][1][address(arg1)].field_0 - 1 < roleAdmin['MINTER'].field_0
        roleAdmin['MINTER'][roleAdmin['MINTER'][1][address(arg1)].field_0].field_0 = roleAdmin['MINTER'][roleAdmin['MINTER'].field_0].field_0
        roleAdmin['MINTER'][1][roleAdmin['MINTER'][roleAdmin['MINTER'].field_0].field_0].field_0 = roleAdmin['MINTER'][1][address(arg1)].field_0
        require roleAdmin['MINTER'].field_0
        roleAdmin['MINTER'][roleAdmin['MINTER'].field_0].field_0 = 0
        roleAdmin['MINTER'].field_0--
        roleAdmin['MINTER'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('MINTER'), arg1, msg.sender);
    if not arg1:
        revert with 0, 'Approve mint to the zero address'
    mintAllowances[address(arg1)] = 0
    emit RemoveMinter(arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor10:
        if ext_code.size(this.address):
            if 1 <= stor9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not stor10:
            stor10 = 1
            stor9 = 1
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    emit RoleAdminChanged(sha3('MINTER'), roleAdmin['MINTER'].field_512, 0);
    roleAdmin['MINTER'].field_512 = 0
    bool(name.length) = 0
    name.length.field_1 = 21
    name.length.field_8 = 'QIAN governance token' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 3
    symbol.length.field_8 = 'KUN' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    cap = 12000000 * 10^18
    if not stor10:
        stor10 = 0
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
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if totalSupply + arg3 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg3 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
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
                    0x6f45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
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



}
