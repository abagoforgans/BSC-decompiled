contract main {




// =====================  Runtime code  =====================


#
#  - sub_11721ada(?)
#  - sub_21b5ff5d(?)
#  - sub_5f92d5f1(?)
#  - sub_84705e01(?)
#  - calculate()
#  - sub_e3ded052(?)
#
uint8 sub_d5f538bc; offset 160
address viewOwner;
uint256 sub_c6eb4e0a;
mapping of struct viewUser;
uint32 stor5;
uint256 stor6;
uint8 stor7;
uint8 stor7; offset 16
uint32 sub_95766d69; offset 8

function viewUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewUser[address(arg1)].field_0, viewUser[address(arg1)].field_32
}

function sub_95766d69(?) {
    return sub_95766d69
}

function viewOwner() {
    return viewOwner
}

function sub_c6eb4e0a(?) {
    return sub_c6eb4e0a
}

function sub_d5f538bc(?) {
    return sub_d5f538bc
}

function _fallback() payable {
    revert
}

function viewInfo() {
    return stor5, stor5, stor5, stor5, stor5, stor6, uint8(stor7.field_0), uint8(stor7.field_0), uint8(stor7.field_16)
}

function sub_f85ac9b1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if viewUser[address(msg.sender)].field_0 < viewUser[address(msg.sender)].field_32:
        revert with 'NH{q', 17
    if uint32(viewUser[address(msg.sender)].field_0 - viewUser[address(msg.sender)].field_32) < ('cd', 4).length:
        revert with 0, 'U02'
    if viewUser[address(msg.sender)].field_0 < uint32(('cd', 4).length):
        revert with 'NH{q', 17
    viewUser[address(msg.sender)].field_0 = uint32(viewUser[address(msg.sender)].field_0 - uint32(('cd', 4).length))
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if viewUser[mem[(32 * idx) + 140 len 20]].field_0 == test266151307():
            revert with 'NH{q', 17
        viewUser[mem[(32 * idx) + 140 len 20]].field_0 = uint32(viewUser[mem[(32 * idx) + 140 len 20]].field_0 + 1)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 4).length) + 97] = msg.sender
    mem[floor32(('cd', 4).length) + 129] = 64
    mem[floor32(('cd', 4).length) + 161] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 193
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x19cc5628: msg.sender, Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 193 len 32 * ('cd', 4).length]), this.address
}



}
