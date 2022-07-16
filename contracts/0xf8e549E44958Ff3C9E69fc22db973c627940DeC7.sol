contract main {




// =====================  Runtime code  =====================


#
#  - openBox(uint256 arg1)
#  - sub_ed8e44a7(?)
#  - _fallback()
#
address owner;
address stor2;
uint256 sub_08994549;
uint256 sub_32573101;
uint256 sub_a7b82849;
uint256 sub_9f4db65b;
uint256 sub_0f14715e;
uint256 sub_c492cfa6;
uint256 sub_3b234413;
uint256 boxPrice;
uint8 sub_b5512af4;
uint8 sub_dfd0fb7e; offset 8
uint256 stor11; offset 8
uint256 sub_4a7c01ec;
uint256 stor13;
uint256 stor15;
array of struct stor16;
mapping of uint256 sub_8e30b3a2;
mapping of uint8 stor19;
mapping of uint256 sub_3ec32ab4;
mapping of struct sub_0fc05f06;
mapping of struct stor22;
mapping of struct sub_3c00b3c6;

function sub_08994549(?) {
    return sub_08994549
}

function sub_0f14715e(?) {
    return sub_0f14715e
}

function sub_0fc05f06(?) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'No permissions'
    if arg1 >= sub_a7b82849:
        revert with 0, 'Index out of bounds'
    return sub_0fc05f06[arg1].field_0, 
           address(sub_0fc05f06[arg1].field_256),
           sub_0fc05f06[arg1].field_512,
           sub_0fc05f06[arg1].field_768
}

function sub_32573101(?) {
    return sub_32573101
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function sub_3b234413(?) {
    return sub_3b234413
}

function sub_3c00b3c6(?) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'No permissions'
    if arg1 >= sub_08994549:
        revert with 0, 'Index out of bounds'
    return address(sub_3c00b3c6[arg1].field_0), 
           sub_3c00b3c6[arg1].field_256,
           sub_3c00b3c6[arg1].field_512,
           sub_3c00b3c6[arg1].field_768,
           sub_3c00b3c6[arg1].field_1024
}

function sub_3ec32ab4(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_3ec32ab4[arg1][arg2]
}

function sub_4a7c01ec(?) {
    return sub_4a7c01ec
}

function owner() {
    return owner
}

function sub_8e30b3a2(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_8e30b3a2[arg1][arg2[all]]
}

function sub_9f4db65b(?) {
    return sub_9f4db65b
}

function boxPrice() {
    return boxPrice
}

function sub_a7b82849(?) {
    return sub_a7b82849
}

function sub_b5512af4(?) {
    return bool(sub_b5512af4)
}

function sub_c492cfa6(?) {
    return sub_c492cfa6
}

function sub_dfd0fb7e(?) {
    return bool(sub_dfd0fb7e)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_474a505f(?) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if arg1 >= 100:
        revert with 0, 'Wrong _rate'
    stor13 = arg1
}

function addWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address error'
    stor19[address(arg1)] = 1
}

function sub_b991b944(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if sub_dfd0fb7e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Activity has started  Can not be modified'
    sub_b5512af4 = uint8(bool(arg1))
}

function sub_0da74e28(?) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if sub_dfd0fb7e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Activity has started  Can not be modified'
    if stor15 >= arg1:
        revert with 0, 'index already used'
    stor15 = arg1
}

function setBoxPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if sub_dfd0fb7e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Activity has started  Can not be modified'
    if arg1 % 100:
        revert with 0, 'Price wrong'
    boxPrice = arg1
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

function delWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address error'
    if msg.sender == arg1:
        revert with 0, 'Address error'
    if not stor19[address(arg1)]:
        revert with 0, 'Insufficient Permissions'
    stor19[address(arg1)] = 0
}

