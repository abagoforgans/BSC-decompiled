contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_4683c559(?)
#
const sub_4b7e23dc(?) = 'withdraw'

const sub_57256fbd(?) = 'trade'

const sub_88c263b5(?) = 'token whitelist user'

const sub_95e70ce4(?) = 'set feeaccount'

const sub_ba0f1013(?) = 'transfer investor tokens'

const sub_c607da65(?) = 'transfer tokens'

const sub_dce67226(?) = 'change delay'

const sub_eea4e1b6(?) = 'forced'

const sub_f4590d79(?) = 'claim'

const ROLE_ADMIN = 'admin'


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 tokensTotal;
mapping of uint256 balanceOf;
mapping of uint256 sub_48014fc8;
address feeAccount;
uint256 delay;
array of struct stor9;
mapping of uint8 stor99;

function tokensTotal(address arg1) {
    return tokensTotal[arg1]
}

function withdrawn(bytes32 arg1) {
    return bool(stor1[arg1])
}

function sub_48014fc8(?) {
    return sub_48014fc8[arg1]
}

function feeAccount() {
    return feeAccount
}

function delay() {
    return delay
}

function tokenWhitelist(address arg1) {
    return bool(stor3[arg1])
}

function sub_afc441e3(?) {
    return bool(stor2[arg1])
}

