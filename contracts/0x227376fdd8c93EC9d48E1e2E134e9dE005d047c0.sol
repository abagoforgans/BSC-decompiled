contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 balance;
address stor9;
address stor10;
address stor11;
mapping of address stor99;

function getBalance() payable {
    return balance
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function acceptTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require ext_code.size(stor9)
    call stor9.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor3 != 0x73feaa1ee314f8c655e354234017be2193c9e24e:
        require ext_code.size(stor3)
        call stor3.0xb6b55f25 with:
             gas gas_remaining wei
            args arg1
    else:
        require ext_code.size(stor11)
        call stor11.enterStaking(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance += arg1
}

function addToken(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 7
    if address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]):
        revert with 0, 'This token is already set'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 7
    address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]) = arg2
}

function harvest() payable {
    require msg.sender == stor2
    if stor3 != 0x73feaa1ee314f8c655e354234017be2193c9e24e:
        require ext_code.size(stor3)
        call stor3.0x2e1a7d4d with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(stor11)
        staticcall stor11.pendingCake(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        call stor11.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor10)
    call stor10.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawAll() payable {
    require msg.sender == stor1
    if stor3 != 0x73feaa1ee314f8c655e354234017be2193c9e24e:
        require ext_code.size(stor3)
        call stor3.0x2e1a7d4d with:
             gas gas_remaining wei
            args balance
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, balance
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        require ext_code.size(stor11)
        staticcall stor11.pendingCake(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        call stor11.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args balance
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    call stor10.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balance = 0
    return balance
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    if balance < arg1:
        revert with 0, 'There isn't enough balance'
    if stor3 != 0x73feaa1ee314f8c655e354234017be2193c9e24e:
        require ext_code.size(stor3)
        call stor3.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        require ext_code.size(stor11)
        staticcall stor11.pendingCake(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        call stor11.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    call stor10.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balance -= arg1
}

function sub_1667a54e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    if not address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]):
        revert with 0, 'This pool does not exist'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 8
    _137 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[0] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    idx = mem[64]
    s = 0
    while ceil32(arg1.length) + stor[_137].length + 128 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + stor[_137].length + 128] = 7
    if not address(stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor[_137].length + -mem[64] + 160])]):
        revert with 0, 'This token does not exist'
    _233 = mem[64]
    _234 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_234 + _233] = 6
    stor3 = address(stor[sha3(mem[mem[64] len _234 + _233 + -mem[64] + 32])])
    _275 = mem[64]
    _276 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_276 + _275] = 8
    _296 = sha3(mem[mem[64] len _276 + _275 + -mem[64] + 32])
    _297 = mem[64]
    mem[0] = sha3(mem[mem[64] len _276 + _275 + -mem[64] + 32])
    mem[mem[64]] = uint256(stor[sha3(mem[0])])
    idx = mem[64]
    s = 0
    while _297 + stor[_296].length > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[_297 + stor[_296].length] = 7
    stor4 = address(stor[sha3(mem[mem[64] len _297 + stor[_296].length + -mem[64] + 32])])
    stor10 = stor4
}

function sub_bfb401f0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 6
    if address(stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]):
        revert with 0, 'This pool is already set'
    _63 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160])
    mem[_63 + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 7
    if not address(stor[mem[ceil32(arg1.length) + arg3.length + 192 len _63 - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]):
        revert with 0, 'This token does not exist'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 6
    address(stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]) = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 8
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        uint256(stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][]) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    else:
        uint256(stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]) = 0
        idx = 0
        while stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)].length + 31 / 32 > idx:
            uint256(stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)][idx]) = 0
            idx = idx + 1
            continue 
    require ext_code.size(stor9)
    call stor9.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_58b52d82(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == stor2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    if not address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]):
        revert with 0, 'This pool does not exist'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 8
    _359 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[0] = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    idx = mem[64]
    s = 0
    while ceil32(arg1.length) + stor[_359].length + 128 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + stor[_359].length + 128] = 7
    if not address(stor[sha3(mem[mem[64] len ceil32(arg1.length) + stor[_359].length + -mem[64] + 160])]):
        revert with 0, 'This pair is not set'
    if stor3 != 0x73feaa1ee314f8c655e354234017be2193c9e24e:
        require ext_code.size(stor3)
        call stor3.0x2e1a7d4d with:
             gas gas_remaining wei
            args balance
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(stor10)
        call stor10.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2, ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _727 = mem[64]
        _728 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_728 + _727] = 6
        stor3 = address(stor[sha3(mem[mem[64] len _728 + _727 + -mem[64] + 32])])
        _787 = mem[64]
        _788 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_788 + _787] = 8
        _854 = sha3(mem[mem[64] len _788 + _787 + -mem[64] + 32])
        _855 = mem[64]
        mem[0] = sha3(mem[mem[64] len _788 + _787 + -mem[64] + 32])
        mem[mem[64]] = uint256(stor[sha3(mem[0])])
        idx = mem[64]
        s = 0
        while _855 + stor[_854].length > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        mem[_855 + stor[_854].length] = 7
        stor4 = address(stor[sha3(mem[mem[64] len _855 + stor[_854].length + -mem[64] + 32])])
    else:
        require ext_code.size(stor11)
        staticcall stor11.pendingCake(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        call stor11.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args balance
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(stor10)
        call stor10.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2, ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _729 = mem[64]
        _730 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_730 + _729] = 6
        stor3 = address(stor[sha3(mem[mem[64] len _730 + _729 + -mem[64] + 32])])
        _794 = mem[64]
        _795 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_795 + _794] = 8
        _860 = sha3(mem[mem[64] len _795 + _794 + -mem[64] + 32])
        _861 = mem[64]
        mem[0] = sha3(mem[mem[64] len _795 + _794 + -mem[64] + 32])
        mem[mem[64]] = uint256(stor[sha3(mem[0])])
        idx = mem[64]
        s = 0
        while _861 + stor[_860].length > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        mem[_861 + stor[_860].length] = 7
        stor4 = address(stor[sha3(mem[mem[64] len _861 + stor[_860].length + -mem[64] + 32])])
    stor10 = stor4
    if stor3 != 0x73feaa1ee314f8c655e354234017be2193c9e24e:
        require ext_code.size(stor3)
        call stor3.0xb6b55f25 with:
             gas gas_remaining wei
            args balance
    else:
        require ext_code.size(stor11)
        call stor11.enterStaking(uint256 rg1) with:
             gas gas_remaining wei
            args balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
