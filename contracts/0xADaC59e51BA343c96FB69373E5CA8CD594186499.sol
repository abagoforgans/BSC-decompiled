contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_ba9cf912Address;
array of struct stor3;
array of struct stor4;
mapping of struct sub_00ea3212;

function sub_00ea3212(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_256
}

function price(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_512
}

function sub_326130c9(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_0
}

function sub_47176469(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_2048
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_0, 
           sub_00ea3212[arg1].field_256,
           sub_00ea3212[arg1].field_512,
           sub_00ea3212[arg1].field_768,
           sub_00ea3212[arg1].field_1024,
           sub_00ea3212[arg1].field_1280,
           sub_00ea3212[arg1].field_1536,
           sub_00ea3212[arg1].field_1792,
           sub_00ea3212[arg1].field_2048,
           sub_00ea3212[arg1].field_2304
}

function getRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_1536
}

function owner() payable {
    return owner
}

function sub_b9e8a545(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_1280
}

function sub_ba9cf912(?) payable {
    return sub_ba9cf912Address
}

function sub_bc82a0ee(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_768
}

function sub_e7da499d(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_2304
}

function sub_ec14d37d(?) payable {
    require calldata.size - 4 >= 32
    return sub_00ea3212[arg1].field_1024
}

function isCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_3d24d2b0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 * arg2
    return (0xa70c3c40a64e6c51999090b65f67d9240000000000000 / arg1 * arg2)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_850e0863(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_00ea3212[arg1].field_1536 <= 0:
        revert with 0, 'INVALID_OR_RATE'
    sub_00ea3212[arg1].field_1024 = arg2
}

function sub_73cc9a25(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6d2751d9(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function compute(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        return 0
    require arg2
    if arg2 * sub_00ea3212[arg1].field_1536 / arg2 != sub_00ea3212[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg2 * sub_00ea3212[arg1].field_1536 / 10^18)
}

function sub_84362e70(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    stor4.length++
    stor4[stor4.length].field_0 = arg1
}

function removeCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x54526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(arg1)] = 0
}

function getList() payable {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function sub_9101cc65(?) payable {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = uint256(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_572aaa8d(?) payable {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 128] = 0
    if not msg.sender:
        revert with 0, 32, 34, 0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573, mem[(32 * arg6.length) + 230 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0, 'DOES_NOT_HAVE_CREATOR_ROLE'
    if arg1 <= 0:
        revert with 0, 'INVALID_ID'
    require arg5
    require (0 / arg5 * arg3) + (arg2 * arg3)
    if sub_00ea3212[arg1].field_1536 <= 0:
        idx = 0
        while idx < arg6.length:
            require idx < arg6.length
            _61 = mem[(32 * idx) + 128]
            mem[(32 * arg6.length) + 132] = msg.sender
            require ext_code.size(address(_61))
            staticcall address(_61).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(32 * arg6.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require idx < arg6.length
                _67 = mem[(32 * idx) + 128]
                mem[(32 * arg6.length) + 128] = 0x79cc679000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg6.length) + 132] = msg.sender
                mem[(32 * arg6.length) + 164] = ext_call.return_data[0]
                require ext_code.size(address(_67))
                call address(_67).burnFrom(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        stor3.length++
        stor3[stor3.length].field_0 = arg1
    sub_00ea3212[arg1].field_0 = arg2
    sub_00ea3212[arg1].field_256 = arg3
    sub_00ea3212[arg1].field_512 = (0 / arg5) + arg2
    sub_00ea3212[arg1].field_768 = 0
    sub_00ea3212[arg1].field_1024 = arg4
    sub_00ea3212[arg1].field_1280 = 0
    sub_00ea3212[arg1].field_1536 = 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (0 / arg5 * arg3) + (arg2 * arg3)
    sub_00ea3212[arg1].field_1792 = arg5
    sub_00ea3212[arg1].field_2048 = 0
    sub_00ea3212[arg1].field_2304 = 0
}

function sub_90e9014e(?) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0, 'INVALID_ID_OR_RATE'
    if sub_00ea3212[arg1].field_1536 <= 0:
        revert with 0, 'INVALID_ID_OR_RATE'
    if arg3 != arg3:
        revert with 0, 'INVALID_RECIPIENT'
    require ext_code.size(sub_ba9cf912Address)
    call sub_ba9cf912Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERROR_TRANSFER_RDAO'
    if sub_00ea3212[arg1].field_1280 + arg2 < sub_00ea3212[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    sub_00ea3212[arg1].field_1280 += arg2
    if not arg2:
        require ext_code.size(sub_00ea3212[arg1].field_1024)
        call sub_00ea3212[arg1].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_00ea3212[arg1].field_768 < sub_00ea3212[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg2
        if arg2 * sub_00ea3212[arg1].field_1536 / arg2 != sub_00ea3212[arg1].field_1536:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_00ea3212[arg1].field_1024)
        call sub_00ea3212[arg1].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2 * sub_00ea3212[arg1].field_1536 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_00ea3212[arg1].field_768 + (arg2 * sub_00ea3212[arg1].field_1536 / 10^18) < sub_00ea3212[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_00ea3212[arg1].field_768 += arg2 * sub_00ea3212[arg1].field_1536 / 10^18
    require sub_00ea3212[arg1].field_1792
    sub_00ea3212[arg1].field_512 = (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 / sub_00ea3212[arg1].field_1792) + sub_00ea3212[arg1].field_0
    require sub_00ea3212[arg1].field_256 * sub_00ea3212[arg1].field_512
    sub_00ea3212[arg1].field_1536 = 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / sub_00ea3212[arg1].field_256 * sub_00ea3212[arg1].field_512
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'INVALID_ID_OR_RATE'
    if sub_00ea3212[arg1].field_1536 <= 0:
        revert with 0, 'INVALID_ID_OR_RATE'
    if sub_00ea3212[arg1].field_2048 + arg2 < sub_00ea3212[arg1].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    if sub_00ea3212[arg1].field_768 < sub_00ea3212[arg1].field_2048 + arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73534f4c445f49535f4c4553535f5448414e5f57495448445241575f414d4f554e,
                    mem[197 len 31]
    if sub_00ea3212[arg1].field_2048 + arg2 < sub_00ea3212[arg1].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    if sub_00ea3212[arg1].field_2048 + arg2 > sub_00ea3212[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    require sub_00ea3212[arg1].field_1792
    require (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256)
    if 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256)
    require ext_code.size(sub_00ea3212[arg1].field_1024)
    call sub_00ea3212[arg1].field_1024.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERROR_TRANSFER_ESH'
    require ext_code.size(sub_ba9cf912Address)
    call sub_ba9cf912Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg2 / 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERROR_TRANSFER_RDAO'
    sub_00ea3212[arg1].field_2048 += arg2
    if sub_00ea3212[arg1].field_2304 + (10^18 * arg2 / 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256)) < sub_00ea3212[arg1].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    sub_00ea3212[arg1].field_2304 += 10^18 * arg2 / 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256)
    sub_00ea3212[arg1].field_512 = (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792) + sub_00ea3212[arg1].field_0
    sub_00ea3212[arg1].field_1536 = 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / (sub_00ea3212[arg1].field_768 - sub_00ea3212[arg1].field_2048 - arg2 / sub_00ea3212[arg1].field_1792 * sub_00ea3212[arg1].field_256) + (sub_00ea3212[arg1].field_0 * sub_00ea3212[arg1].field_256)
}



}