function balanceOf(address arg1, address arg2) {
    return balanceOf[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFeeAccount(address arg1) {
    mem[160 len 0] = None
    require stor0[mem[160 len 14]][address(msg.sender)]
    feeAccount = arg1
    emit FeeAccountChanged(arg1);
}

function setDelay(uint256 arg1) {
    mem[160 len 0] = None
    require stor0[mem[160 len 12]][address(msg.sender)]
    require arg1 < 336 * 24 * 3600
    delay = arg1
    emit DelayChanged(arg1);
}

function sub_e5e97c65(?) {
    mem[160 len 0] = None
    require stor[sha3(mem[160 len 12], Mask(64, 96, 'token whitelist user') >> 96, 0)][address(msg.sender)]
    stor3[address(arg1)] = uint8(arg2)
    emit 0x67821d53: address(arg1), arg2
}

function calculateFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg1:
        if arg3:
            return (0 / arg3)
    else:
        if arg2 * arg1 / arg1 == arg2:
            if arg3:
                return (arg2 * arg1 / arg3)
    revert
}

function depositEthers() payable {
    require stor3[0]
    require msg.value + balanceOf[0][address(msg.sender)] >= balanceOf[0][address(msg.sender)]
    balanceOf[0][address(msg.sender)] += msg.value
    require msg.value + tokensTotal[0] >= tokensTotal[0]
    tokensTotal[0] += msg.value
    emit Deposited(0, msg.sender, msg.value, balanceOf[0][address(msg.sender)]);
    return 1
}

function sub_af811af5(?) {
    mem[160 len 0] = None
    require stor[sha3(mem[160 len 8], Mask(128, 64, 'transfer investor tokens') >> 64, 0)][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x8cd98ee3 with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    emit 0xabd2fbf4: msg.sender, address(arg1), address(arg2), arg3
}

function sub_07751d2d(?) {
    mem[160 len 0] = None
    require stor0[mem[160 len 5]][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require tokensTotal[address(arg1)] <= ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args feeAccount, ext_call.return_data[0] - tokensTotal[address(arg1)]
    require ext_call.success
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function depositTokens(address arg1, uint256 arg2) {
    require stor3[address(arg1)]
    require arg2 + balanceOf[address(arg1)][address(msg.sender)] >= balanceOf[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)][address(msg.sender)] += arg2
    require arg2 + tokensTotal[address(arg1)] >= tokensTotal[address(arg1)]
    tokensTotal[address(arg1)] += arg2
    emit Deposited(address(arg1), msg.sender, arg2, balanceOf[address(arg1)][address(msg.sender)]);
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function withdrawRequest(address arg1, uint256 arg2) {
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        idx = (5 * stor9.length) + 5
        while 5 * stor9.length > idx:
            address(stor9[idx].field_0) = 0
            address(stor9[idx].field_256) = 0
            uint256(stor9[idx].field_512) = 0
            uint256(stor9[idx].field_768) = 0
            stor9[idx].field_1024 = 0
            idx = idx + 5
            continue 
    address(stor9[stor9.length].field_0) = msg.sender
    address(stor9[stor9.length].field_256) = arg1
    uint256(stor9[stor9.length].field_512) = arg2
    uint256(stor9[stor9.length].field_768) = block.timestamp
    stor9[stor9.length].field_1024 = 0
    emit 0x5fae34fc: address(arg1), msg.sender, arg2, stor9.length
    return stor9.length
}

function sub_d50a2664(?) {
    mem[160 len 0] = None
    require stor0[mem[160 len 15]][address(msg.sender)]
    require arg7 >= block.timestamp
    require not stor2[address(this.address)][arg1][arg2][arg3][arg4][arg5][arg6][arg7]
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(this.address), arg1, arg2, arg3, arg4, arg5, arg6, arg7)), arg8 << 248, arg9, arg10) 
    require erecover.result
    require address(signer) == arg2
    require arg5 + arg4 >= arg4
    require arg5 + arg4 <= balanceOf[address(arg1)][address(arg2)]
    balanceOf[address(arg1)][address(arg2)] = balanceOf[address(arg1)][address(arg2)] - arg5 - arg4
    require arg5 + balanceOf[address(arg1)][stor7] >= balanceOf[address(arg1)][stor7]
    balanceOf[address(arg1)][stor7] += arg5
    require arg4 + balanceOf[address(arg1)][arg3] >= balanceOf[address(arg1)][arg3]
    balanceOf[address(arg1)][address(arg3)] = arg4 + balanceOf[address(arg1)][arg3]
    emit 0xdbe9c86e: address(arg1), address(arg2), address(arg3), arg4, arg5, arg6
}

function sub_e87078bd(?) {
    mem[160 len 0] = None
    require stor0[mem[160 len 6]][address(msg.sender)]
    emit Forced(address(arg1), address(arg2), arg3);
    require arg3 > 0
    require arg3 >= arg3
    require balanceOf[address(arg1)][address(arg2)] >= arg3
    require arg3 >= arg3
    require arg3 <= balanceOf[address(arg1)][address(arg2)]
    balanceOf[address(arg1)][address(arg2)] -= arg3
    require balanceOf[address(arg1)][stor7] >= balanceOf[address(arg1)][stor7]
    balanceOf[address(arg1)][stor7] = balanceOf[address(arg1)][stor7]
    require arg3 <= tokensTotal[address(arg1)]
    tokensTotal[address(arg1)] -= arg3
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
        require ext_call.success
        require ext_call.return_data[0]
    emit Withdrawn(address(arg1), address(arg2), arg3, balanceOf[address(arg1)][address(arg2)]);
}

function sub_34643b5d(?) {
    mem[160 len 0] = None
    require stor0[mem[160 len 8]][address(msg.sender)]
    require not stor1[this.address][arg1][arg2][arg3][arg4][arg5]
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(this.address, arg1, arg2, arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    require erecover.result
    require address(signer) == arg2
    stor1[this.address][arg1][arg2][arg3][arg4][arg5] = 1
    require arg3 > 0
    require arg4 + arg3 >= arg3
    require balanceOf[address(arg1)][address(arg2)] >= arg4 + arg3
    require arg4 + arg3 >= arg3
    require arg4 + arg3 <= balanceOf[address(arg1)][address(arg2)]
    balanceOf[address(arg1)][address(arg2)] = balanceOf[address(arg1)][address(arg2)] - arg4 - arg3
    require arg4 + balanceOf[address(arg1)][stor7] >= balanceOf[address(arg1)][stor7]
    balanceOf[address(arg1)][stor7] += arg4
    require arg3 <= tokensTotal[address(arg1)]
    tokensTotal[address(arg1)] -= arg3
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
        require ext_call.success
        require ext_call.return_data[0]
    emit Withdrawn(address(arg1), address(arg2), arg3, balanceOf[address(arg1)][address(arg2)]);
}

function sub_dab70e3c(?) {
    require arg1 < stor9.length
    require delay + uint256(stor9[arg1].field_768) >= uint256(stor9[arg1].field_768)
    require delay + uint256(stor9[arg1].field_768) < block.timestamp
    require arg1 < stor9.length
    require not stor9[arg1].field_1024
    require arg1 < stor9.length
    require address(stor9[arg1].field_0) == msg.sender
    require arg1 < stor9.length
    stor9[arg1].field_1024 = 1
    require uint256(stor9[arg1].field_512) > 0
    require uint256(stor9[arg1].field_512) >= uint256(stor9[arg1].field_512)
    require balanceOf[address(stor9[arg1].field_256)][address(stor9[arg1].field_0)] >= uint256(stor9[arg1].field_512)
    require uint256(stor9[arg1].field_512) >= uint256(stor9[arg1].field_512)
    require uint256(stor9[arg1].field_512) <= balanceOf[address(stor9[arg1].field_256)][address(stor9[arg1].field_0)]
    balanceOf[address(stor9[arg1].field_256)][address(stor9[arg1].field_0)] -= uint256(stor9[arg1].field_512)
    require balanceOf[address(stor9[arg1].field_256)][stor7] >= balanceOf[address(stor9[arg1].field_256)][stor7]
    balanceOf[address(stor9[arg1].field_256)][stor7] = balanceOf[address(stor9[arg1].field_256)][stor7]
    require uint256(stor9[arg1].field_512) <= tokensTotal[address(stor9[arg1].field_256)]
    tokensTotal[address(stor9[arg1].field_256)] -= uint256(stor9[arg1].field_512)
    if not address(stor9[arg1].field_256):
        call address(stor9[arg1].field_0) with:
           value uint256(stor9[arg1].field_512) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(address(stor9[arg1].field_256))
        call address(stor9[arg1].field_256).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(stor9[arg1].field_0), uint256(stor9[arg1].field_512)
        require ext_call.success
        require ext_call.return_data[0]
    emit Withdrawn(address(stor9[arg1].field_256), address(stor9[arg1].field_0), uint256(stor9[arg1].field_512), balanceOf[address(stor9[arg1].field_256)][address(stor9[arg1].field_0)]);
}

function adminRemoveRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 192] = 0
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 0
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleRemoved(address rg1, string rg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 0),
                         mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleRemoved(address rg1, string rg2):
                         address(arg1),
                         mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                         mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                         Mask(8 * arg2.length % 32, 0, 0),
                         mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}

function adminAddRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'admin'
    mem[ceil32(arg2.length) + 192 len 0] = None
    mem[ceil32(arg2.length) + 197] = 0
    require stor0[mem[ceil32(arg2.length) + 192 len 5]][address(msg.sender)]
    mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 192] = 0
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)] = 1
    mem[ceil32(arg2.length) + 192] = arg1
    mem[ceil32(arg2.length) + 224] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    if 0 < arg2.length:
        mem[ceil32(arg2.length) + 288] = mem[128]
        mem[ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    if not arg2.length % 32:
        emit RoleAdded(address rg1, string rg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 0),
                       mem[ceil32(arg2.length) + arg2.length + 224 len 64],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit RoleAdded(address rg1, string rg2):
                       address(arg1),
                       mem[ceil32(arg2.length) + 224 len floor32(arg2.length) - (arg2.length % 32)],
                       mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32],
                       Mask(8 * arg2.length % 32, 0, 0),
                       mem[ceil32(arg2.length) + arg2.length + 224 len -(arg2.length % 32) + 96],
}



}
