contract main {




// =====================  Runtime code  =====================


const version = ''

const generator = Array(len=47, data=0x7368747470733a2f2f766974746f6d696e61636f72692e6769746875622e696f2f65726332302d67656e657261746f, mem[175 len 17], mem[209 len 15])

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0xf0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2dc9

const OPERATOR_ROLE = 0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 cap;
mapping of uint8 stor7;
array of struct roleAdmin;
uint8 stor9; offset 160
uint8 stor9; offset 168
address owner;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[Mask(32, 224, arg1)])
}

function mintingFinished() payable {
    return bool(uint8(stor9.field_160))
}

function name() payable {
    return name[0 len name.length]
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

function transferEnabled() payable {
    return bool(uint8(stor9.field_168))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function enableTransfer() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor9.field_168) = 1
    emit TransferEnabled()
}

function finishMinting() payable {
    if uint8(stor9.field_160):
        revert with 0, 'ERC20Base: minting is finished'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor9.field_160) = 1
    emit MintFinished()
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor9.field_160):
        revert with 0, 'ERC20Base: minting is finished'
    if not roleAdmin[0xf0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2dc9][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x65526f6c65733a2063616c6c657220646f6573206e6f74206861766520746865204d494e54455220726f6c,
                    mem[207 len 21]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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
        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function approveAndCall(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[232 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[230 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 32, 37, 0x73455243313336333a205f636865636b416e6443616c6c417070726f766520726576657274, mem[233 len 27]
    if not ext_code.hash(arg1):
        revert with 0, 32, 37, 0x73455243313336333a205f636865636b416e6443616c6c417070726f766520726576657274, mem[233 len 27]
    require ext_code.size(arg1)
    call arg1.onApprovalReceived(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args msg.sender, arg2, 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0x7b04a2d000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'sERC1363: _checkAndCallApprove revert'
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor9.field_168):
        if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        74,
                        0x724552433230426173653a207472616e73666572206973206e6f7420656e61626c6564206f722066726f6d20646f6573206e6f74206861766520746865204f50455241544f5220726f6c,
                        mem[238 len 22]
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
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
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

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 232 len 28]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address rg1, address rg2, uint256 rg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 
                    32,
                    37,
                    0x73455243313336333a205f636865636b416e6443616c6c417070726f766520726576657274,
                    mem[ceil32(arg3.length) + 233 len 27]
    if not ext_code.hash(arg1):
        revert with 0, 
                    32,
                    37,
                    0x73455243313336333a205f636865636b416e6443616c6c417070726f766520726576657274,
                    mem[ceil32(arg3.length) + 233 len 27]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0x7b04a2d000000000000000000000000000000000000000000000000000000000:
        revert with 0, 32, 37, 0x73455243313336333a205f636865636b416e6443616c6c417070726f766520726576657274, Mask(216, 0, arg3.length)
    return 0, 1
}

function transferAndCall(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor9.field_168):
        if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        74,
                        0x724552433230426173653a207472616e73666572206973206e6f7420656e61626c6564206f722066726f6d20646f6573206e6f74206861766520746865204f50455241544f5220726f6c,
                        mem[270 len 22]
    if not msg.sender:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[233 len 27]
    if not arg1:
        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[231 len 29]
    if not msg.sender:
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[198 len 26],
                    mem[250 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 32, 38, 0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274, mem[330 len 26]
    if not ext_code.hash(arg1):
        revert with 0, 32, 38, 0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274, mem[330 len 26]
    require ext_code.size(arg1)
    call arg1.onTransferReceived(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg2, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0x88a7ca5c00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'eERC1363: _checkAndCallTransfer revert'
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor9.field_168):
        if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][1][address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        74,
                        0x724552433230426173653a207472616e73666572206973206e6f7420656e61626c6564206f722066726f6d20646f6573206e6f74206861766520746865204f50455241544f5220726f6c,
                        mem[238 len 22]
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
        if arg3 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
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
                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
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

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not uint8(stor9.field_168):
        if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][1][address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        74,
                        0x724552433230426173653a207472616e73666572206973206e6f7420656e61626c6564206f722066726f6d20646f6573206e6f74206861766520746865204f50455241544f5220726f6c,
                        mem[ceil32(arg3.length) + 270 len 22]
    if not msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 233 len 27]
    if not arg1:
        revert with 0, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 231 len 29]
    if not msg.sender:
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[ceil32(arg3.length) + 198 len 26],
                    mem[ceil32(arg3.length) + 250 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 
                    32,
                    38,
                    0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274,
                    mem[ceil32(arg3.length) + 330 len 26]
    if not ext_code.hash(arg1):
        revert with 0, 
                    32,
                    38,
                    0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274,
                    mem[ceil32(arg3.length) + 330 len 26]
    require ext_code.size(arg1)
    call arg1.onTransferReceived(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0x88a7ca5c00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'eERC1363: _checkAndCallTransfer revert'
    return 1
}

function transferFromAndCall(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor9.field_168):
        if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][1][address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        74,
                        0x724552433230426173653a207472616e73666572206973206e6f7420656e61626c6564206f722066726f6d20646f6573206e6f74206861766520746865204f50455241544f5220726f6c,
                        mem[270 len 22]
    if not arg1:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[233 len 27]
    if not arg2:
        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[231 len 29]
    if not arg1:
        if arg3 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[198 len 26],
                    mem[250 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[296 len 24],
                    mem[344 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 32, 38, 0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274, mem[426 len 26]
    if not ext_code.hash(arg2):
        revert with 0, 32, 38, 0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274, mem[426 len 26]
    require ext_code.size(arg2)
    call arg2.onTransferReceived(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0x88a7ca5c00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'eERC1363: _checkAndCallTransfer revert'
    return 1
}

function transferFromAndCall(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not uint8(stor9.field_168):
        if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][1][address(arg1)].field_0:
            revert with 0, 
                        32,
                        74,
                        0x724552433230426173653a207472616e73666572206973206e6f7420656e61626c6564206f722066726f6d20646f6573206e6f74206861766520746865204f50455241544f5220726f6c,
                        mem[ceil32(arg4.length) + 270 len 22]
    if not arg1:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 233 len 27]
    if not arg2:
        revert with 0, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 231 len 29]
    if not arg1:
        if arg3 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + totalSupply > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[ceil32(arg4.length) + 198 len 26],
                    mem[ceil32(arg4.length) + 250 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[ceil32(arg4.length) + 296 len 24],
                    mem[ceil32(arg4.length) + 344 len 8]
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 424 len 28]
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 422 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 
                    32,
                    38,
                    0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274,
                    mem[ceil32(arg4.length) + 426 len 26]
    if not ext_code.hash(arg2):
        revert with 0, 
                    32,
                    38,
                    0x65455243313336333a205f636865636b416e6443616c6c5472616e7366657220726576657274,
                    mem[ceil32(arg4.length) + 426 len 26]
    require ext_code.size(arg2)
    call arg2.onTransferReceived(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]) != 0x88a7ca5c00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'eERC1363: _checkAndCallTransfer revert'
    return 1
}



}
