contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of address sub_8e34e138;
mapping of uint8 stor3;

function verifyUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function owner() {
    return owner
}

function sub_8e34e138(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_8e34e138.length
    return address(sub_8e34e138[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enter() payable {
    require msg.value > 10^16
    sub_8e34e138.length++
    uint256(sub_8e34e138[sub_8e34e138.length]) = msg.sender or Mask(96, 160, uint256(sub_8e34e138[sub_8e34e138.length]))
}

function addUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
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

function sub_7d41bc7a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = 0
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
