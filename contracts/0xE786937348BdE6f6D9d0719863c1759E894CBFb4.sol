contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 sub_5c316613;

function sub_5c316613(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_5c316613
}

function owner() payable {
    return owner
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

function sub_d17d865e(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 80000:
        if sub_5c316613 and stor5 > -1 / sub_5c316613:
            revert with 'NH{q', 17
        if sub_5c316613 * stor5 > stor4:
        if stor3 < idx:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.getItem(uint256 arg1) with:
                gas gas_remaining wei
               args (stor3 - idx)
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _20 = mem[64]
        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 288
        require mem[_19] == mem[_19 + 31 len 1]
        mem[_20] = mem[_19]
        require mem[_19 + 32] == mem[_19 + 63 len 1]
        mem[_20 + 32] = mem[_19 + 32]
        require mem[_19 + 64] == mem[_19 + 95 len 1]
        mem[_20 + 64] = mem[_19 + 64]
        require mem[_19 + 96] == mem[_19 + 127 len 1]
        mem[_20 + 96] = mem[_19 + 96]
        require mem[_19 + 128] == mem[_19 + 158 len 2]
        mem[_20 + 128] = mem[_19 + 128]
        require mem[_19 + 160] == mem[_19 + 190 len 2]
        mem[_20 + 160] = mem[_19 + 160]
        require mem[_19 + 192] == mem[_19 + 222 len 2]
        mem[_20 + 192] = mem[_19 + 192]
        require mem[_19 + 224] == mem[_19 + 252 len 4]
        mem[_20 + 224] = mem[_19 + 224]
        require mem[_19 + 256] == mem[_19 + 284 len 4]
        mem[_20 + 256] = mem[_19 + 256]
        if mem[_20 + 127 len 1] < 2:
            if sub_5c316613 == -1:
                revert with 'NH{q', 17
            sub_5c316613++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
