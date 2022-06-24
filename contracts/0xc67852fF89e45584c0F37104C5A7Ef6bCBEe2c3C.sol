contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_455a5fdc;
address stor2;
address stor3;
mapping of uint8 stor4;

function sub_455a5fdc(?) payable {
    if stor2 != msg.sender:
        revert with 0, 'You silly goose'
    return sub_455a5fdc
}

function _fallback() payable {
    revert
}

function sub_f6177f1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (1 == bool(stor4[address(arg1)]))
}

function sub_5c7ee58c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0, 'You silly goose'
    stor3 = address(arg1)
    stor4[stor0] = 1
}

function setMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'You silly goose'
    stor0 = arg1
    stor4[address(arg1)] = 1
}

function sub_ee2c988a(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor4[msg.sender]) != 1:
        revert with 0, 'You silly goose2'
    return address(sha3(0, this.address, sha3(arg1), sha3(0, '6==7===6=s', stor0, 0x5af43d82803e903d91602b57fd5bf3)))
}

function sub_3965383b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'You silly goose'
    idx = 0
    while idx < arg1:
        if sub_455a5fdc > !idx:
            revert with 'NH{q', 17
        _8 = mem[64]
        mem[mem[64] + 32] = sub_455a5fdc + idx
        _9 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _11 = sha3(mem[_9 + 32 len mem[_9]])
        mem[_8 + 64] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000
        mem[_8 + 84] = stor0
        mem[_8 + 104] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
        create2 contract with 0 wei
                        salt: _11
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, stor0, 0x5af43d82803e903d91602b57fd5bf3
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_455a5fdc > !arg1:
        revert with 'NH{q', 17
    sub_455a5fdc += arg1
}

function sub_9fa063fa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'You silly goose'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
