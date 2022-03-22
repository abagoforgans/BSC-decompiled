contract main {




// =====================  Runtime code  =====================


#
#  - sub_41bc3d8c(?)
#  - sub_4946b1e8(?)
#  - sub_92c27353(?)
#  - sub_aab4ef5b(?)
#  - sub_b74de028(?)
#  - sub_edb99359(?)
#
const balanceOf = eth.balance(this.address)


uint32 stor0;
uint32 sub_2de761fd; offset 160
uint32 sub_0cfaa8f7; offset 192
uint32 sub_f5c01976; offset 224
address owner;
uint256 stor0;
uint256 sub_d8a97cc6;
mapping of uint256 sub_0b4ac0e7;
address stor3;

function sub_0b4ac0e7(?) {
    require calldata.size - 4 >= 32
    return sub_0b4ac0e7[arg1]
}

function sub_0cfaa8f7(?) {
    return sub_0cfaa8f7
}

function sub_2de761fd(?) {
    return sub_2de761fd
}

function owner() {
    return owner
}

function sub_d8a97cc6(?) {
    return sub_d8a97cc6
}

function sub_f5c01976(?) {
    return sub_f5c01976
}

function _fallback() payable {
  stop
}

function deposit() payable {
    emit Deposit(0, msg.sender, msg.value, eth.balance(this.address));
}

function sub_9fa38801(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    sub_2de761fd = arg1
}

function setWbnbAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    stor3 = arg1
}

function sqrt(uint256 arg1) {
    require calldata.size - 4 >= 32
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function sub_9511fb99(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if arg2 < 1000:
        revert with 0, 'TOO LOW'
    sub_0b4ac0e7[address(arg1)] = arg2
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_82ebd975(?) {
    require calldata.size - 4 >= 96
    if not arg3:
        revert with 0, 'PAIR_NOT_EXIST'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call owner with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    emit Withdraw(0, msg.sender, arg1, arg1);
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    emit Withdraw(0, msg.sender, eth.balance(this.address), eth.balance(this.address));
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'INVALID TOKEN'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(address(arg1), msg.sender, arg2, ext_call.return_data[0]);
}

function sub_5629d258(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'INVALID TOKEN'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(address(arg1), msg.sender, ext_call.return_data[0], ext_call.return_data[0]);
}



}
