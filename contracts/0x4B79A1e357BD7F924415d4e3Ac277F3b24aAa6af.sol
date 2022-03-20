contract main {




// =====================  Runtime code  =====================


const sub_ba91c203(?) = 4


mapping of uint8 stor0;
uint8 stor1;
uint8 stor1; offset 168
uint128 stor1; offset 168
address owner; offset 8
address teamWalletAddress;
address sub_86c2ef68Address;
mapping of uint8 stor4;
mapping of struct sub_869be2a8;
mapping of uint256 sub_b4fc0610;
mapping of uint256 sub_b0aee7a1;

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor0[address(arg1)])
}

function teamWallet() {
    return teamWalletAddress
}

function paused() {
    return bool(uint8(stor1.field_0))
}

function sub_854218d4(?) {
    return bool(uint8(stor1.field_168))
}

function sub_869be2a8(?) {
    require calldata.size - 4 >= 32
    return sub_869be2a8[arg1].field_0, sub_869be2a8[arg1].field_256, sub_869be2a8[arg1].field_512, sub_869be2a8[arg1].field_768
}

function sub_86c2ef68(?) {
    return sub_86c2ef68Address
}

function owner() {
    return owner
}

function sub_b0aee7a1(?) {
    require calldata.size - 4 >= 32
    return sub_b0aee7a1[arg1]
}

function sub_b4fc0610(?) {
    require calldata.size - 4 >= 64
    return sub_b4fc0610[arg1][arg2]
}

function sub_df214d3c(?) {
    require calldata.size - 4 >= 64
    return bool(stor4[arg1][arg2])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_43a1696c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_869be2a8[arg1 << 248].field_512 = arg2
}

function sub_65afccfd(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[arg1 << 248][address(arg2)] = uint8(arg3)
}

function sub_6681d4a4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
}

function setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    teamWalletAddress = arg1
    emit 0x4a18a373: arg1
}

function sub_2e6c99de(?) {
    call teamWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3a63c9ba(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(cd[4] << 248, 4)
        stor4[cd[4] << 248][address(cd[((32 * idx) + cd[36] + 36)])] = uint8(bool(cd[68]))
        idx = idx + 1
        continue 
}

function getStage() {
    if not uint8(stor1.field_168):
        idx = 1
        while uint8(idx) < 5:
            mem[0] = uint8(idx)
            mem[32] = 5
            if block.timestamp < sub_869be2a8[idx << 248].field_512:
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 7
            if sub_b0aee7a1[idx << 248] >= sub_869be2a8[idx << 248].field_768:
                idx = idx + 1
                continue 
            return uint8(idx)
        return 0
    if block.timestamp < sub_869be2a8[4].field_512:
        return 0
    if sub_b0aee7a1[4] >= sub_869be2a8[4].field_768:
        return 0
    return 4
}

function renouncePauser() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function pause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor1.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if not uint8(stor1.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor1.field_0) = 0
    emit Unpaused(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor0[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}



}
