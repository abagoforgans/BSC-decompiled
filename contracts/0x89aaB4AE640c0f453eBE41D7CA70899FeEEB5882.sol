contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor8;
mapping of uint8 stor9;
address platformAddress;
address sub_f9f7ad62Address;
mapping of uint8 stor14;
address nonCryptoNFTVaultAddress;
array of uint256 stor17;
uint256 sub_aebc0824;
address stor22;
uint8 sub_6b34d725;
uint256 sub_58616aa0;
mapping of uint8 stor33;
address stor34;

function _supportNft(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function platform() {
    return platformAddress
}

function sub_58616aa0(?) {
    return sub_58616aa0
}

function sub_6b34d725(?) {
    return bool(sub_6b34d725)
}

function nonCryptoNFTVault() {
    return nonCryptoNFTVaultAddress
}

function owner() {
    return owner
}

function sub_aebc0824(?) {
    return sub_aebc0824
}

function sub_e5a99991(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function sub_f9f7ad62(?) {
    return sub_f9f7ad62Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_70d8d157(?) {
    require calldata.size - 4 >= 32
    if stor22 != msg.sender:
        revert with 0, 'only owner'
    stor34 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8809a63b(?) {
    require calldata.size - 4 >= 64
    if stor22 != msg.sender:
        revert with 0, 'only owner'
    stor14[address(arg1)] = 1
    stor33[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5335d72e(?) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[64] = ceil32(arg6.length) + 128
    mem[96] = arg6.length
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    if stor34 != msg.sender:
        revert with 0, 'not authorize'
    mem[ceil32(arg6.length) + 164] = arg3
    require ext_code.size(arg1)
    call arg1.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg3
    mem[ceil32(arg6.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    idx = mem[mem[64]]
    while idx <= ext_call.return_data[32]:
        if arg2 == nonCryptoNFTVaultAddress:
            mem[32] = sha3(idx, 17)
            mem[0] = sha3(address(arg1), sha3(idx, 17))
            stor17[idx][address(arg1)] = (2 * mem[96]) + 1
            t = sha3(sha3(address(arg1), sha3(idx, 17)))
            s = 128
            while mem[96] + 128 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(address(arg1), sha3(idx, 17))) + (Mask(251, 0, mem[96] + 31) >> 5)
            while sha3(sha3(address(arg1), sha3(idx, 17))) + (stor17[idx][address(arg1)].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            _235 = mem[64]
            mem[mem[64] + 64] = arg1
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _237 = mem[96]
            s = 0
            while s < mem[96]:
                mem[mem[64] + s + 128] = mem[s + 128]
                s = s + 32
                continue 
            if not mem[96] % 32:
                mem[mem[64] + 32] = mem[96] + 128
                mem[_237 + _235 + 128] = 0
                emit 0xa25867b3: mem[mem[64] len _237 + _235 + -mem[64] + 192], arg2
            else:
                mem[floor32(mem[96]) + mem[64] + 128] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 160 len mem[96] % 32]
                mem[mem[64] + 32] = floor32(mem[96]) + 160
                mem[floor32(_237) + _235 + 160] = 0
                emit 0xa25867b3: mem[mem[64] len floor32(_237) + _235 + -mem[64] + 224], arg2
        address(stor8[idx][address(arg1)].field_0) = arg4
        mem[0] = arg1
        mem[32] = sha3(idx, 8)
        stor8[idx][address(arg1)].field_256 = arg5
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = 0
        emit 0xea018b69: address(arg2), 64, 0, mem[mem[64] + 96], arg1, idx
        idx = idx + 1
        continue 
    return ext_call.return_data[0], ext_call.return_data[32]
}



}