function sub_102333a7(?) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if sub_dfd0fb7e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Activity has started  Can not be modified'
    if arg1 <= 0:
        revert with 0, '_number wrong'
    if arg1 > sub_c492cfa6:
        revert with 0, 'Exceeded maximum number'
    sub_4a7c01ec = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if arg2 <= 0:
        revert with 0, 'Wrong amount'
    if not arg1:
        revert with 0, 'Non Destructible Token'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Wrong amount'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_58d2a3fc(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    mem[0] = msg.sender
    if not stor19[msg.sender]:
        revert with 0, 'Insufficient Permissions'
    if not arg1:
        if 1 > !sub_9f4db65b:
            revert with 0, 17
        idx = 0
        while idx < stor16.length:
            mem[32] = 18
            mem[0] = 16
            _23 = mem[64]
            if bool(stor16[idx].field_0):
                if bool(stor16[idx].field_0) == uint255(stor16[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor16[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, stor16[idx].field_0)
                    mem[mem[64] + (uint255(stor16[idx].field_0) * 0.5)] = sha3(sub_9f4db65b + 1, 18)
                    stor[sha3(mem[mem[64] len _23 + (uint255(stor16[idx].field_0) * 0.5) + -mem[64] + 32])] = 0
                else:
                    if bool(stor16[idx].field_0) != 1:
                        mem[0] = sha3(sub_9f4db65b + 1, 18)
                        stor[sha3(mem[mem[64] len -mem[64] + 32])] = 0
                    else:
                        mem[0] = sha3(16) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor16[idx].field_0) * 0.5:
                            mem[s + _23] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_23 + (uint255(stor16[idx].field_0) * 0.5)] = sha3(sub_9f4db65b + 1, 18)
                        stor[sha3(mem[mem[64] len _23 + (uint255(stor16[idx].field_0) * 0.5) + -mem[64] + 32])] = 0
            else:
                if bool(stor16[idx].field_0) == stor16[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor16[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, stor16[idx].field_0)
                    mem[mem[64] + stor16[idx].field_1 % 128] = sha3(sub_9f4db65b + 1, 18)
                    stor[sha3(mem[mem[64] len _23 + stor16[idx].field_1 % 128 + -mem[64] + 32])] = 0
                else:
                    if bool(stor16[idx].field_0) != 1:
                        mem[0] = sha3(sub_9f4db65b + 1, 18)
                        stor[sha3(mem[mem[64] len -mem[64] + 32])] = 0
                    else:
                        mem[0] = sha3(16) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor16[idx].field_1 % 128:
                            mem[s + _23] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_23 + stor16[idx].field_1 % 128] = sha3(sub_9f4db65b + 1, 18)
                        stor[sha3(mem[mem[64] len _23 + stor16[idx].field_1 % 128 + -mem[64] + 32])] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_3b234413 = 0
        sub_c492cfa6 = 0
    else:
        if not sub_4a7c01ec:
            sub_4a7c01ec = 10
        if sub_9f4db65b == -1:
            revert with 0, 17
        sub_9f4db65b++
    stor11 = Mask(248, 0, bool(arg1))
}

function buyBox(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_dfd0fb7e:
        revert with 0, 'Activity has not started'
    if msg.value < boxPrice:
        revert with 0, 'Insufficient amount'
    if msg.sender == arg1:
        revert with 0, 'The inviter cannot be yourself'
    if sub_3b234413 <= 0:
        revert with 0, 'Sold out'
    if sub_3ec32ab4[stor6][msg.sender] >= sub_4a7c01ec:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The maximum number of purchases has been reached'
    if not arg1:
        call this.address with:
           value boxPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x156e29f6 with:
             gas gas_remaining wei
            args msg.sender, stor15, sub_9f4db65b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            if sub_a7b82849 == -1:
                revert with 0, 17
            sub_a7b82849++
            sub_0fc05f06[stor5].field_0 = ext_call.return_data[0]
            address(sub_0fc05f06[stor5].field_256) = arg1
            sub_0fc05f06[stor5].field_512 = 0
            sub_0fc05f06[stor5].field_768 = block.timestamp
    else:
        if boxPrice and stor13 > -1 / boxPrice:
            revert with 0, 17
        if boxPrice:
            if not boxPrice:
                revert with 0, 18
            if boxPrice * stor13 / boxPrice != stor13:
                revert with 0, 1
        if boxPrice * stor13 / 100 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if 100 * boxPrice * stor13 / 100 > !(boxPrice * stor13 % 100):
            revert with 0, 17
        if boxPrice * stor13 != (100 * boxPrice * stor13 / 100) + (boxPrice * stor13 % 100):
            revert with 0, 1
        call arg1 with:
           value boxPrice * stor13 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call this.address with:
           value boxPrice wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(stor2)
        call stor2.0x156e29f6 with:
             gas gas_remaining wei
            args msg.sender, stor15, sub_9f4db65b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            if sub_a7b82849 == -1:
                revert with 0, 17
            sub_a7b82849++
            sub_0fc05f06[stor5].field_0 = ext_call.return_data[0]
            address(sub_0fc05f06[stor5].field_256) = arg1
            sub_0fc05f06[stor5].field_512 = boxPrice * stor13 / 100
            sub_0fc05f06[stor5].field_768 = block.timestamp
    if not sub_3b234413:
        revert with 0, 17
    sub_3b234413--
    if sub_08994549 == -1:
        revert with 0, 17
    sub_08994549++
    if sub_3ec32ab4[stor6][msg.sender] == -1:
        revert with 0, 17
    sub_3ec32ab4[stor6][msg.sender]++
    address(sub_3c00b3c6[stor3].field_0) = msg.sender
    sub_3c00b3c6[stor3].field_256 = ext_call.return_data[0]
    sub_3c00b3c6[stor3].field_512 = stor15
    sub_3c00b3c6[stor3].field_768 = sub_9f4db65b
    sub_3c00b3c6[stor3].field_1024 = boxPrice
    emit 0xb1b07ff9: stor15, sub_9f4db65b, msg.sender, ext_call.return_data[0], boxPrice
    return ext_call.return_data[0]
}

