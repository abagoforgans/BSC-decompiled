contract main {




// =====================  Runtime code  =====================


#
#  - sub_5ce61543(?)
#
const unit = 10^18


address owner;
uint256 stor1;
uint8 stor2;
uint256 sub_c3e3fe2e;
address mainAddress;
address sub_5dc76d47Address;
mapping of struct sub_374ee43e;
uint256 sub_45b8d9b3;
array of struct sub_efad985c;
uint256 sub_0a1053fb;
uint256 sub_b1597f18;
uint256 sub_91d223d8;
uint256 sub_e1320cdf;
uint256 sub_8e2762a3;
uint256 sub_44e7a9a6;
uint256 sub_b4101a20;
uint256 burnPercent;

function burnPercent() payable {
    return burnPercent
}

function sub_0a1053fb(?) payable {
    return sub_0a1053fb
}

function sub_374ee43e(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_374ee43e[arg1].field_0), sub_374ee43e[arg1].field_256, sub_374ee43e[arg1].field_512
}

function sub_44e7a9a6(?) payable {
    return sub_44e7a9a6
}

function sub_45b8d9b3(?) payable {
    return sub_45b8d9b3
}

function paused() payable {
    return bool(stor2)
}

function sub_5dc76d47(?) payable {
    return sub_5dc76d47Address
}

function owner() payable {
    return owner
}

function sub_8e2762a3(?) payable {
    return sub_8e2762a3
}

function sub_91d223d8(?) payable {
    return sub_91d223d8
}

function sub_b1597f18(?) payable {
    return sub_b1597f18
}

function sub_b4101a20(?) payable {
    return sub_b4101a20
}

function sub_c3e3fe2e(?) payable {
    return sub_c3e3fe2e
}

function main() payable {
    return mainAddress
}

function sub_e1320cdf(?) payable {
    return sub_e1320cdf
}

function sub_efad985c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_efad985c[arg1].field_0
    return sub_efad985c[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_00402c76(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_0a1053fb = arg1
}

function sub_7a787b2d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_b1597f18 = arg1
}

function sub_908fedc6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_45b8d9b3 = arg1
}

function sub_bb5f34df(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_5dc76d47Address = arg1
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        if not stor2:
            revert with 0, 'Pausable: not paused'
        stor2 = 0
        emit Unpaused(msg.sender);
    else:
        if stor2:
            revert with 0, 'Pausable: paused'
        stor2 = 1
        emit Paused(msg.sender);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8d9d4c81(?) payable {
    require ext_code.size(mainAddress)
    staticcall mainAddress.box() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8d9d4c81 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_c3e3fe2e > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - sub_c3e3fe2e)
}

function setPercent(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 + arg5 + arg4 + arg3 + arg2 != 100:
        revert with 0, 'Invalid value'
    sub_91d223d8 = arg1
    sub_e1320cdf = arg2
    sub_8e2762a3 = arg3
    sub_44e7a9a6 = arg4
    sub_b4101a20 = arg5
    burnPercent = arg6
}

function sub_dc3c9e4b(?) payable {
    require calldata.size - 4 >= 32
    if not sub_efad985c[address(arg1)].field_0:
        mem[(32 * sub_efad985c[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_efad985c[address(arg1)].field_0) + 160] = sub_efad985c[address(arg1)].field_0
        mem[(32 * sub_efad985c[address(arg1)].field_0) + 192 len floor32(sub_efad985c[address(arg1)].field_0)] = mem[128 len floor32(sub_efad985c[address(arg1)].field_0)]
        return memory
          from (32 * sub_efad985c[address(arg1)].field_0) + 128
           len (96 * sub_efad985c[address(arg1)].field_0) + 64
    mem[128] = sub_efad985c[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_efad985c[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_efad985c[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_efad985c[address(arg1)].field_0) + 192 len floor32(sub_efad985c[address(arg1)].field_0)] = mem[128 len floor32(sub_efad985c[address(arg1)].field_0)]
    return Array(len=sub_efad985c[address(arg1)].field_0, data=mem[128 len floor32(sub_efad985c[address(arg1)].field_0)], mem[(32 * sub_efad985c[address(arg1)].field_0) + floor32(sub_efad985c[address(arg1)].field_0) + 192 len (32 * sub_efad985c[address(arg1)].field_0) - floor32(sub_efad985c[address(arg1)].field_0)]), 
}

function sub_0d3926c0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(mainAddress)
    staticcall mainAddress.registered(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unregistered'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0, 'Invalid _amount'
    if arg1 > sub_374ee43e[msg.sender].field_256:
        revert with 0, 'No unboxing'
    if block.number <= sub_374ee43e[msg.sender].field_512:
        revert with 0, 'Please wait'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > sub_374ee43e[msg.sender].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_374ee43e[msg.sender].field_256 -= arg1
    require ext_code.size(mainAddress)
    staticcall mainAddress.0x7ff20be0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = 0x958c4c6300000000000000000000000000000000000000000000000000000000
    mem[164] = msg.sender
    mem[196] = bool(sub_374ee43e[msg.sender].field_0)
    mem[228] = sub_374ee43e[msg.sender].field_512
    mem[260] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x958c4c63 with:
         gas gas_remaining wei
        args msg.sender, bool(sub_374ee43e[msg.sender].field_0), sub_374ee43e[msg.sender].field_512, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _32 = mem[160 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[160 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, msg.sender) >> 32 + 160]
    _35 = mem[_32 + 160]
    mem[ceil32(return_data.size) + 192 len floor32(mem[_32 + 160])] = mem[_32 + 192 len floor32(mem[_32 + 160])]
    mem[64] = (32 * _35) + ceil32(return_data.size) + 192
    mem[32] = 8
    sub_efad985c[msg.sender].field_0 = mem[ceil32(return_data.size) + 160]
    mem[0] = sha3(msg.sender, 8)
    if not mem[ceil32(return_data.size) + 160]:
        idx = 0
        while sub_efad985c[msg.sender].field_0 > idx:
            sub_efad985c[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 192
        while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 160]) + 192 > idx:
            sub_efad985c[msg.sender][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 160]) + 31) >> 5
        while sub_efad985c[msg.sender].field_0 > idx:
            sub_efad985c[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x7335f45e: arg1, sub_efad985c[msg.sender].field_0, msg.sender
    stor1 = 1
}

