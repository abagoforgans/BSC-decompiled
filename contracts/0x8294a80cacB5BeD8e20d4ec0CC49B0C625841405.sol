contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor6;
array of struct stor7;
uint8 stor8; offset 160
address stor8;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfer() payable {
    if msg.sender == address(stor8.field_0):
        uint8(stor8.field_160) = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_1acb9410(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if address(stor8.field_0) != msg.sender:
        return 0
    idx = 0
    while idx < ('cd', 36).length:
        if 1 == uint8(cd[4]):
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[mem[(32 * idx) + 140 len 20]] = 0
        else:
            if 2 == uint8(cd[4]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[mem[(32 * idx) + 140 len 20]] = 0
            else:
                if 3 == uint8(cd[4]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    stor3[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_b6e55c14(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if address(stor8.field_0) != msg.sender:
        return 0
    idx = 0
    while idx < ('cd', 36).length:
        if 1 == uint8(cd[4]):
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            stor1[mem[(32 * idx) + 140 len 20]] = 1
        else:
            if 2 == uint8(cd[4]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[mem[(32 * idx) + 140 len 20]] = 1
            else:
                if 3 == uint8(cd[4]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor2[address(msg.sender)]:
        if stor3[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'BEP20: transfers between the bots and the stocks are prohibited'
        if stor3[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'BEP20: transfers between the bots and the stocks are prohibited'
    else:
        if stor2[address(arg1)]:
            if stor3[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'BEP20: transfers between the bots and the stocks are prohibited'
            if stor3[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'BEP20: transfers between the bots and the stocks are prohibited'
    if not uint8(stor8.field_160):
        if not stor1[address(msg.sender)]:
            if not stor1[address(arg1)]:
                revert with 0, 'BEP20: transfer disabled'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor2[address(arg1)]:
        if stor3[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'BEP20: transfers between the bots and the stocks are prohibited'
        if stor3[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'BEP20: transfers between the bots and the stocks are prohibited'
    else:
        if stor2[address(arg2)]:
            if stor3[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'BEP20: transfers between the bots and the stocks are prohibited'
            if stor3[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'BEP20: transfers between the bots and the stocks are prohibited'
    if not uint8(stor8.field_160):
        if not stor1[address(arg1)]:
            if not stor1[address(arg2)]:
                revert with 0, 'BEP20: transfer disabled'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}



}
