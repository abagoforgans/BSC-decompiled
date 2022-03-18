contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1)
#
const balanceOf = eth.balance(this.address)


uint32 stor0;
address owner;
uint256 stor0;
address sub_e09c0096Address;
address sub_39cdbacdAddress;
address sub_371fecf5Address;
uint32 sub_2de761fd; offset 160
uint32 sub_f5c01976; offset 192
address sub_8f7b5093Address;
uint256 sub_d8a97cc6;
address sub_145be874Address;

function sub_145be874(?) {
    return sub_145be874Address
}

function sub_2de761fd(?) {
    return sub_2de761fd
}

function sub_371fecf5(?) {
    return sub_371fecf5Address
}

function sub_39cdbacd(?) {
    return sub_39cdbacdAddress
}

function owner() {
    return address(owner)
}

function sub_8f7b5093(?) {
    return sub_8f7b5093Address
}

function sub_d8a97cc6(?) {
    return sub_d8a97cc6
}

function sub_e09c0096(?) {
    return sub_e09c0096Address
}

function sub_f5c01976(?) {
    return sub_f5c01976
}

function _fallback() payable {
    revert
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

function sub_9fa38801(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    sub_2de761fd = arg1
}

function sub_0d7db440(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    sub_371fecf5Address = arg1
}

function sub_3c9a3096(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    sub_8f7b5093Address = arg1
}

function sub_61815759(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    sub_39cdbacdAddress = arg1
}

function sub_7e624a92(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    sub_e09c0096Address = arg1
}

function deposit() payable {
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    emit Deposit(0, msg.sender, msg.value, eth.balance(this.address));
}

function setWbnbAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    sub_145be874Address = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(address(owner), arg1);
    address(owner) = arg1
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
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
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
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    call address(owner) with:
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
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    call address(owner) with:
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
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    if not arg1:
        revert with 0, 'INVALID TOKEN'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
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
    if address(owner) != msg.sender:
        revert with 0, 32, 18, 0xfe4f776e61626c653a20464f5242494444454e00000000000000000000000000
    if not arg1:
        revert with 0, 'INVALID TOKEN'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
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
