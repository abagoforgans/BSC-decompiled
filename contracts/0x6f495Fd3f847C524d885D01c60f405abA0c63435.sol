contract main {




// =====================  Runtime code  =====================


#
#  - sub_0cfaeb71(?)
#
const sub_2fc1f47b(?) = 610

const sub_323e3fc1(?) = 500

const sub_441c4ab7(?) = 830

const sub_57d5a400(?) = 29166 * 10^13

const sub_6907fee3(?) = 5

const sub_77eb8e9c(?) = 5

const sub_97c75e59(?) = 1

const sub_9e885c5c(?) = 5

const sub_b11c8992(?) = (50925 * 10^9 * 24 * 3600)

const sub_b8d898ab(?) = 24166 * 10^13

const sub_c0bd7489(?) = 3

const sub_cb1704ef(?) = 0

const sub_d45615fa(?) = 0

const sub_e761f821(?) = 9

const sub_f9f70121(?) = 1000

const sub_fa699c3d(?) = 15 * 10^16


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
address redemptionAddress;
uint256 PRESALE_START_TIMESTAMP;
uint256 PRESALE_END_TIMESTAMP;
uint16 sub_94f90cca;
mapping of uint8 stor6;
mapping of uint256 prices;
mapping of uint16 sub_06eafa0c;
mapping of uint16 sub_5c5cf0ac;
mapping of uint256 sub_cc615932;
mapping of uint256 sub_4a7cf252;
mapping of uint16 sub_91ded6ca;
uint8 stor13;
uint256 stor3BE6;
uint16 stor625B;
uint256 stor825E;
uint16 stor82C9;
uint16 stor9123;
uint256 storA856;
uint256 storBCDD;
uint256 storF1F3;
uint256 storF350;

function sub_06eafa0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_06eafa0c[arg1]
}

function sub_0ad8f4a1(?) {
    return bool(stor1[msg.sender])
}

function isAddressWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function PRESALE_START_TIMESTAMP() {
    return PRESALE_START_TIMESTAMP
}

function sub_4a7cf252(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_4a7cf252[arg1]
}

function redemptionAddress() {
    return redemptionAddress
}

function whitelistEnabled() {
    return bool(uint8(stor0.field_160))
}

function sub_5c5cf0ac(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_5c5cf0ac[arg1]
}

function paused() {
    return bool(stor13)
}

function prices(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return prices[arg1]
}

function owner() {
    return owner
}

function sub_91ded6ca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    return sub_91ded6ca[address(arg1)][arg2 << 248]
}

function sub_94f90cca(?) {
    return sub_94f90cca
}

function PRESALE_END_TIMESTAMP() {
    return PRESALE_END_TIMESTAMP
}

function sub_bb7195b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return bool(stor6[arg1])
}

function sub_c52597a4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    return sub_91ded6ca[arg1][arg2]
}

function sub_cc615932(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_cc615932[arg1]
}

function _fallback() payable {
    revert
}

function sub_fd291f8d(?) {
    return Array(len=4, data=prices[1], stor3BE6, storBCDD, storF1F3)
}

function sub_20982685(?) {
    return Array(len=4, data=sub_06eafa0c[1], stor625B, stor9123, stor82C9)
}

function sub_f1801c75(?) {
    return Array(len=4, data=sub_cc615932[1], storA856, storF350, stor825E)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRedemptionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    redemptionAddress = arg1
}

function claimBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeWhitelistStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    if not arg1:
        emit WhitelistDisabled()
    else:
        emit WhitelistEnabled()
}