function open(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(mainAddress)
    staticcall mainAddress.registered(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unregistered'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than zero'
    require ext_code.size(mainAddress)
    staticcall mainAddress.box() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_374ee43e[msg.sender].field_256:
        revert with 0, 'Already unboxing'
    if sub_45b8d9b3 + block.number < block.number:
        revert with 0, 'SafeMath: addition overflow'
    sub_374ee43e[msg.sender].field_0 = 0
    sub_374ee43e[msg.sender].field_256 = arg1
    sub_374ee43e[msg.sender].field_512 = sub_45b8d9b3 + block.number
    require ext_code.size(sub_5dc76d47Address)
    call sub_5dc76d47Address.open(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mainAddress)
    staticcall mainAddress.getUser(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(mainAddress)
    staticcall mainAddress.0x8920e4f3 with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mainAddress)
    staticcall mainAddress.0xf3a5ce6b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUSDTAmountOut(uint256 rg1) with:
            gas gas_remaining wei
           args sub_0a1053fb
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(mainAddress)
        staticcall mainAddress.0x9a4da761 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_e1320cdf:
            if address(ext_call.return_data[0]):
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if sub_44e7a9a6:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_5dc76d47Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if sub_b4101a20:
            require ext_code.size(mainAddress)
            staticcall mainAddress.0x399fac07 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if burnPercent:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not sub_91d223d8:
            require ext_code.size(mainAddress)
            staticcall mainAddress.0x9a4da761 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_e1320cdf:
                if not sub_8e2762a3:
                    if not sub_44e7a9a6:
                        if not sub_b4101a20:
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(mainAddress)
                            staticcall mainAddress.0x399fac07 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), 0
                            else:
                                if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not arg1 * ext_call.return_data[0]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_5dc76d47Address, 0
                        else:
                            if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_b4101a20:
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(mainAddress)
                            staticcall mainAddress.0x399fac07 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), 0
                            else:
                                if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if arg1 * ext_call.return_data[0]:
                        if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100:
                            require ext_code.size(mainAddress)
                            staticcall mainAddress.0x8c85476f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if not sub_44e7a9a6:
                        if not sub_b4101a20:
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(mainAddress)
                            staticcall mainAddress.0x399fac07 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), 0
                            else:
                                if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not arg1 * ext_call.return_data[0]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_5dc76d47Address, 0
                        else:
                            if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_b4101a20:
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(mainAddress)
                            staticcall mainAddress.0x399fac07 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), 0
                            else:
                                if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if burnPercent:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not address(ext_call.return_data[0]):
                    if not arg1 * ext_call.return_data[0]:
                        if not sub_8e2762a3:
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg1 * ext_call.return_data[0]:
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if sub_e1320cdf * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_e1320cdf:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_8e2762a3:
                            if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x8c85476f with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_e1320cdf * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not arg1 * ext_call.return_data[0]:
                                if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100 < sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_e1320cdf * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                if (sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100) + (sub_e1320cdf * arg1 * ext_call.return_data[0] / 100) < sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100) + (sub_e1320cdf * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), (sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100) + (sub_e1320cdf * arg1 * ext_call.return_data[0] / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not arg1 * ext_call.return_data[0]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(ext_call.return_data[0]), 0
                    else:
                        if sub_e1320cdf * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_e1320cdf:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(ext_call.return_data[0]), sub_e1320cdf * arg1 * ext_call.return_data[0] / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_8e2762a3:
                        if not sub_44e7a9a6:
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, 0
                            else:
                                if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg1 * ext_call.return_data[0]:
                            if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                            if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x8c85476f with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not sub_44e7a9a6:
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, 0
                            else:
                                if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if not arg1 * ext_call.return_data[0]:
                if 0 > arg1 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(mainAddress)
                staticcall mainAddress.0x9a4da761 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not sub_e1320cdf:
                    if not sub_8e2762a3:
                        if not sub_44e7a9a6:
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, 0
                            else:
                                if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg1 * ext_call.return_data[0]:
                            if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x8c85476f with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not sub_44e7a9a6:
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not arg1 * ext_call.return_data[0]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, 0
                            else:
                                if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not address(ext_call.return_data[0]):
                        if not arg1 * ext_call.return_data[0]:
                            if not sub_8e2762a3:
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg1 * ext_call.return_data[0]:
                                    if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sub_e1320cdf * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_e1320cdf:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_8e2762a3:
                                if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_e1320cdf * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100 < sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_e1320cdf * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if (sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100) + (sub_e1320cdf * arg1 * ext_call.return_data[0] / 100) < sub_e1320cdf * arg1 * ext_call.return_data[0] / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100) + (sub_e1320cdf * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), (sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100) + (sub_e1320cdf * arg1 * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not arg1 * ext_call.return_data[0]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not arg1 * ext_call.return_data[0]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), 0
                        else:
                            if sub_e1320cdf * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_e1320cdf:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), sub_e1320cdf * arg1 * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_8e2762a3:
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg1 * ext_call.return_data[0]:
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_8e2762a3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_8e2762a3 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not arg1 * ext_call.return_data[0]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if sub_44e7a9a6 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, sub_44e7a9a6 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1 * ext_call.return_data[0]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if sub_b4101a20 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_b4101a20 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not arg1 * ext_call.return_data[0]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if burnPercent * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, burnPercent * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_91d223d8 * arg1 * ext_call.return_data[0] / arg1 * ext_call.return_data[0] != sub_91d223d8:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 > arg1 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(mainAddress)
                staticcall mainAddress.0x9a4da761 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not sub_e1320cdf:
                    if not sub_8e2762a3:
                        if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                            require ext_code.size(mainAddress)
                            staticcall mainAddress.0x8c85476f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), sub_91d223d8 * arg1 * ext_call.return_data[0] / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if not sub_44e7a9a6:
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, 0
                            else:
                                if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                            if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x8c85476f with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_91d223d8 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if (arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_8e2762a3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x8c85476f with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if not sub_44e7a9a6:
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, 0
                            else:
                                if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not sub_b4101a20:
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x399fac07 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), 0
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if burnPercent:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not address(ext_call.return_data[0]):
                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                            if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_8e2762a3:
                                if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_91d223d8 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), sub_91d223d8 * arg1 * ext_call.return_data[0] / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_8e2762a3:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if (arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_e1320cdf:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_8e2762a3:
                                if ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    if ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_8e2762a3:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    if (arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x8c85476f with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + ((arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                if not sub_44e7a9a6:
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not sub_b4101a20:
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(mainAddress)
                                        staticcall mainAddress.0x399fac07 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if burnPercent:
                                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                            else:
                                                if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), 0
                        else:
                            if (arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_e1320cdf:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_e1320cdf) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_e1320cdf) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not sub_8e2762a3:
                            if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                require ext_code.size(mainAddress)
                                staticcall mainAddress.0x8c85476f with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), sub_91d223d8 * arg1 * ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), sub_91d223d8 * arg1 * ext_call.return_data[0] / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                if (arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_8e2762a3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                                if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) < sub_91d223d8 * arg1 * ext_call.return_data[0] / 100:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x8c85476f with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), ((arg1 * ext_call.return_data[0] * sub_8e2762a3) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_8e2762a3) / 100) + (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            if not sub_44e7a9a6:
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, 0
                                else:
                                    if (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_44e7a9a6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_5dc76d47Address, (arg1 * ext_call.return_data[0] * sub_44e7a9a6) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_44e7a9a6) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not sub_b4101a20:
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(mainAddress)
                                    staticcall mainAddress.0x399fac07 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), 0
                                    else:
                                        if (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != sub_b4101a20:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(ext_call.return_data[0]), (arg1 * ext_call.return_data[0] * sub_b4101a20) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * sub_b4101a20) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if burnPercent:
                                        if not (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                        else:
                                            if (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / (arg1 * ext_call.return_data[0]) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100) != burnPercent:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[677 len 31]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).burnFrom(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, (arg1 * ext_call.return_data[0] * burnPercent) - (sub_91d223d8 * arg1 * ext_call.return_data[0] / 100 * burnPercent) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
    emit Open(arg1, msg.sender);
    stor1 = 1
}



}
