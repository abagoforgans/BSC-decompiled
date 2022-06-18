contract main {




// =====================  Runtime code  =====================


address owner;
address sub_ff41e8b1Address;
array of struct sub_deb4a4d1;
mapping of uint8 stor3;

function owner() payable {
    return owner
}

function sub_deb4a4d1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_deb4a4d1[arg1].field_0
    return sub_deb4a4d1[arg1][arg2].field_0, sub_deb4a4d1[arg1][arg2].field_256
}

function sub_f6a351f1(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_ff41e8b1(?) payable {
    return sub_ff41e8b1Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function reset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor3[arg1] = 0
}

function sub_12ad7db1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_deb4a4d1[arg1].field_0 = 0
    idx = 0
    while 2 * sub_deb4a4d1[arg1].field_0 > idx:
        sub_deb4a4d1[arg1][idx].field_0 = 0
        sub_deb4a4d1[arg1][idx].field_256 = 0
        idx = idx + 2
        continue 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor3[arg1]:
        revert with 0, 'Already sent'
    idx = 0
    while idx < sub_deb4a4d1[arg1].field_0:
        require idx < sub_deb4a4d1[arg1].field_0
        require idx < sub_deb4a4d1[arg1].field_0
        mem[100] = sub_deb4a4d1[arg1][idx].field_0
        mem[132] = sub_deb4a4d1[arg1][idx].field_256
        require ext_code.size(sub_ff41e8b1Address)
        call sub_ff41e8b1Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_deb4a4d1[arg1][idx].field_0, sub_deb4a4d1[arg1][idx].field_256
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    stor3[arg1] = 1
}

function sub_9ff34af9(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        mem[0] = arg1
        mem[32] = 2
        _21 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_21] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg2.length) + 128]
        mem[_21 + 32] = mem[(32 * idx) + (32 * arg2.length) + 160]
        sub_deb4a4d1[arg1].field_0++
        mem[0] = sha3(arg1, 2)
        sub_deb4a4d1[arg1][sub_deb4a4d1[arg1].field_0].field_0 = mem[_21 + 12 len 20]
        sub_deb4a4d1[arg1][sub_deb4a4d1[arg1].field_0].field_256 = mem[_21 + 32]
        idx = idx + 1
        continue 
}



}
