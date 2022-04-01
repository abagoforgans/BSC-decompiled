contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, address arg3)
#  - initialize(string arg1, string arg2)
#  - initialize()
#  - transfer(address arg1, uint256 arg2)
#
const sub_5df79b9f(?) = sha3(Mask(96, 160, 'FARM_OP_ROLE') >> 160)

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)

const PAUSER_ROLE = sha3(Mask(88, 168, 'PAUSER_ROLE') >> 168)


array of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 paused;
uint256 stor351;
address pendingOwner;
uint32 stor402;
address owner;
uint256 stor402;
mapping of uint256 stor452;
uint8 initialized; offset 160
address devaddr;
uint256 stor454;
array of uint256 icon;
array of uint256 meta;
uint32 stor457;
address sub_43fff4aaAddress;
uint256 stor457;
address sub_3dfd2221Address;
address sub_3c3d3420Address;

function name() payable {
    return name[0 len name.length]
}

function initialized() payable {
    return bool(initialized)
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

function sub_3c3d3420(?) payable {
    return sub_3c3d3420Address
}

function sub_3dfd2221(?) payable {
    return sub_3dfd2221Address
}

function sub_43fff4aa(?) payable {
    return address(sub_43fff4aaAddress)
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return address(owner)
}

function owner() payable {
    return address(owner)
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

function icon() payable {
    return icon[0 len icon.length]
}

function meta() payable {
    return meta[0 len meta.length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function devaddr() payable {
    return devaddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function finishMinting() payable {
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    else:
        return 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wtf?'
    devaddr = arg1
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    emit 0x728be007: address(owner), pendingOwner
    address(owner) = pendingOwner
    pendingOwner = 0
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    revert with 0, 'renouncing ownership is blocked'
}

function sub_04b1ba1f(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_3c3d3420Address = arg1
}

function sub_dada4309(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_3dfd2221Address = arg1
}

function sub_39a15d90(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    address(sub_43fff4aaAddress) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    pendingOwner = arg1
}

function sub_723373ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    meta[] = Array(len=arg1.length, data=arg1[all])
}

function sub_dcc4a192(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    icon[] = Array(len=arg1.length, data=arg1[all])
}

function unLockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if balanceOf[address(arg1)] > stor454:
        revert with 0, 'SupplyLocked'
    stor454 -= balanceOf[address(arg1)]
    stor452[address(arg1)] = 0
    emit UnLock(balanceOf[address(arg1)], arg1);
}

function lockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if balanceOf[address(arg1)] + stor454 < stor454:
        revert with 0, 'SafeMath: addition overflow'
    stor454 += balanceOf[address(arg1)]
    stor452[address(arg1)] = 16
    emit Lock(balanceOf[address(arg1)], arg1);
}

function pause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7345524332305072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[219 len 9]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6545524332305072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[221 len 7]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function transferOwnershipImmediately(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6e6e6f7420616c6c6f77656420746f207472616e73666572206f776e657220746f20616464726573732830,
                    mem[207 len 21]
    address(owner) = arg1
    emit 0x728be007: arg1, arg1
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
                    0x2945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function reclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor402)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor402):
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin['MINTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xe045524332305072657365744d696e7465725061757365723a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[218 len 10]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if stor351 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor351 = 2
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if stor452[0] >= 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65796f7520617265206e6f7420616c6c6f77656420746f206d6f766520636f696e73206174,
                    mem[201 len 27]
    if stor452[address(arg1)] >= 10:
        if arg2 + stor454 < stor454:
            revert with 0, 'SafeMath: addition overflow'
        stor454 += arg2
    if address(sub_43fff4aaAddress) == arg1:
        if address(sub_43fff4aaAddress):
            if sub_3dfd2221Address:
                if not roleAdmin['FARM_OP_ROLE'][1][address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                63,
                                0x644661726d4f70657261746f723a206d7573742068617665204641524d5f4f505f524f4c4520746f20646973747269627574652072657761726420746f6b65,
                                mem[227 len 1]
                if arg2 > balanceOf[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                57,
                                0x73616d6f756e742065786365656473206f70742062616c616e63652c636f6e746163742061646d696e20746f20676574206d6f7265204f5054,
                                mem[221 len 7]
                require ext_code.size(sub_3dfd2221Address)
                staticcall sub_3dfd2221Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                98,
                                0x6c616d6f756e742065786365656473206661726d2d6f7027732072657761726420746f6b656e27732062616c616e63652c706c65617365206465706f7369742072657761726420746f6b656e20746f207468697320636f6e74726163742066697273,
                                mem[262 len 30]
                require ext_code.size(sub_3dfd2221Address)
                staticcall sub_3dfd2221Address.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(sub_43fff4aaAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_3dfd2221Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), Mask(224, 32, arg2 + ext_call.return_data[0]) >> 32
                call sub_3dfd2221Address with:
                   funct uint32(stor457)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2 + ext_call.return_data[0]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), arg2 + ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor457):
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
                require ext_code.size(address(sub_43fff4aaAddress))
                call address(sub_43fff4aaAddress).0x18c7ea33 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    stor351 = 1
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit 0x65ddf252: arg2, 0, arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if stor351 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor351 = 2
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if stor452[address(msg.sender)] >= 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65796f7520617265206e6f7420616c6c6f77656420746f206d6f766520636f696e73206174,
                    mem[201 len 27]
    if stor452[0] >= 10:
        if arg1 + stor454 < stor454:
            revert with 0, 'SafeMath: addition overflow'
        stor454 += arg1
    if address(sub_43fff4aaAddress):
        stor351 = 1
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    else:
        if not address(sub_43fff4aaAddress):
            stor351 = 1
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        else:
            if not sub_3dfd2221Address:
                stor351 = 1
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            else:
                if not roleAdmin['FARM_OP_ROLE'][1][address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                63,
                                0x644661726d4f70657261746f723a206d7573742068617665204641524d5f4f505f524f4c4520746f20646973747269627574652072657761726420746f6b65,
                                mem[227 len 1]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                57,
                                0x73616d6f756e742065786365656473206f70742062616c616e63652c636f6e746163742061646d696e20746f20676574206d6f7265204f5054,
                                mem[221 len 7]
                require ext_code.size(sub_3dfd2221Address)
                staticcall sub_3dfd2221Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                98,
                                0x6c616d6f756e742065786365656473206661726d2d6f7027732072657761726420746f6b656e27732062616c616e63652c706c65617365206465706f7369742072657761726420746f6b656e20746f207468697320636f6e74726163742066697273,
                                mem[262 len 30]
                require ext_code.size(sub_3dfd2221Address)
                staticcall sub_3dfd2221Address.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(sub_43fff4aaAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_3dfd2221Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), Mask(224, 32, arg1 + ext_call.return_data[0]) >> 32
                mem[352 len 4] = 0
                call sub_3dfd2221Address with:
                   funct uint32(stor457)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 + ext_call.return_data[0]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), arg1 + ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor457):
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(address(sub_43fff4aaAddress))
                    call address(sub_43fff4aaAddress).0x18c7ea33 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor351 = 1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                    mem[326 len 26],
                                    0,
                                    Mask(16, -256, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[326 len 26], 0) << 256
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
                    require ext_code.size(address(sub_43fff4aaAddress))
                    call address(sub_43fff4aaAddress).0x18c7ea33 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor351 = 1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                    mem[ceil32(return_data.size) + 327 len 30],
                                    mem[ceil32(return_data.size) + 387 len 2]
    ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 101))))
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x65ddf252: arg1, msg.sender, 0
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
    if stor351 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor351 = 2
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if stor452[address(arg1)] >= 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65796f7520617265206e6f7420616c6c6f77656420746f206d6f766520636f696e73206174,
                    mem[201 len 27]
    if stor452[address(arg2)] >= 10:
        if arg3 + stor454 < stor454:
            revert with 0, 'SafeMath: addition overflow'
        stor454 += arg3
    if address(sub_43fff4aaAddress) != arg2:
        stor351 = 1
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
        emit 0x65ddf252: arg3, arg1, arg2
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if not address(sub_43fff4aaAddress):
            stor351 = 1
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
            emit 0x65ddf252: arg3, arg1, arg2
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not sub_3dfd2221Address:
                stor351 = 1
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
                emit 0x65ddf252: arg3, arg1, arg2
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if not roleAdmin['FARM_OP_ROLE'][1][address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                63,
                                0x644661726d4f70657261746f723a206d7573742068617665204641524d5f4f505f524f4c4520746f20646973747269627574652072657761726420746f6b65,
                                mem[227 len 1]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                57,
                                0x73616d6f756e742065786365656473206f70742062616c616e63652c636f6e746163742061646d696e20746f20676574206d6f7265204f5054,
                                mem[221 len 7]
                require ext_code.size(sub_3dfd2221Address)
                staticcall sub_3dfd2221Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                98,
                                0x6c616d6f756e742065786365656473206661726d2d6f7027732072657761726420746f6b656e27732062616c616e63652c706c65617365206465706f7369742072657761726420746f6b656e20746f207468697320636f6e74726163742066697273,
                                mem[262 len 30]
                require ext_code.size(sub_3dfd2221Address)
                staticcall sub_3dfd2221Address.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(sub_43fff4aaAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_3dfd2221Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), Mask(224, 32, arg3 + ext_call.return_data[0]) >> 32
                mem[352 len 4] = 0
                call sub_3dfd2221Address with:
                   funct uint32(stor457)
                     gas gas_remaining wei
                    args Mask(224, 32, arg3 + ext_call.return_data[0]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), arg3 + ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor457):
                        revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(address(sub_43fff4aaAddress))
                    call address(sub_43fff4aaAddress).0x18c7ea33 with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor351 = 1
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[330 len 22],
                                    0,
                                    Mask(48, -256, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[330 len 22], 0) << 256
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    emit 0x65ddf252: arg3, arg1, arg2
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[428 len 24],
                                    mem[476 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[556 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[554 len 30]
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
                    require ext_code.size(address(sub_43fff4aaAddress))
                    call address(sub_43fff4aaAddress).0x18c7ea33 with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor351 = 1
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[ceil32(return_data.size) + 331 len 26],
                                    mem[ceil32(return_data.size) + 383 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    emit 0x65ddf252: arg3, arg1, arg2
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 429 len 24],
                                    mem[ceil32(return_data.size) + 477 len 8]
                    if not arg1:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[ceil32(return_data.size) + 557 len 28]
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[ceil32(return_data.size) + 555 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if stor351 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor351 = 2
    if paused:
        revert with 0, 32, 42, 0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[302 len 22]
    if stor452[address(arg1)] >= 10:
        revert with 0, 32, 37, 0x65796f7520617265206e6f7420616c6c6f77656420746f206d6f766520636f696e73206174, mem[297 len 27]
    if stor452[0] < 10:
        if address(sub_43fff4aaAddress):
            stor351 = 1
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            if not address(sub_43fff4aaAddress):
                stor351 = 1
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
            else:
                if not sub_3dfd2221Address:
                    stor351 = 1
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                else:
                    if not roleAdmin['FARM_OP_ROLE'][1][address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    63,
                                    0x644661726d4f70657261746f723a206d7573742068617665204641524d5f4f505f524f4c4520746f20646973747269627574652072657761726420746f6b65,
                                    mem[323 len 1]
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x73616d6f756e742065786365656473206f70742062616c616e63652c636f6e746163742061646d696e20746f20676574206d6f7265204f5054,
                                    mem[317 len 7]
                    require ext_code.size(sub_3dfd2221Address)
                    staticcall sub_3dfd2221Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    98,
                                    0x6c616d6f756e742065786365656473206661726d2d6f7027732072657761726420746f6b656e27732062616c616e63652c706c65617365206465706f7369742072657761726420746f6b656e20746f207468697320636f6e74726163742066697273,
                                    mem[358 len 30]
                    require ext_code.size(sub_3dfd2221Address)
                    staticcall sub_3dfd2221Address.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(sub_43fff4aaAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(sub_3dfd2221Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), Mask(224, 32, arg2 + ext_call.return_data[0]) >> 32
                    mem[448 len 4] = 0
                    call sub_3dfd2221Address with:
                       funct uint32(stor457)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 + ext_call.return_data[0]) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
                        require ext_code.size(address(sub_43fff4aaAddress))
                        call address(sub_43fff4aaAddress).0x18c7ea33 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor351 = 1
                        if arg2 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[422 len 26],
                                        0,
                                        Mask(16, -256, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[422 len 26], 0) << 256
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        require ext_code.size(address(sub_43fff4aaAddress))
                        call address(sub_43fff4aaAddress).0x18c7ea33 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor351 = 1
                        if arg2 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 423 len 30],
                                        mem[ceil32(return_data.size) + 483 len 2]
    else:
        if arg2 + stor454 < stor454:
            revert with 0, 'SafeMath: addition overflow'
        stor454 += arg2
        if address(sub_43fff4aaAddress):
            stor351 = 1
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            if not address(sub_43fff4aaAddress):
                stor351 = 1
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
            else:
                if not sub_3dfd2221Address:
                    stor351 = 1
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                else:
                    if not roleAdmin['FARM_OP_ROLE'][1][address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    63,
                                    0x644661726d4f70657261746f723a206d7573742068617665204641524d5f4f505f524f4c4520746f20646973747269627574652072657761726420746f6b65,
                                    mem[323 len 1]
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    57,
                                    0x73616d6f756e742065786365656473206f70742062616c616e63652c636f6e746163742061646d696e20746f20676574206d6f7265204f5054,
                                    mem[317 len 7]
                    require ext_code.size(sub_3dfd2221Address)
                    staticcall sub_3dfd2221Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    98,
                                    0x6c616d6f756e742065786365656473206661726d2d6f7027732072657761726420746f6b656e27732062616c616e63652c706c65617365206465706f7369742072657761726420746f6b656e20746f207468697320636f6e74726163742066697273,
                                    mem[358 len 30]
                    require ext_code.size(sub_3dfd2221Address)
                    staticcall sub_3dfd2221Address.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(sub_43fff4aaAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(sub_3dfd2221Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor457), uint32(stor457), Mask(224, 32, arg2 + ext_call.return_data[0]) >> 32
                    mem[448 len 4] = 0
                    mem[420 len 0] = 0
                    call sub_3dfd2221Address with:
                       funct uint32(stor457)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 + ext_call.return_data[0]) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
                        require ext_code.size(address(sub_43fff4aaAddress))
                        call address(sub_43fff4aaAddress).0x18c7ea33 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor351 = 1
                        if arg2 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[422 len 26],
                                        0,
                                        Mask(16, -256, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[422 len 26], 0) << 256
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                        require ext_code.size(address(sub_43fff4aaAddress))
                        call address(sub_43fff4aaAddress).0x18c7ea33 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor351 = 1
                        if arg2 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        34,
                                        0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                        mem[ceil32(return_data.size) + 423 len 30],
                                        mem[ceil32(return_data.size) + 483 len 2]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 101))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}



}