function setTypePrice(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[arg1 << 248]:
        revert with 0, 'Given type is not valid'
    if arg2 <= 0:
        revert with 0, 'New price must be higher than 0'
    prices[arg1 << 248] = arg2
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

function sub_fc06d549(?) {
    mem[128] = sub_91ded6ca[msg.sender][1]
    mem[160] = sub_91ded6ca[msg.sender][3]
    mem[192] = sub_91ded6ca[msg.sender][5]
    mem[224] = sub_91ded6ca[msg.sender][9]
    mem[256] = 32
    idx = 0
    s = 320
    t = 128
    while idx < 4:
        mem[s] = mem[t + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=4, data=mem[320 len 128])
}

function claimERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5c9ee326(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if redemptionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the redemption address'
    if stor13:
        revert with 0, 'Pausable: paused'
    if not stor6[arg2 << 248]:
        revert with 0, 'Given type is not valid'
    if sub_91ded6ca[address(arg1)][arg2 << 248] < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You dont have NFTs of this type to redeem'
    if 1 > sub_91ded6ca[address(arg1)][arg2 << 248]:
        revert with 0, 1
    if sub_91ded6ca[address(arg1)][arg2 << 248] < 1:
        revert with 0, 17
    sub_91ded6ca[address(arg1)][arg2 << 248] = uint16(sub_91ded6ca[address(arg1)][arg2 << 248] - 1)
    emit 0x44602add: uint8(arg2), address(arg1)
}

function sub_a8d9bb77(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = bool(cd[36])
        emit Whitelisted(bool(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6b5ff3fa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0 > -sub_91ded6ca[address(arg1)][1] + 65535:
        revert with 0, 17
    if sub_91ded6ca[address(arg1)][1] < 0:
        revert with 0, 1
    if sub_91ded6ca[address(arg1)][1] > -sub_91ded6ca[address(arg1)][3] + 65535:
        revert with 0, 17
    if uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1]) < sub_91ded6ca[address(arg1)][1]:
        revert with 0, 1
    if uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1]) > -sub_91ded6ca[address(arg1)][5] + 65535:
        revert with 0, 17
    if uint16(sub_91ded6ca[address(arg1)][5] + uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1])) < uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1]):
        revert with 0, 1
    if uint16(sub_91ded6ca[address(arg1)][5] + uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1])) > -sub_91ded6ca[address(arg1)][9] + 65535:
        revert with 0, 17
    if uint16(sub_91ded6ca[address(arg1)][9] + uint16(sub_91ded6ca[address(arg1)][5] + uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1]))) < uint16(sub_91ded6ca[address(arg1)][5] + uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1])):
        revert with 0, 1
    return uint16(sub_91ded6ca[address(arg1)][9] + uint16(sub_91ded6ca[address(arg1)][5] + uint16(sub_91ded6ca[address(arg1)][3] + sub_91ded6ca[address(arg1)][1])))
}

function sub_5029f014(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(stor0.field_160):
        if not stor1[msg.sender]:
            revert with 0, 'You are not in the whitelist'
    if block.timestamp < PRESALE_START_TIMESTAMP:
        revert with 0, 'Presale has not started'
    if block.timestamp > PRESALE_END_TIMESTAMP:
        revert with 0, 'Presale ended'
    if stor13:
        revert with 0, 'Pausable: paused'
    if not stor6[arg1 << 248]:
        revert with 0, 'Given type is not valid'
    if msg.value < prices[arg1 << 248]:
        revert with 0, 'Not enough BNB'
    if 0 > -sub_91ded6ca[address(msg.sender)][1] + 65535:
        revert with 0, 17
    if sub_91ded6ca[address(msg.sender)][1] < 0:
        revert with 0, 1
    if sub_91ded6ca[address(msg.sender)][1] > -sub_91ded6ca[address(msg.sender)][3] + 65535:
        revert with 0, 17
    if uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]) < sub_91ded6ca[address(msg.sender)][1]:
        revert with 0, 1
    if uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]) > -sub_91ded6ca[address(msg.sender)][5] + 65535:
        revert with 0, 17
    if uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1])) < uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]):
        revert with 0, 1
    if uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1])) > -sub_91ded6ca[address(msg.sender)][9] + 65535:
        revert with 0, 17
    if uint16(sub_91ded6ca[address(msg.sender)][9] + uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]))) < uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1])):
        revert with 0, 1
    if uint16(sub_91ded6ca[address(msg.sender)][9] + uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]))) > 65534:
        revert with 0, 17
    if uint16(uint16(sub_91ded6ca[address(msg.sender)][9] + uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]))) + 1) < uint16(sub_91ded6ca[address(msg.sender)][9] + uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]))):
        revert with 0, 1
    if uint16(uint16(sub_91ded6ca[address(msg.sender)][9] + uint16(sub_91ded6ca[address(msg.sender)][5] + uint16(sub_91ded6ca[address(msg.sender)][3] + sub_91ded6ca[address(msg.sender)][1]))) + 1) > sub_94f90cca:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have reached the purchasing limit of this NFT'
    if sub_cc615932[arg1 << 248] > -2:
        revert with 0, 17
    if sub_cc615932[arg1 << 248] + 1 > sub_06eafa0c[arg1 << 248]:
        revert with 0, 'This NFT type is sold out'
    if msg.value < prices[arg1 << 248]:
        revert with 0, 17
    call msg.sender with:
       value msg.value - prices[arg1 << 248] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_91ded6ca[msg.sender][arg1 << 248] > 65534:
        revert with 0, 17
    if uint16(sub_91ded6ca[msg.sender][arg1 << 248] + 1) < sub_91ded6ca[msg.sender][arg1 << 248]:
        revert with 0, 1
    sub_91ded6ca[msg.sender][arg1 << 248] = uint16(sub_91ded6ca[msg.sender][arg1 << 248] + 1)
    if sub_cc615932[arg1 << 248] > -2:
        revert with 0, 17
    sub_cc615932[arg1 << 248]++
    emit 0x87ce20dc: uint8(arg1), msg.sender
}



}
