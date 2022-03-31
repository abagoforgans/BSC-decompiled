contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_ab7a6c3e;

function owner() payable {
    return owner
}

function sub_ab7a6c3e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ab7a6c3e[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function register(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid token address'
    if not arg2:
        revert with 0, 'Invalid contract address'
    sub_ab7a6c3e[address(arg1)] = arg2
    if sub_ab7a6c3e[address(arg1)]:
        emit 0x2411335d: arg1, sub_ab7a6c3e[address(arg1)], arg2
    else:
        emit 0x23b0e518: arg1, arg2
}

function sub_40880004(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 'Entries should exist'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
        require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not address(cd[((64 * idx) + cd[4] + 36)]):
            revert with 0, 'Invalid token address'
        if not address(cd[((64 * idx) + cd[4] + 68)]):
            revert with 0, 'Invalid contract address'
        mem[0] = address(cd[((64 * idx) + cd[4] + 36)])
        mem[32] = 1
        sub_ab7a6c3e[address(cd[((64 * idx) + cd[4] + 36)])] = address(cd[((64 * idx) + cd[4] + 68)])
        if sub_ab7a6c3e[address(cd[((64 * idx) + cd[4] + 36)])]:
            emit 0x2411335d: address(cd[((64 * idx) + cd[4] + 36)]), sub_ab7a6c3e[address(cd[((64 * idx) + cd[4] + 36)])], address(cd[((64 * idx) + cd[4] + 68)])
        else:
            emit 0x23b0e518: address(cd[((64 * idx) + cd[4] + 36)]), address(cd[((64 * idx) + cd[4] + 68)])
        idx = idx + 1
        continue 
}



}
