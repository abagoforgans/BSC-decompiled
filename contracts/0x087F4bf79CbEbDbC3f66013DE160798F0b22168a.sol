contract main {




// =====================  Runtime code  =====================


const sub_a4d19feb(?) = 0x82db594318110a04b6349ce48645aa69f0892751bc893d15e61d9e2b9c4630f5

const ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint256 count;
mapping of address sub_e17640f4;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 price;
uint256 min;
uint256 max;
uint256 sub_a48cf346;
uint256 sub_e287342a;
uint256 sub_44bb8b3e;
uint256 sub_964fc42a;
uint256 weiRaised;
uint256 tokenSold;
uint256 vesting;
uint8 stor26; offset 160
uint128 stor26; offset 160
address walletAddress;
mapping of uint256 stor27;
mapping of uint256 stor28;
mapping of uint256 tokensBy;
mapping of uint256 sub_900e6d47;
mapping of uint8 stor31;
array of address buyers;
mapping of uint8 stor33;
uint8 isPublicSale;
address stor34; offset 8

function count() {
    return count
}

function getWallet() {
    if stor34 != msg.sender:
        revert with 0, 'Presale: must have admin role'
    return walletAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_512
}

function isBuyer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor33[arg1])
}

function getMax() {
    return max
}

function weiRaised() {
    return weiRaised
}

function getWeiRaised() {
    return weiRaised
}

function sub_44bb8b3e(?) {
    if stor34 != msg.sender:
        revert with 0, 'Presale: must have admin role'
    return sub_44bb8b3e
}

function tokenSold() {
    return tokenSold
}

function sub_7aa26309(?) {
    if stor34 != msg.sender:
        revert with 0, 'Presale: must have admin role'
    return bool(stor31[address(msg.sender)])
}

function sub_887df6d9(?) {
    return bool(isPublicSale)
}

function sub_900e6d47(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_900e6d47[arg1]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getTokenSold() {
    return tokenSold
}

function sub_964fc42a(?) {
    return sub_964fc42a
}

function getPrice() {
    return price
}

function sub_a48cf346(?) {
    return sub_a48cf346
}

function isPublicSale() {
    return bool(isPublicSale)
}

function getVesting() {
    return vesting
}

function getMin() {
    return min
}

function tokensByAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokensBy[arg1]
}

function sub_e17640f4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e17640f4[arg1]
}

function sub_e287342a(?) {
    if stor34 != msg.sender:
        revert with 0, 'Presale: must have admin role'
    return sub_e287342a
}

function buyers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < buyers.length
    return buyers[arg1]
}

function _fallback() payable {
    revert
}

function sub_55cd6194(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 / 10^18)
}

function sub_bcac1ef8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_a48cf346:
        revert with 'NH{q', 18
    return (arg1 / sub_a48cf346)
}

function sub_3cdf706f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0, 'Presale: must have admin role'
    sub_44bb8b3e = arg1
}

function sub_bcdae7e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0, 'Presale: must have admin role'
    sub_e287342a = arg1
}

function start() {
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to start'
    Mask(96, 0, stor26.field_160) = 1
}

function pause() {
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to pause/unpause'
    Mask(96, 0, stor26.field_160) = 0
}

function unpause() {
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to pause/unpause'
    Mask(96, 0, stor26.field_160) = 1
}

function setMin(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to set min'
    min = arg1
}

function setMax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to add new admins'
    max = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to add new admins'
    stor34 = arg1
}

function sub_a283c42c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_a48cf346:
        revert with 'NH{q', 18
    if arg1 / sub_a48cf346 and 10^18 > -1 / arg1 / sub_a48cf346:
        revert with 'NH{q', 17
    return (10^18 * arg1 / sub_a48cf346)
}

function getSelfBalance() {
    if not stor33[address(msg.sender)]:
        revert with 0, 'Presale: has not bought yet'
    if stor27[address(msg.sender)] > -stor28[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    return (stor27[address(msg.sender)] + stor28[address(msg.sender)])
}

function setPresaleWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale: must have admin role to set the sale wallet'
    walletAddress = arg1
}

