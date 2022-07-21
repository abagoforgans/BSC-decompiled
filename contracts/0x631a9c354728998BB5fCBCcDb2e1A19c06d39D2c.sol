contract main {




// =====================  Runtime code  =====================


#
#  - sub_28c90d7b(?)
#  - withdraw(uint256 arg1)
#
const sub_d3d655f8(?) = '', 0

const RATIO = 5 * 10^15

const BLOCKS_PER_DAY = 6646

const DECAY = 997 * 10^15


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address tokenAddr;
array of struct stor102;
mapping of uint256 sub_99410ef5;
mapping of uint256 totalDeposit;

function tokenAddr() payable {
    return tokenAddr
}

function getTotalDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalDeposit[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_99410ef5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_99410ef5[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(arg1)].field_0++
    stor102[address(arg1)][stor102[address(arg1)].field_0].field_0 = arg2
    stor102[address(arg1)][stor102[address(arg1)].field_0].field_256 = block.number
    if totalDeposit[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    totalDeposit[address(arg1)] += arg2
    emit DepositEvent(arg2, arg1);
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
}

function sub_1b6402aa(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length == ('cd', 36).length
    require ('cd', 4).length >= 1
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[36] + 36)] and 10^10 > -1 / cd[((32 * idx) + cd[36] + 36)]:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 103
        if sub_99410ef5[address(cd[((32 * idx) + cd[4] + 36)])] > (-1 * 10^10 * cd[((32 * idx) + cd[36] + 36)]) - 1:
            revert with 'NH{q', 17
        sub_99410ef5[address(cd[((32 * idx) + cd[4] + 36)])] += 10^10 * cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_07851be8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length == ('cd', 36).length
    require ('cd', 4).length == ('cd', 68).length
    require ('cd', 4).length >= 1
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 102
        _10 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[_10] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[_10 + 32] = cd[((32 * idx) + cd[68] + 36)]
        stor102[address(cd[((32 * idx) + cd[4] + 36)])].field_0++
        stor102[address(cd[((32 * idx) + cd[4] + 36)])][stor102[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = cd[((32 * idx) + cd[36] + 36)]
        stor102[address(cd[((32 * idx) + cd[4] + 36)])][stor102[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_256 = cd[((32 * idx) + cd[68] + 36)]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 104
        if totalDeposit[address(cd[((32 * idx) + cd[4] + 36)])] > -cd[((32 * idx) + cd[36] + 36)] - 1:
            revert with 'NH{q', 17
        totalDeposit[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function totalReleased(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    if stor102[address(arg1)].field_0:
        if stor102[address(arg1)].field_0 > -2:
            revert with 'NH{q', 17
        if stor102[address(arg1)].field_0 + 1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor102[address(arg1)].field_0 + 1
        mem[64] = (32 * stor102[address(arg1)].field_0 + 1) + 128
        if not stor102[address(arg1)].field_0 + 1:
            mem[0] = arg1
            mem[32] = 102
            idx = 0
            while idx < stor102[address(arg1)].field_0:
                mem[32] = 102
                if idx >= stor102[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 102)
                _62 = mem[64]
                mem[64] = mem[64] + 64
                mem[_62] = stor102[address(arg1)][idx].field_0
                mem[_62 + 32] = stor102[address(arg1)][idx].field_256
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _62
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 102
                idx = idx + 1
                continue 
            _57 = mem[64]
            mem[64] = mem[64] + 64
            mem[_57] = 0
            mem[_57 + 32] = block.number
            if stor102[address(arg1)].field_0 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * stor102[address(arg1)].field_0) + 128] = _57
        else:
            mem[64] = (32 * stor102[address(arg1)].field_0 + 1) + 192
            mem[(32 * stor102[address(arg1)].field_0 + 1) + 128] = 0
            mem[(32 * stor102[address(arg1)].field_0 + 1) + 160] = 0
            mem[var28001] = (32 * stor102[address(arg1)].field_0 + 1) + 128
            s = var28001
            idx = var28002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(32 * stor102[address(arg1)].field_0 + 1) + 128] = 0
                mem[(32 * stor102[address(arg1)].field_0 + 1) + 160] = 0
                mem[s + 32] = (32 * stor102[address(arg1)].field_0 + 1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            mem[0] = arg1
            mem[32] = 102
            idx = 0
            while idx < stor102[address(arg1)].field_0:
                mem[32] = 102
                if idx >= stor102[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 102)
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = stor102[address(arg1)][idx].field_0
                mem[_166 + 32] = stor102[address(arg1)][idx].field_256
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _166
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 102
                idx = idx + 1
                continue 
            _152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_152] = 0
            mem[_152 + 32] = block.number
            if stor102[address(arg1)].field_0 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * stor102[address(arg1)].field_0) + 128] = _152
        idx = 1
        s = 0
        t = 0
        while idx < mem[96]:
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32]:
                revert with 'NH{q', 17
            if t > -(mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646) - 1:
                revert with 'NH{q', 17
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            if s > -mem[mem[(32 * idx - 1) + 128]] - 1:
                revert with 'NH{q', 17
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32]:
                revert with 'NH{q', 17
            if 6647 < mem[mem[(32 * idx - 1) + 128] + 32] % 6647:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646 < 1:
                if mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646 <= 0:
                    if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32]:
                        revert with 'NH{q', 17
                    if bool(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) > 0:
                        u = uint255(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) * 0.5
                        v = 997 * 10^15
                        w = 997 * 10^15
                        while u > 0:
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                                revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                                if bool(u) <= 0:
                                    u = uint255(u) * 0.5
                                    v = v
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                    revert with 0, 
                                                mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                    u = uint255(u) * 0.5
                                    v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                u = uint255(u) * 0.5
                                v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                    else:
                        u = uint255(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) * 0.5
                        v = 10^18
                        w = 997 * 10^15
                        while u > 0:
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                                revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                                if bool(u) <= 0:
                                    u = uint255(u) * 0.5
                                    v = v
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                    revert with 0, 
                                                mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                    u = uint255(u) * 0.5
                                    v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                u = uint255(u) * 0.5
                                v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                    if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, v
                    if v < 0:
                        revert with 0, 'SafeCast: value must be positive'
                    if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                        revert with 'NH{q', 17
                    if s + mem[mem[(32 * idx - 1) + 128]] and 5 * 10^15 * v / 10^18 > -1 / s + mem[mem[(32 * idx - 1) + 128]]:
                        revert with 'NH{q', 17
                    if (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646 and mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] > -1 / (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646:
                        revert with 'NH{q', 17
                    if 0 > -((mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if s + mem[mem[(32 * idx - 1) + 128]] < (mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[mem[(32 * idx - 1) + 128]] - ((mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18)
                    t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                    continue 
                if t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646) < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                    revert with 'NH{q', 17
                if bool(t) > 0:
                    u = uint255(t) * 0.5
                    v = 997 * 10^15
                    w = 997 * 10^15
                    while u > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            u = uint255(u) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                else:
                    u = uint255(t) * 0.5
                    v = 10^18
                    w = 997 * 10^15
                    while u > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            u = uint255(u) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, v
                if v < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                    revert with 'NH{q', 17
                u = 0
                w = 5 * 10^15 * v / 10^18
                x = 0
                y = s + mem[mem[(32 * idx - 1) + 128]]
                while u < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                    if w and 997 * 10^15 > -1 / w:
                        revert with 'NH{q', 17
                    if y and 997 * 10^15 * w / 10^18 > -1 / y:
                        revert with 'NH{q', 17
                    if x > -(y * 997 * 10^15 * w / 10^18 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if y and 997 * 10^15 * w / 10^18 > -1 / y:
                        revert with 'NH{q', 17
                    if y < y * 997 * 10^15 * w / 10^18 / 10^18:
                        revert with 'NH{q', 17
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    w = 997 * 10^15 * w / 10^18
                    x = x + (y * 997 * 10^15 * w / 10^18 / 10^18)
                    y = y - (y * 997 * 10^15 * w / 10^18 / 10^18)
                    continue 
                if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32]:
                    revert with 'NH{q', 17
                if mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 <= 0:
                    if 0 > -x - 1:
                        revert with 'NH{q', 17
                    if s + mem[mem[(32 * idx - 1) + 128]] < x:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[mem[(32 * idx - 1) + 128]] - x
                    t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                    continue 
                if w and 997 * 10^15 > -1 / w:
                    revert with 'NH{q', 17
                if y and 997 * 10^15 * w / 10^18 > -1 / y:
                    revert with 'NH{q', 17
                if y * 997 * 10^15 * w / 10^18 / 6646 and mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 > -1 / y * 997 * 10^15 * w / 10^18 / 6646:
                    revert with 'NH{q', 17
                if x > -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18) - 1:
                    revert with 'NH{q', 17
                if y < y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18:
                    revert with 'NH{q', 17
                if 0 > -x + -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18) - 1:
                    revert with 'NH{q', 17
                if s + mem[mem[(32 * idx - 1) + 128]] < x + (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[mem[(32 * idx - 1) + 128]] - x - (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18)
                t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                continue 
            if -(mem[mem[(32 * idx - 1) + 128] + 32] % 6647) + 6647 <= 0:
                if mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646 <= 0:
                    if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32]:
                        revert with 'NH{q', 17
                    if bool(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) > 0:
                        u = uint255(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) * 0.5
                        v = 997 * 10^15
                        w = 997 * 10^15
                        while u > 0:
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                                revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                                if bool(u) <= 0:
                                    u = uint255(u) * 0.5
                                    v = v
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                    revert with 0, 
                                                mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                    u = uint255(u) * 0.5
                                    v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                u = uint255(u) * 0.5
                                v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                    else:
                        u = uint255(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) * 0.5
                        v = 10^18
                        w = 997 * 10^15
                        while u > 0:
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                                revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                            if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                                if bool(u) <= 0:
                                    u = uint255(u) * 0.5
                                    v = v
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                    revert with 0, 
                                                mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                                if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                    u = uint255(u) * 0.5
                                    v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                    continue 
                                u = uint255(u) * 0.5
                                v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                    if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, v
                    if v < 0:
                        revert with 0, 'SafeCast: value must be positive'
                    if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                        revert with 'NH{q', 17
                    if s + mem[mem[(32 * idx - 1) + 128]] and 5 * 10^15 * v / 10^18 > -1 / s + mem[mem[(32 * idx - 1) + 128]]:
                        revert with 'NH{q', 17
                    if (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646 and mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] > -1 / (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646:
                        revert with 'NH{q', 17
                    if 0 > -((mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if s + mem[mem[(32 * idx - 1) + 128]] < (mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[mem[(32 * idx - 1) + 128]] - ((mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18)
                    t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                    continue 
                if t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646) < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                    revert with 'NH{q', 17
                if bool(t) > 0:
                    u = uint255(t) * 0.5
                    v = 997 * 10^15
                    w = 997 * 10^15
                    while u > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            u = uint255(u) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                else:
                    u = uint255(t) * 0.5
                    v = 10^18
                    w = 997 * 10^15
                    while u > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                u = uint255(u) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            u = uint255(u) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, v
                if v < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                    revert with 'NH{q', 17
                u = 0
                w = 5 * 10^15 * v / 10^18
                x = 0
                y = s + mem[mem[(32 * idx - 1) + 128]]
                while u < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                    if w and 997 * 10^15 > -1 / w:
                        revert with 'NH{q', 17
                    if y and 997 * 10^15 * w / 10^18 > -1 / y:
                        revert with 'NH{q', 17
                    if x > -(y * 997 * 10^15 * w / 10^18 / 10^18) - 1:
                        revert with 'NH{q', 17
                    if y and 997 * 10^15 * w / 10^18 > -1 / y:
                        revert with 'NH{q', 17
                    if y < y * 997 * 10^15 * w / 10^18 / 10^18:
                        revert with 'NH{q', 17
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    w = 997 * 10^15 * w / 10^18
                    x = x + (y * 997 * 10^15 * w / 10^18 / 10^18)
                    y = y - (y * 997 * 10^15 * w / 10^18 / 10^18)
                    continue 
                if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32]:
                    revert with 'NH{q', 17
                if mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 <= 0:
                    if 0 > -x - 1:
                        revert with 'NH{q', 17
                    if s + mem[mem[(32 * idx - 1) + 128]] < x:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[mem[(32 * idx - 1) + 128]] - x
                    t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                    continue 
                if w and 997 * 10^15 > -1 / w:
                    revert with 'NH{q', 17
                if y and 997 * 10^15 * w / 10^18 > -1 / y:
                    revert with 'NH{q', 17
                if y * 997 * 10^15 * w / 10^18 / 6646 and mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 > -1 / y * 997 * 10^15 * w / 10^18 / 6646:
                    revert with 'NH{q', 17
                if x > -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18) - 1:
                    revert with 'NH{q', 17
                if y < y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18:
                    revert with 'NH{q', 17
                if 0 > -x + -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18) - 1:
                    revert with 'NH{q', 17
                if s + mem[mem[(32 * idx - 1) + 128]] < x + (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[mem[(32 * idx - 1) + 128]] - x - (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] % 6646 / 10^18)
                t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                continue 
            if t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646) < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                revert with 'NH{q', 17
            if bool(t) > 0:
                u = uint255(t) * 0.5
                v = 997 * 10^15
                w = 997 * 10^15
                while u > 0:
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                        revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            v = v
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            u = uint255(u) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if bool(u) <= 0:
                        u = uint255(u) * 0.5
                        v = v
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        u = uint255(u) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    u = uint255(u) * 0.5
                    v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
            else:
                u = uint255(t) * 0.5
                v = 10^18
                w = 997 * 10^15
                while u > 0:
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                        revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            v = v
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            u = uint255(u) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if bool(u) <= 0:
                        u = uint255(u) * 0.5
                        v = v
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        u = uint255(u) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    u = uint255(u) * 0.5
                    v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
            if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, v
            if v < 0:
                revert with 0, 'SafeCast: value must be positive'
            if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                revert with 'NH{q', 17
            if s + mem[mem[(32 * idx - 1) + 128]] and 5 * 10^15 * v / 10^18 > -1 / s + mem[mem[(32 * idx - 1) + 128]]:
                revert with 'NH{q', 17
            if (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646 and -(mem[mem[(32 * idx - 1) + 128] + 32] % 6647) + 6647 > -1 / (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646:
                revert with 'NH{q', 17
            if s + mem[mem[(32 * idx - 1) + 128]] < (6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18:
                revert with 'NH{q', 17
            if 0 > -((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) - 1:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx - 1) + 128] + 32] > (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6648:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646 <= 0:
                if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32] + -(mem[mem[(32 * idx - 1) + 128] + 32] % 6647) + 6647:
                    revert with 'NH{q', 17
                if bool(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) > 0:
                    u = uint255(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) * 0.5
                    w = 997 * 10^15
                    x = 997 * 10^15
                    while u > 0:
                        if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                            revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                        if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                w = w
                                x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                                revert with 0, 
                                            mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                            if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                                u = uint255(u) * 0.5
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            w = w
                            x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                            revert with 0, 
                                        mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                        if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                            u = uint255(u) * 0.5
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                else:
                    u = uint255(t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)) * 0.5
                    w = 10^18
                    x = 997 * 10^15
                    while u > 0:
                        if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                            revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                        if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                            if bool(u) <= 0:
                                u = uint255(u) * 0.5
                                w = w
                                x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                                revert with 0, 
                                            mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                            if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                                u = uint255(u) * 0.5
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                                continue 
                            u = uint255(u) * 0.5
                            w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            w = w
                            x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                            revert with 0, 
                                        mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                        if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                            u = uint255(u) * 0.5
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                if w > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, w
                if w < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if w > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                    revert with 'NH{q', 17
                if s + mem[mem[(32 * idx - 1) + 128]] - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) and 5 * 10^15 * w / 10^18 > -1 / s + mem[mem[(32 * idx - 1) + 128]] - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18):
                    revert with 'NH{q', 17
                if (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646 and mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 > -1 / (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646:
                    revert with 'NH{q', 17
                if 0 > -((-6647 * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) / 10^18) - 1:
                    revert with 'NH{q', 17
                if s + mem[mem[(32 * idx - 1) + 128]] < (-6647 * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) / 10^18:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[mem[(32 * idx - 1) + 128]] - ((-6647 * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx) + 128] + 32] * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * w / 10^18) - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) / 10^18)
                t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                continue 
            if t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646) < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                revert with 'NH{q', 17
            if bool(t) > 0:
                u = uint255(t) * 0.5
                w = 997 * 10^15
                x = 997 * 10^15
                while u > 0:
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                        revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            w = w
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                            revert with 0, 
                                        mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                            u = uint255(u) * 0.5
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if bool(u) <= 0:
                        u = uint255(u) * 0.5
                        w = w
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                        revert with 0, 
                                    mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                        u = uint255(u) * 0.5
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    u = uint255(u) * 0.5
                    w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
            else:
                u = uint255(t) * 0.5
                w = 10^18
                x = 997 * 10^15
                while u > 0:
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                        revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                        if bool(u) <= 0:
                            u = uint255(u) * 0.5
                            w = w
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                            revert with 0, 
                                        mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                            u = uint255(u) * 0.5
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        u = uint255(u) * 0.5
                        w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if bool(u) <= 0:
                        u = uint255(u) * 0.5
                        w = w
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                        revert with 0, 
                                    mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                        u = uint255(u) * 0.5
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    u = uint255(u) * 0.5
                    w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
            if w > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, w
            if w < 0:
                revert with 0, 'SafeCast: value must be positive'
            if w > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                revert with 'NH{q', 17
            u = 0
            x = 5 * 10^15 * w / 10^18
            y = (6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18
            z = s + mem[mem[(32 * idx - 1) + 128]] - ((6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + 128] + 32] % 6647 * (s * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + 128]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18)
            while u < mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646:
                if x and 997 * 10^15 > -1 / x:
                    revert with 'NH{q', 17
                if z and 997 * 10^15 * x / 10^18 > -1 / z:
                    revert with 'NH{q', 17
                if y > -(z * 997 * 10^15 * x / 10^18 / 10^18) - 1:
                    revert with 'NH{q', 17
                if z and 997 * 10^15 * x / 10^18 > -1 / z:
                    revert with 'NH{q', 17
                if z < z * 997 * 10^15 * x / 10^18 / 10^18:
                    revert with 'NH{q', 17
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                x = 997 * 10^15 * x / 10^18
                y = y + (z * 997 * 10^15 * x / 10^18 / 10^18)
                z = z - (z * 997 * 10^15 * x / 10^18 / 10^18)
                continue 
            if mem[mem[(32 * idx) + 128] + 32] < mem[mem[(32 * idx - 1) + 128] + 32] + -(mem[mem[(32 * idx - 1) + 128] + 32] % 6647) + 6647:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 <= 0:
                if 0 > -y - 1:
                    revert with 'NH{q', 17
                if s + mem[mem[(32 * idx - 1) + 128]] < y:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[mem[(32 * idx - 1) + 128]] - y
                t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
                continue 
            if x and 997 * 10^15 > -1 / x:
                revert with 'NH{q', 17
            if z and 997 * 10^15 * x / 10^18 > -1 / z:
                revert with 'NH{q', 17
            if z * 997 * 10^15 * x / 10^18 / 6646 and mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 > -1 / z * 997 * 10^15 * x / 10^18 / 6646:
                revert with 'NH{q', 17
            if y > -(z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 / 10^18) - 1:
                revert with 'NH{q', 17
            if z < z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 / 10^18:
                revert with 'NH{q', 17
            if 0 > -y + -(z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 / 10^18) - 1:
                revert with 'NH{q', 17
            if s + mem[mem[(32 * idx - 1) + 128]] < y + (z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 / 10^18):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx - 1) + 128]] - y - (z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + 128] + 32] + -mem[mem[(32 * idx - 1) + 128] + 32] + (mem[mem[(32 * idx - 1) + 128] + 32] % 6647) - 6647 % 6646 / 10^18)
            t = t + (mem[mem[(32 * idx) + 128] + 32] - mem[mem[(32 * idx - 1) + 128] + 32] / 6646)
            continue 
        return 0
    else:
        return 0
}