function sub_01f9f436(?) {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        revert with 0, 'No permissions'
    if arg1 >= sub_32573101:
        revert with 0, 'Index out of bounds'
    if bool(stor22[arg1].field_1024):
        if bool(stor22[arg1].field_1024) == uint255(stor22[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if bool(stor22[arg1].field_1024):
            if bool(stor22[arg1].field_1024) == uint255(stor22[arg1].field_1024) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22[arg1].field_1024):
                if 31 >= uint255(stor22[arg1].field_1024) * 0.5:
                    mem[288] = 256 * Mask(248, 0, stor22[arg1].field_1032)
                else:
                    mem[288] = stor22[arg1][4].field_0
                    idx = 288
                    s = 0
                    while (uint255(stor22[arg1].field_1024) * 0.5) + 256 > idx:
                        mem[idx + 32] = stor22[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor22[arg1].field_1024) == stor22[arg1].field_1025 % 128 < 32:
                revert with 0, 34
            if stor22[arg1].field_1025 % 128:
                if 31 >= stor22[arg1].field_1025 % 128:
                    mem[288] = 256 * Mask(248, 0, stor22[arg1].field_1032)
                else:
                    mem[288] = stor22[arg1][4].field_0
                    idx = 288
                    s = 0
                    while stor22[arg1].field_1025 % 128 + 256 > idx:
                        mem[idx + 32] = stor22[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor22[arg1].field_0), 
               stor22[arg1].field_256,
               stor22[arg1].field_512,
               stor22[arg1].field_768,
               Array(len=2 * Mask(256, -1, stor22[arg1].field_1024), data=mem[288 len ceil32(uint255(stor22[arg1].field_1024) * 0.5)])
    if bool(stor22[arg1].field_1024) == stor22[arg1].field_1025 % 128 < 32:
        revert with 0, 34
    if bool(stor22[arg1].field_1024):
        if bool(stor22[arg1].field_1024) == uint255(stor22[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor22[arg1].field_1024):
            if 31 >= uint255(stor22[arg1].field_1024) * 0.5:
                mem[288] = 256 * Mask(248, 0, stor22[arg1].field_1032)
            else:
                mem[288] = stor22[arg1][4].field_0
                idx = 288
                s = 0
                while (uint255(stor22[arg1].field_1024) * 0.5) + 256 > idx:
                    mem[idx + 32] = stor22[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor22[arg1].field_1024) == stor22[arg1].field_1025 % 128 < 32:
            revert with 0, 34
        if stor22[arg1].field_1025 % 128:
            if 31 >= stor22[arg1].field_1025 % 128:
                mem[288] = 256 * Mask(248, 0, stor22[arg1].field_1032)
            else:
                mem[288] = stor22[arg1][4].field_0
                idx = 288
                s = 0
                while stor22[arg1].field_1025 % 128 + 256 > idx:
                    mem[idx + 32] = stor22[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor22[arg1].field_0), 
           stor22[arg1].field_256,
           stor22[arg1].field_512,
           stor22[arg1].field_768,
           Array(len=stor22[arg1].field_1024 % 128, data=mem[288 len ceil32(stor22[arg1].field_1025 % 128)])
}



}
