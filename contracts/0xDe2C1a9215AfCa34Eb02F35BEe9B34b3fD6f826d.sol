contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 192
uint32 stor0;
uint32 sub_d28a7030; offset 160
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
mapping of struct sub_6d4f951a;
mapping of uint8 stor7;
array of uint256 sub_920d56e1;
address stor9;
address stor10;
address stor11;

function sub_6d4f951a(?) payable {
    require calldata.size - 4 >= 32
    return sub_6d4f951a[arg1].field_0, 
           sub_6d4f951a[arg1].field_0,
           sub_6d4f951a[arg1].field_0,
           sub_6d4f951a[arg1].field_0,
           sub_6d4f951a[arg1].field_232,
           bool(sub_6d4f951a[arg1].field_240),
           sub_6d4f951a[arg1].field_256,
           sub_6d4f951a[arg1].field_512
}

function getOwner() payable {
    return owner
}

function sub_920d56e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_920d56e1.length
    return sub_920d56e1[arg1]
}

function sub_d28a7030(?) payable {
    return sub_d28a7030
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function sub_ebf7ebae(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1 = arg1
}

function setMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3 = arg1
}

function setPlatformFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2 = arg1
}

function setPlatformWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor4 = arg1
}

function sub_55dfa7a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor5 = address(arg1)
}

function sub_6868c1e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint8(stor0.field_192) = uint8(arg1)
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function setManager(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor7[address(arg1)] = uint8(arg2)
}

function approve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor7[msg.sender]) != 1:
        revert with 0, 'Caller is not manager'
    if not sub_6d4f951a[arg1].field_256:
        revert with 0, 'Invalid asset'
    if sub_6d4f951a[arg1].field_240:
        revert with 0, 'Item already approved'
    sub_6d4f951a[arg1].field_240 = 1
    sub_6d4f951a[arg1].field_512 = sub_920d56e1.length
    sub_920d56e1.length++
    sub_920d56e1[sub_920d56e1.length] = arg1
}

function remove(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor7[msg.sender]) != 1:
        revert with 0, 'Caller is not manager'
    if sub_920d56e1.length:
        if sub_920d56e1.length < 1:
            revert with 0, 17
        if arg1 < sub_920d56e1.length - 1:
            if sub_920d56e1.length < 1:
                revert with 0, 17
            if sub_920d56e1.length - 1 >= sub_920d56e1.length:
                revert with 0, 50
            if arg1 >= sub_920d56e1.length:
                revert with 0, 50
            sub_920d56e1[arg1] = sub_920d56e1[sub_920d56e1.length]
            sub_6d4f951a[stor8[arg1]].field_512 = arg1
        if not sub_920d56e1.length:
            revert with 0, 49
        sub_920d56e1[sub_920d56e1.length] = 0
        sub_920d56e1.length--
}

function sub_addfe74e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    if uint8(arg1) > uint8(stor0.field_192):
        revert with 0, 'Invalid asset amount'
    if arg2 < stor3:
        revert with 0, 'Price is too low'
    if 65 * 10^6 > -sub_d28a7030 + test266151307():
        revert with 0, 17
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_6d4f951a[uint32(stor0.field_0)].field_0 = msg.sender
    sub_6d4f951a[uint32(stor0.field_0)].field_160 = uint32(sub_d28a7030 + 65 * 10^6)
    sub_6d4f951a[uint32(stor0.field_0)].field_192 = uint32(block.timestamp)
    sub_6d4f951a[uint32(stor0.field_0)].field_224 = uint8(arg1)
    sub_6d4f951a[uint32(stor0.field_0)].field_232 = 0
    sub_6d4f951a[uint32(stor0.field_0)].field_240 = 0
    sub_6d4f951a[uint32(stor0.field_0)].field_256 = 0
    sub_6d4f951a[uint32(stor0.field_0)].field_256 = 10^18 * arg2
    sub_6d4f951a[uint32(stor0.field_0)].field_512 = 0
    if sub_d28a7030 > 4294967294:
        revert with 0, 17
    sub_d28a7030 = uint32(sub_d28a7030 + 1)
    return sub_d28a7030
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor9 != arg3:
        revert with 0, 'Invalid token'
    if sub_6d4f951a[mem[128]].field_224 <= sub_6d4f951a[mem[128]].field_232:
        revert with 0, 'Max amount reached for this asset'
    if sub_6d4f951a[mem[128]].field_256 != arg2:
        revert with 0, 'Invalid approval value'
    if sub_6d4f951a[mem[128]].field_256 and stor1 > -1 / sub_6d4f951a[mem[128]].field_256:
        revert with 0, 17
    if sub_6d4f951a[mem[128]].field_256 and stor2 > -1 / sub_6d4f951a[mem[128]].field_256:
        revert with 0, 17
    if sub_6d4f951a[mem[128]].field_256 < sub_6d4f951a[mem[128]].field_256 * stor1 / 100:
        revert with 0, 17
    if sub_6d4f951a[mem[128]].field_256 - (sub_6d4f951a[mem[128]].field_256 * stor1 / 100) < sub_6d4f951a[mem[128]].field_256 * stor2 / 100:
        revert with 0, 17
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), sub_6d4f951a[mem[128]].field_0, sub_6d4f951a[mem[128]].field_256 - (sub_6d4f951a[mem[128]].field_256 * stor1 / 100) - (sub_6d4f951a[mem[128]].field_256 * stor2 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Creator transfer fail'
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), stor4, sub_6d4f951a[mem[128]].field_256 * stor2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Fee transfer fail'
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), stor5, sub_6d4f951a[mem[128]].field_256 * stor1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Fee transfer fail'
    if sub_6d4f951a[mem[128]].field_232 > 254:
        revert with 0, 17
    sub_6d4f951a[mem[128]].field_232 = uint8(sub_6d4f951a[mem[128]].field_232 + 1)
    if sub_6d4f951a[mem[128]].field_224 == sub_6d4f951a[mem[128]].field_232:
        if sub_920d56e1.length:
            if sub_920d56e1.length < 1:
                revert with 0, 17
            if sub_6d4f951a[mem[128]].field_512 < sub_920d56e1.length - 1:
                if sub_920d56e1.length < 1:
                    revert with 0, 17
                if sub_920d56e1.length - 1 >= sub_920d56e1.length:
                    revert with 0, 50
                if sub_6d4f951a[mem[128]].field_512 >= sub_920d56e1.length:
                    revert with 0, 50
                sub_920d56e1[stor6[mem[128]].field_512] = sub_920d56e1[sub_920d56e1.length]
                sub_6d4f951a[stor8[sub_6d4f951a[mem[128]].field_512]].field_512 = sub_6d4f951a[mem[128]].field_512
            if not sub_920d56e1.length:
                revert with 0, 49
            sub_920d56e1[sub_920d56e1.length] = 0
            sub_920d56e1.length--
    call stor11.mint(address arg1, uint32 arg2, uint256 arg3, uint32 arg4) with:
         gas gas_remaining wei
        args address(arg1), 60, sub_6d4f951a[mem[128]].field_256, sub_6d4f951a[mem[128]].field_160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NFT Mint fail'
    return 1
}



}