function sub_858b9ded(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale: must have admin role to change the total cap'
    sub_964fc42a = arg1
    emit 0x53944961: arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale: must have admin role to make config changes'
    price = arg1
    emit PriceChange(arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function addToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to add erc20tokens'
    sub_e17640f4[stor1] = arg1
    if count > -2:
        revert with 'NH{q', 17
    count++
}

function setIsPublicSale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale: must have admin role to change public/private status'
    isPublicSale = uint8(arg1)
    emit 0xe7c14c92: bool(isPublicSale)
}

function sub_e1c6a1e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Presale: must have admin role to make config changes'
    if arg1 >= 100:
        revert with 0, 'Presale: invalid vesting value'
    vesting = arg1
    emit 0x265d4343: arg1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_3ef30690(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_e17640f4[arg1])
    staticcall sub_e17640f4[arg1].0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to transfer funds'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x635577f6 
}

function sub_e16b9552(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        if not roleAdmin[0x82db594318110a04b6349ce48645aa69f0892751bc893d15e61d9e2b9c4630f5][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to add wallets'
    stor31[address(arg1)] = 1
}

function stringToBytes32(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg1.length:
        return 0
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function releaseLocked() payable {
    mem[64] = 96
    require not msg.value
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to release tokens'
    idx = 0
    while idx < buyers.length:
        mem[0] = buyers[idx]
        mem[32] = 28
        mem[mem[64] + 4] = walletAddress
        mem[mem[64] + 36] = buyers[idx]
        mem[mem[64] + 68] = stor28[stor32[idx]]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, buyers[idx], stor28[stor32[idx]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c85dc5f7(?) payable {
    mem[64] = 96
    require not msg.value
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to release tokens'
    idx = 0
    s = 0
    s = 0
    while idx < buyers.length:
        mem[0] = buyers[idx]
        mem[32] = 27
        mem[mem[64] + 4] = walletAddress
        mem[mem[64] + 36] = buyers[idx]
        mem[mem[64] + 68] = stor27[stor32[idx]]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, buyers[idx], stor27[stor32[idx]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = buyers[idx]
        s = stor27[stor32[idx]]
        continue 
}

function end() payable {
    mem[64] = 96
    require not msg.value
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to pause/unpause'
    Mask(96, 0, stor26.field_160) = 0
    idx = 0
    s = 0
    s = 0
    while idx < buyers.length:
        mem[0] = buyers[idx]
        mem[32] = 27
        mem[mem[64] + 4] = walletAddress
        mem[mem[64] + 36] = buyers[idx]
        mem[mem[64] + 68] = stor27[stor32[idx]]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args walletAddress, buyers[idx], stor27[stor32[idx]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13] == bool(mem[_13])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = buyers[idx]
        s = stor27[stor32[idx]]
        continue 
}

function sub_2a8141e3(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg7.length)) + 97 > test266151307() or ceil32(ceil32(arg7.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg7 + arg7.length + 36 <= calldata.size
    mem[128 len arg7.length] = arg7[all]
    mem[arg7.length + 128] = 0
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        if not roleAdmin[0x82db594318110a04b6349ce48645aa69f0892751bc893d15e61d9e2b9c4630f5][address(msg.sender)].field_0:
            revert with 0, 'Presale: must have admin or config role to add wallets'
    if not roleAdmin[0x82db594318110a04b6349ce48645aa69f0892751bc893d15e61d9e2b9c4630f5][address(arg1)].field_0:
        roleAdmin[0x82db594318110a04b6349ce48645aa69f0892751bc893d15e61d9e2b9c4630f5].field_256 = 0
        roleAdmin[0x82db594318110a04b6349ce48645aa69f0892751bc893d15e61d9e2b9c4630f5][address(arg1)].field_0 = 1
    if arg7.length:
        if not roleAdmin[mem[128]][address(msg.sender)].field_0:
            roleAdmin[mem[128]].field_256 = 0
            roleAdmin[mem[128]][address(msg.sender)].field_0 = 1
    else:
        if not roleAdmin[address(msg.sender)].field_0:
            uint256(roleAdmin.field_256) = 0
            roleAdmin[address(msg.sender)].field_0 = 1
    stor31[address(arg2)] = 1
    stor31[address(arg3)] = 1
    stor31[address(arg4)] = 1
    stor31[address(arg5)] = 1
    stor31[address(arg6)] = 1
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_512][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_512
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_512 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_512][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_512
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_512 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_540e8f52(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: must have admin role to release tokens'
    idx = 0
    s = 0
    s = 0
    t = 0
    while idx < buyers.length:
        if sub_900e6d47[stor32[idx]] and 10^18 > -1 / sub_900e6d47[stor32[idx]]:
            revert with 'NH{q', 17
        if 10^18 * sub_900e6d47[stor32[idx]] and arg1 > -1 / 10^18 * sub_900e6d47[stor32[idx]]:
            revert with 'NH{q', 17
        mem[0] = buyers[idx]
        mem[32] = 29
        if tokensBy[stor32[idx]] and 10^18 > -1 / tokensBy[stor32[idx]]:
            revert with 'NH{q', 17
        if 10^18 * tokensBy[stor32[idx]] >= 10^18 * sub_900e6d47[stor32[idx]] * arg1 / 100 * 10^18:
            mem[mem[64] + 4] = walletAddress
            mem[mem[64] + 36] = buyers[idx]
            mem[mem[64] + 68] = 10^18 * sub_900e6d47[stor32[idx]] * arg1 / 100 * 10^18
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, buyers[idx], 10^18 * sub_900e6d47[stor32[idx]] * arg1 / 100 * 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_20] == bool(mem[_20])
            mem[0] = buyers[idx]
            mem[32] = 29
            if tokensBy[stor32[idx]] < 10^18 * sub_900e6d47[stor32[idx]] * arg1 / 100 * 10^18 / 10^18:
                revert with 'NH{q', 17
            tokensBy[stor32[idx]] -= 10^18 * sub_900e6d47[stor32[idx]] * arg1 / 100 * 10^18 / 10^18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = buyers[idx]
        s = 10^18 * sub_900e6d47[stor32[idx]] * arg1 / 100 * 10^18
        t = 10^18 * sub_900e6d47[stor32[idx]]
        continue 
    return s
}

function buy() payable {
    if not uint8(stor26.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: Presale is not active right now'
    if msg.value and price > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * price > -tokenSold - 1:
        revert with 'NH{q', 17
    if (msg.value * price) + tokenSold >= sub_964fc42a:
        revert with 0, 'Presale: No tokens left'
    if msg.value < min:
        revert with 0, 'Presale: Value out of limits'
    if msg.value > max:
        revert with 0, 'Presale: Value out of limits'
    require ext_code.size(stor3)
    staticcall stor3.0xdd62ed3e with:
            gas gas_remaining wei
           args walletAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= msg.value * price:
        revert with 0, 'Presale: allowance error'
    if not stor33[address(msg.sender)]:
        stor27[address(msg.sender)] = 0
        stor28[address(msg.sender)] = 0
        buyers.length++
        buyers[buyers.length] = msg.sender
        stor33[address(msg.sender)] = 1
    if vesting and msg.value * price > -1 / vesting:
        revert with 'NH{q', 17
    if msg.value * price < vesting * msg.value * price / 100:
        revert with 'NH{q', 17
    if stor27[address(msg.sender)] > (-1 * msg.value * price) + (vesting * msg.value * price / 100) - 1:
        revert with 'NH{q', 17
    stor27[address(msg.sender)] = stor27[address(msg.sender)] + (msg.value * price) - (vesting * msg.value * price / 100)
    if stor28[address(msg.sender)] > -(vesting * msg.value * price / 100) - 1:
        revert with 'NH{q', 17
    stor28[address(msg.sender)] += vesting * msg.value * price / 100
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
    if weiRaised > -msg.value - 1:
        revert with 'NH{q', 17
    weiRaised += msg.value
    if tokenSold > (-1 * msg.value * price) - 1:
        revert with 'NH{q', 17
    tokenSold += msg.value * price
}

function sub_bb9b2dc5(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor26.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: Presale is not active right now'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: Amount can not be Zero (0)'
    require ext_code.size(sub_e17640f4[arg1])
    staticcall sub_e17640f4[arg1].0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Presale: User does not have enough tokens'
    if not sub_a48cf346:
        revert with 'NH{q', 18
    if arg2 / sub_a48cf346 > -tokenSold - 1:
        revert with 'NH{q', 17
    if (arg2 / sub_a48cf346) + tokenSold >= sub_964fc42a:
        revert with 0, 'Presale: No tokens left'
    if arg2 < sub_e287342a:
        revert with 0, 'Presale: Value out of limits'
    if arg2 > sub_44bb8b3e:
        revert with 0, 'Presale: Value out of limits'
    if not sub_a48cf346:
        revert with 'NH{q', 18
    if arg2 / sub_a48cf346 and 10^18 > -1 / arg2 / sub_a48cf346:
        revert with 'NH{q', 17
    require ext_code.size(sub_e17640f4[arg1])
    staticcall sub_e17640f4[arg1].0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 10^18 * arg2 / sub_a48cf346:
        revert with 0, 'Presale: allowance error'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 3 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 4 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if 5 * ext_call.return_data[0] <= 0:
        if not isPublicSale:
            if not stor31[address(msg.sender)]:
                revert with 0, 'Presale: does not have any land'
    if not stor33[address(msg.sender)]:
        stor27[address(msg.sender)] = 0
        stor28[address(msg.sender)] = 0
        buyers.length++
        buyers[buyers.length] = msg.sender
        stor33[address(msg.sender)] = 1
    if vesting and arg2 / sub_a48cf346 > -1 / vesting:
        revert with 'NH{q', 17
    if arg2 / sub_a48cf346 < vesting * arg2 / sub_a48cf346 / 100:
        revert with 'NH{q', 17
    if tokensBy[address(msg.sender)] > -(arg2 / sub_a48cf346) - 1:
        revert with 'NH{q', 17
    tokensBy[address(msg.sender)] += arg2 / sub_a48cf346
    if sub_900e6d47[address(msg.sender)] > -(arg2 / sub_a48cf346) - 1:
        revert with 'NH{q', 17
    sub_900e6d47[address(msg.sender)] += arg2 / sub_a48cf346
    if stor27[address(msg.sender)] > -(arg2 / sub_a48cf346) + (vesting * arg2 / sub_a48cf346 / 100) - 1:
        revert with 'NH{q', 17
    stor27[address(msg.sender)] = stor27[address(msg.sender)] + (arg2 / sub_a48cf346) - (vesting * arg2 / sub_a48cf346 / 100)
    if stor28[address(msg.sender)] > -(vesting * arg2 / sub_a48cf346 / 100) - 1:
        revert with 'NH{q', 17
    stor28[address(msg.sender)] += vesting * arg2 / sub_a48cf346 / 100
    require ext_code.size(sub_e17640f4[arg1])
    call sub_e17640f4[arg1].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, walletAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokenPurchase(arg2 / 10^18, arg2 / sub_a48cf346, msg.sender, msg.sender);
    if weiRaised > -(arg2 / 10^18) - 1:
        revert with 'NH{q', 17
    weiRaised += arg2 / 10^18
    if tokenSold > -(arg2 / sub_a48cf346) - 1:
        revert with 'NH{q', 17
    tokenSold += arg2 / sub_a48cf346
}



}