function sub_584159ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 102
    mem[64] = (32 * stor102[address(arg1)].field_0) + 128
    mem[96] = stor102[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor102[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 102)
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = stor102[address(arg1)][idx].field_0
        mem[_65 + 32] = stor102[address(arg1)][idx].field_256
        mem[s] = _65
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if s > -mem[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + 128]]
        continue 
    mem[0] = address(arg1)
    if not stor102[address(arg1)].field_0:
        if s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] < 0:
            revert with 'NH{q', 17
        mem[mem[64]] = s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]
        return memory
          from mem[64]
           len 32
    if stor102[address(arg1)].field_0 > -2:
        revert with 'NH{q', 17
    if stor102[address(arg1)].field_0 + 1 > test266151307():
        revert with 'NH{q', 65
    _130 = mem[64]
    mem[mem[64]] = stor102[address(arg1)].field_0 + 1
    mem[64] = mem[64] + (32 * stor102[address(arg1)].field_0 + 1) + 32
    if not stor102[address(arg1)].field_0 + 1:
        mem[0] = address(arg1)
        mem[32] = 102
        idx = 0
        while idx < stor102[address(arg1)].field_0:
            mem[32] = 102
            if idx >= stor102[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 102)
            _190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_190] = stor102[address(arg1)][idx].field_0
            mem[_190 + 32] = stor102[address(arg1)][idx].field_256
            if idx >= mem[_130]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _130 + 32] = _190
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 102
            idx = idx + 1
            continue 
        _185 = mem[64]
        mem[64] = mem[64] + 64
        mem[_185] = 0
        mem[_185 + 32] = block.number
        if stor102[address(arg1)].field_0 >= mem[_130]:
            revert with 'NH{q', 50
        mem[(32 * stor102[address(arg1)].field_0) + _130 + 32] = _185
    else:
        mem[64] = _130 + (32 * stor102[address(arg1)].field_0 + 1) + 96
        mem[_130 + (32 * stor102[address(arg1)].field_0 + 1) + 32] = 0
        mem[_130 + (32 * stor102[address(arg1)].field_0 + 1) + 64] = 0
        mem[var35001] = _130 + (32 * stor102[address(arg1)].field_0 + 1) + 32
        t = var35001
        idx = var35002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_130 + (32 * stor102[address(arg1)].field_0 + 1) + 32] = 0
            mem[_130 + (32 * stor102[address(arg1)].field_0 + 1) + 64] = 0
            mem[t + 32] = _130 + (32 * stor102[address(arg1)].field_0 + 1) + 32
            t = t + 32
            idx = idx - 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 102
        idx = 0
        while idx < stor102[address(arg1)].field_0:
            mem[32] = 102
            if idx >= stor102[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 102)
            _294 = mem[64]
            mem[64] = mem[64] + 64
            mem[_294] = stor102[address(arg1)][idx].field_0
            mem[_294 + 32] = stor102[address(arg1)][idx].field_256
            if idx >= mem[_130]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _130 + 32] = _294
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 102
            idx = idx + 1
            continue 
        _280 = mem[64]
        mem[64] = mem[64] + 64
        mem[_280] = 0
        mem[_280 + 32] = block.number
        if stor102[address(arg1)].field_0 >= mem[_130]:
            revert with 'NH{q', 50
        mem[(32 * stor102[address(arg1)].field_0) + _130 + 32] = _280
    idx = 1
    t = 0
    u = 0
    while idx < mem[_130]:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[_130]:
            revert with 'NH{q', 50
        if idx >= mem[_130]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32]:
            revert with 'NH{q', 17
        if u > -(mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646) - 1:
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[_130]:
            revert with 'NH{q', 50
        if t > -mem[mem[(32 * idx - 1) + _130 + 32]] - 1:
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[_130]:
            revert with 'NH{q', 50
        if idx >= mem[_130]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32]:
            revert with 'NH{q', 17
        if 6647 < mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646 < 1:
            if mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646 <= 0:
                if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32]:
                    revert with 'NH{q', 17
                if bool(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) > 0:
                    s = uint255(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) * 0.5
                    v = 997 * 10^15
                    w = 997 * 10^15
                    while s > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(s) <= 0:
                                s = uint255(s) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                s = uint255(s) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            s = uint255(s) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                else:
                    s = uint255(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) * 0.5
                    v = 10^18
                    w = 997 * 10^15
                    while s > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(s) <= 0:
                                s = uint255(s) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                s = uint255(s) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            s = uint255(s) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, v
                if v < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                    revert with 'NH{q', 17
                if t + mem[mem[(32 * idx - 1) + _130 + 32]] and 5 * 10^15 * v / 10^18 > -1 / t + mem[mem[(32 * idx - 1) + _130 + 32]]:
                    revert with 'NH{q', 17
                if (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646 and mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] > -1 / (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646:
                    revert with 'NH{q', 17
                if 0 > -((mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) - 1:
                    revert with 'NH{q', 17
                if t + mem[mem[(32 * idx - 1) + _130 + 32]] < (mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - ((mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18)
                u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
                continue 
            if u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646) < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
                revert with 'NH{q', 17
            if bool(u) > 0:
                s = uint255(u) * 0.5
                v = 997 * 10^15
                w = 997 * 10^15
                while s > 0:
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                        revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        v = v
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        s = uint255(s) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
            else:
                s = uint255(u) * 0.5
                v = 10^18
                w = 997 * 10^15
                while s > 0:
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                        revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        v = v
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        s = uint255(s) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
            if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, v
            if v < 0:
                revert with 0, 'SafeCast: value must be positive'
            if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                revert with 'NH{q', 17
            s = 0
            w = 5 * 10^15 * v / 10^18
            x = 0
            y = t + mem[mem[(32 * idx - 1) + _130 + 32]]
            while s < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
                if w and 997 * 10^15 > -1 / w:
                    revert with 'NH{q', 17
                if y and 997 * 10^15 * w / 10^18 > -1 / y:
                    revert with 'NH{q', 17
                if x > -(y * 997 * 10^15 * w / 10^18 / 10^18) - 1:
                    revert with 'NH{q', 17
                if y and 997 * 10^15 * w / 10^18 > -1 / y:
                    revert with 'NH{q', 17
                if y < y * 997 * 10^15 * w / 10^18 / 10^18:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                w = 997 * 10^15 * w / 10^18
                x = x + (y * 997 * 10^15 * w / 10^18 / 10^18)
                y = y - (y * 997 * 10^15 * w / 10^18 / 10^18)
                continue 
            if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32]:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 <= 0:
                if 0 > -x - 1:
                    revert with 'NH{q', 17
                if t + mem[mem[(32 * idx - 1) + _130 + 32]] < x:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - x
                u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
                continue 
            if w and 997 * 10^15 > -1 / w:
                revert with 'NH{q', 17
            if y and 997 * 10^15 * w / 10^18 > -1 / y:
                revert with 'NH{q', 17
            if y * 997 * 10^15 * w / 10^18 / 6646 and mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 > -1 / y * 997 * 10^15 * w / 10^18 / 6646:
                revert with 'NH{q', 17
            if x > -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18) - 1:
                revert with 'NH{q', 17
            if y < y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18:
                revert with 'NH{q', 17
            if 0 > -x + -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18) - 1:
                revert with 'NH{q', 17
            if t + mem[mem[(32 * idx - 1) + _130 + 32]] < x + (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - x - (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18)
            u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
            continue 
        if -(mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) + 6647 <= 0:
            if mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646 <= 0:
                if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32]:
                    revert with 'NH{q', 17
                if bool(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) > 0:
                    s = uint255(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) * 0.5
                    v = 997 * 10^15
                    w = 997 * 10^15
                    while s > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(s) <= 0:
                                s = uint255(s) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                s = uint255(s) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            s = uint255(s) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                else:
                    s = uint255(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) * 0.5
                    v = 10^18
                    w = 997 * 10^15
                    while s > 0:
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                            revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                        if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                            if bool(s) <= 0:
                                s = uint255(s) * 0.5
                                v = v
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                                revert with 0, 
                                            mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                            if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                                s = uint255(s) * 0.5
                                v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                                w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                                continue 
                            s = uint255(s) * 0.5
                            v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, v
                if v < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                    revert with 'NH{q', 17
                if t + mem[mem[(32 * idx - 1) + _130 + 32]] and 5 * 10^15 * v / 10^18 > -1 / t + mem[mem[(32 * idx - 1) + _130 + 32]]:
                    revert with 'NH{q', 17
                if (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646 and mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] > -1 / (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646:
                    revert with 'NH{q', 17
                if 0 > -((mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) - 1:
                    revert with 'NH{q', 17
                if t + mem[mem[(32 * idx - 1) + _130 + 32]] < (mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - ((mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18)
                u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
                continue 
            if u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646) < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
                revert with 'NH{q', 17
            if bool(u) > 0:
                s = uint255(u) * 0.5
                v = 997 * 10^15
                w = 997 * 10^15
                while s > 0:
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                        revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        v = v
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        s = uint255(s) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
            else:
                s = uint255(u) * 0.5
                v = 10^18
                w = 997 * 10^15
                while s > 0:
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                        revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                    if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            v = v
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                            revert with 0, 
                                        mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                        if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                            s = uint255(s) * 0.5
                            v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        v = v
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        s = uint255(s) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
            if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, v
            if v < 0:
                revert with 0, 'SafeCast: value must be positive'
            if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                revert with 'NH{q', 17
            s = 0
            w = 5 * 10^15 * v / 10^18
            x = 0
            y = t + mem[mem[(32 * idx - 1) + _130 + 32]]
            while s < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
                if w and 997 * 10^15 > -1 / w:
                    revert with 'NH{q', 17
                if y and 997 * 10^15 * w / 10^18 > -1 / y:
                    revert with 'NH{q', 17
                if x > -(y * 997 * 10^15 * w / 10^18 / 10^18) - 1:
                    revert with 'NH{q', 17
                if y and 997 * 10^15 * w / 10^18 > -1 / y:
                    revert with 'NH{q', 17
                if y < y * 997 * 10^15 * w / 10^18 / 10^18:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                w = 997 * 10^15 * w / 10^18
                x = x + (y * 997 * 10^15 * w / 10^18 / 10^18)
                y = y - (y * 997 * 10^15 * w / 10^18 / 10^18)
                continue 
            if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32]:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 <= 0:
                if 0 > -x - 1:
                    revert with 'NH{q', 17
                if t + mem[mem[(32 * idx - 1) + _130 + 32]] < x:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - x
                u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
                continue 
            if w and 997 * 10^15 > -1 / w:
                revert with 'NH{q', 17
            if y and 997 * 10^15 * w / 10^18 > -1 / y:
                revert with 'NH{q', 17
            if y * 997 * 10^15 * w / 10^18 / 6646 and mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 > -1 / y * 997 * 10^15 * w / 10^18 / 6646:
                revert with 'NH{q', 17
            if x > -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18) - 1:
                revert with 'NH{q', 17
            if y < y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18:
                revert with 'NH{q', 17
            if 0 > -x + -(y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18) - 1:
                revert with 'NH{q', 17
            if t + mem[mem[(32 * idx - 1) + _130 + 32]] < x + (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - x - (y * 997 * 10^15 * w / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6646 / 10^18)
            u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
            continue 
        if u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646) < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
            revert with 'NH{q', 17
        if bool(u) > 0:
            s = uint255(u) * 0.5
            v = 997 * 10^15
            w = 997 * 10^15
            while s > 0:
                if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                    revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        v = v
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        s = uint255(s) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
                if bool(s) <= 0:
                    s = uint255(s) * 0.5
                    v = v
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
                if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                    revert with 0, 
                                mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                    s = uint255(s) * 0.5
                    v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
                s = uint255(s) * 0.5
                v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                continue 
        else:
            s = uint255(u) * 0.5
            v = 10^18
            w = 997 * 10^15
            while s > 0:
                if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) >= 10^18:
                    revert with 0, mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w)
                if mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w):
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        v = v
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                        revert with 0, 
                                    mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                    if mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                        s = uint255(s) * 0.5
                        v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    v = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w) - mulmod(w, w, 10^18)) >> 18 or mulmod(w, w, -1) - (w * w) - (mulmod(w, w, -1) < w * w) - (mulmod(w, w, 10^18) > w * w) << 238) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
                if bool(s) <= 0:
                    s = uint255(s) * 0.5
                    v = v
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
                if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) >= 10^18:
                    revert with 0, 
                                mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v))
                if mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)):
                    s = uint255(s) * 0.5
                    v = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) - mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) - (w * w / 10^18 * v) - (mulmod(w, w, 10^18) > 499999999999999999 * v) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), -1) < (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) - (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > (w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v)) << 238) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                    continue 
                s = uint255(s) * 0.5
                v = ((w * w / 10^18 * v) + (mulmod(w, w, 10^18) > 499999999999999999 * v) / 10^18) + (mulmod(v, (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                w = (w * w / 10^18) + (mulmod(w, w, 10^18) > 499999999999999999)
                continue 
        if v > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, v
        if v < 0:
            revert with 0, 'SafeCast: value must be positive'
        if v > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
            revert with 'NH{q', 17
        if t + mem[mem[(32 * idx - 1) + _130 + 32]] and 5 * 10^15 * v / 10^18 > -1 / t + mem[mem[(32 * idx - 1) + _130 + 32]]:
            revert with 'NH{q', 17
        if (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646 and -(mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) + 6647 > -1 / (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646:
            revert with 'NH{q', 17
        if t + mem[mem[(32 * idx - 1) + _130 + 32]] < (6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18:
            revert with 'NH{q', 17
        if 0 > -((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) - 1:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx - 1) + _130 + 32] + 32] > (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6648:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646 <= 0:
            if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32] + -(mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) + 6647:
                revert with 'NH{q', 17
            if bool(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) > 0:
                s = uint255(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) * 0.5
                w = 997 * 10^15
                x = 997 * 10^15
                while s > 0:
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                        revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            w = w
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                            revert with 0, 
                                        mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                            s = uint255(s) * 0.5
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        w = w
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                        revert with 0, 
                                    mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                        s = uint255(s) * 0.5
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
            else:
                s = uint255(u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)) * 0.5
                w = 10^18
                x = 997 * 10^15
                while s > 0:
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                        revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                    if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                        if bool(s) <= 0:
                            s = uint255(s) * 0.5
                            w = w
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                            revert with 0, 
                                        mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                        if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                            s = uint255(s) * 0.5
                            w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                            x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                            continue 
                        s = uint255(s) * 0.5
                        w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        w = w
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                        revert with 0, 
                                    mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                    if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                        s = uint255(s) * 0.5
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
            if w > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, w
            if w < 0:
                revert with 0, 'SafeCast: value must be positive'
            if w > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
                revert with 'NH{q', 17
            if t + mem[mem[(32 * idx - 1) + _130 + 32]] - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18) and 5 * 10^15 * w / 10^18 > -1 / t + mem[mem[(32 * idx - 1) + _130 + 32]] - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18):
                revert with 'NH{q', 17
            if (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646 and mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 > -1 / (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646:
                revert with 'NH{q', 17
            if 0 > -((-6647 * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) / 10^18) - 1:
                revert with 'NH{q', 17
            if t + mem[mem[(32 * idx - 1) + _130 + 32]] < (-6647 * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) / 10^18:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - ((-6647 * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx) + _130 + 32] + 32] * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * w / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * w / 10^18) - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18 * 5 * 10^15 * w / 10^18) / 6646) / 10^18)
            u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
            continue 
        if u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646) < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
            revert with 'NH{q', 17
        if bool(u) > 0:
            s = uint255(u) * 0.5
            w = 997 * 10^15
            x = 997 * 10^15
            while s > 0:
                if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                    revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        w = w
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                        revert with 0, 
                                    mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                    if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                        s = uint255(s) * 0.5
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
                if bool(s) <= 0:
                    s = uint255(s) * 0.5
                    w = w
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
                if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                    revert with 0, 
                                mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                    s = uint255(s) * 0.5
                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
                s = uint255(s) * 0.5
                w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                continue 
        else:
            s = uint255(u) * 0.5
            w = 10^18
            x = 997 * 10^15
            while s > 0:
                if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) >= 10^18:
                    revert with 0, mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x)
                if mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x):
                    if bool(s) <= 0:
                        s = uint255(s) * 0.5
                        w = w
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                        revert with 0, 
                                    mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                    if mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                        s = uint255(s) * 0.5
                        w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                        x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                        continue 
                    s = uint255(s) * 0.5
                    w = ((0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x) - mulmod(x, x, 10^18)) >> 18 or mulmod(x, x, -1) - (x * x) - (mulmod(x, x, -1) < x * x) - (mulmod(x, x, 10^18) > x * x) << 238) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
                if bool(s) <= 0:
                    s = uint255(s) * 0.5
                    w = w
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
                if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) >= 10^18:
                    revert with 0, 
                                mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w))
                if mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)):
                    s = uint255(s) * 0.5
                    w = (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) - mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18)) >> 18 or mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) - (x * x / 10^18 * w) - (mulmod(x, x, 10^18) > 499999999999999999 * w) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), -1) < (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) - (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > (x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w)) << 238) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                    x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                    continue 
                s = uint255(s) * 0.5
                w = ((x * x / 10^18 * w) + (mulmod(x, x, 10^18) > 499999999999999999 * w) / 10^18) + (mulmod(w, (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999), 10^18) > 499999999999999999)
                x = (x * x / 10^18) + (mulmod(x, x, 10^18) > 499999999999999999)
                continue 
        if w > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, w
        if w < 0:
            revert with 0, 'SafeCast: value must be positive'
        if w > 0xe69594bec44de15b4c2ebe687989a9b3bf716c1add27f08523c:
            revert with 'NH{q', 17
        s = 0
        x = 5 * 10^15 * w / 10^18
        y = (6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18
        z = t + mem[mem[(32 * idx - 1) + _130 + 32]] - ((6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) - (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647 * (t * 5 * 10^15 * v / 10^18) + (mem[mem[(32 * idx - 1) + _130 + 32]] * 5 * 10^15 * v / 10^18) / 6646) / 10^18)
        while s < mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646:
            if x and 997 * 10^15 > -1 / x:
                revert with 'NH{q', 17
            if z and 997 * 10^15 * x / 10^18 > -1 / z:
                revert with 'NH{q', 17
            if y > -(z * 997 * 10^15 * x / 10^18 / 10^18) - 1:
                revert with 'NH{q', 17
            if z and 997 * 10^15 * x / 10^18 > -1 / z:
                revert with 'NH{q', 17
            if z < z * 997 * 10^15 * x / 10^18 / 10^18:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            x = 997 * 10^15 * x / 10^18
            y = y + (z * 997 * 10^15 * x / 10^18 / 10^18)
            z = z - (z * 997 * 10^15 * x / 10^18 / 10^18)
            continue 
        if mem[mem[(32 * idx) + _130 + 32] + 32] < mem[mem[(32 * idx - 1) + _130 + 32] + 32] + -(mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) + 6647:
            revert with 'NH{q', 17
        if mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 <= 0:
            if 0 > -y - 1:
                revert with 'NH{q', 17
            if t + mem[mem[(32 * idx - 1) + _130 + 32]] < y:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - y
            u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
            continue 
        if x and 997 * 10^15 > -1 / x:
            revert with 'NH{q', 17
        if z and 997 * 10^15 * x / 10^18 > -1 / z:
            revert with 'NH{q', 17
        if z * 997 * 10^15 * x / 10^18 / 6646 and mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 > -1 / z * 997 * 10^15 * x / 10^18 / 6646:
            revert with 'NH{q', 17
        if y > -(z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 / 10^18) - 1:
            revert with 'NH{q', 17
        if z < z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 / 10^18:
            revert with 'NH{q', 17
        if 0 > -y + -(z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 / 10^18) - 1:
            revert with 'NH{q', 17
        if t + mem[mem[(32 * idx - 1) + _130 + 32]] < y + (z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 / 10^18):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + mem[mem[(32 * idx - 1) + _130 + 32]] - y - (z * 997 * 10^15 * x / 10^18 / 6646 * mem[mem[(32 * idx) + _130 + 32] + 32] + -mem[mem[(32 * idx - 1) + _130 + 32] + 32] + (mem[mem[(32 * idx - 1) + _130 + 32] + 32] % 6647) - 6647 % 6646 / 10^18)
        u = u + (mem[mem[(32 * idx) + _130 + 32] + 32] - mem[mem[(32 * idx - 1) + _130 + 32] + 32] / 6646)
        continue 
    if s < 0:
        revert with 'NH{q', 17
    return s
}



}
