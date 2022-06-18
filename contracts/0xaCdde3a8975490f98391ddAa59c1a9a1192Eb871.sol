contract main {




// =====================  Runtime code  =====================


const nowTime = block.timestamp


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
uint16 stor0;
address adminAddress; offset 32
uint256 stor0; offset 32
uint256 stor0; offset 16
address sub_4e4f8558Address;
mapping of uint8 stor2;
array of struct sub_8aa92792;
array of struct sub_997fb037;
mapping of uint256 sub_eb24d5f0;
mapping of uint256 sub_25de969b;
array of struct sub_f9024237;
uint256 sub_83fabe03;
uint256 sub_ba6dc237;
uint256 sub_ebb1a838;
uint256 sub_f57ff39c;
uint256 startTime;
uint256 endTime;
uint256 sub_e8a48537;
address sub_8d9c302dAddress;
address usdtTokenAddress;
uint256 sub_d9a91386;
uint256 sub_82543b32;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of address stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function sub_25de969b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_25de969b[arg1]
}

function endTime() payable {
    return endTime
}

function sub_396a2779(?) payable {
    return sub_f9024237.length
}

function sub_4e4f8558(?) payable {
    return sub_4e4f8558Address
}

function startTime() payable {
    return startTime
}

function sub_7f41db2e(?) payable {
    return sub_997fb037.length
}

function sub_82543b32(?) payable {
    return sub_82543b32
}

function sub_83fabe03(?) payable {
    return sub_83fabe03
}

function sub_8aa92792(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8aa92792.length
    return sub_8aa92792[arg1].field_0, sub_8aa92792[arg1].field_256
}

function sub_8d9c302d(?) payable {
    return sub_8d9c302dAddress
}

function sub_997fb037(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_997fb037.length
    return sub_997fb037[arg1].field_0, sub_997fb037[arg1].field_256, sub_997fb037[arg1].field_512, sub_997fb037[arg1].field_768
}

function usdtToken() payable {
    return usdtTokenAddress
}

function isPaused() payable {
    return bool(uint8(stor0.field_16))
}

function sub_ba6dc237(?) payable {
    return sub_ba6dc237
}

function sub_cbcc375b(?) payable {
    return sub_8aa92792.length
}

function auth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_d9a91386(?) payable {
    return sub_d9a91386
}

function sub_e8a48537(?) payable {
    return sub_e8a48537
}

function sub_eb24d5f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eb24d5f0[arg1]
}

function sub_ebb1a838(?) payable {
    return sub_ebb1a838
}

function sub_f57ff39c(?) payable {
    return sub_f57ff39c
}

function admin() payable {
    return adminAddress
}

function sub_f9024237(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f9024237.length
    return sub_f9024237[arg1].field_0, sub_f9024237[arg1].field_256, sub_f9024237[arg1].field_512
}

function _fallback() payable {
    revert
}

function isStart() payable {
    return block.timestamp >= startTime
}

function sub_4c187a61(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    require arg1 < sub_8aa92792.length
    sub_8aa92792[arg1].field_0 = arg2
}

function sub_c43768c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    sub_4e4f8558Address = address(arg1)
    emit 0x92367127: address(arg1)
}

function acceptAdmin() payable {
    if sub_4e4f8558Address != msg.sender:
        revert with 0, 'admin != adminPending'
    if not msg.sender:
        revert with 0, 'admin != adminPending'
    Mask(224, 0, stor0.field_32) = sub_4e4f8558Address
    sub_4e4f8558Address = 0
    emit SetAdmin(sub_4e4f8558Address);
}

function setIsPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    if arg1 == bool(uint8(stor0.field_16)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setIsPaused: isPaused != _isPaused'
    Mask(240, 0, stor0.field_16) = Mask(240, 0, arg1)
    emit 0x78f78ead: arg1
}

function adminWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AdminWithdraw(msg.sender, arg2, arg1);
    return 1
}

function setAuth(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    if arg2 == bool(stor2[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setAuth: auth[_account] != _authState'
    stor2[address(arg1)] = uint8(arg2)
    emit 0x4d54ccaf: address(arg1), arg2
}

function sub_79463566(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    if not sub_eb24d5f0[address(arg1)]:
        revert with 0, 'not harry'
    sub_eb24d5f0[address(arg1)] = 0
    sub_f9024237.length++
    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[address(arg1)]
    storA66C[stor7.length] = block.timestamp
    storA66C[stor7.length] = address(arg1)
    return 1
}

function sub_0b05975f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9fcf9c62: msg.sender, address(arg1), address(arg2), arg3
    return 1
}

function adminWithdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit AdminWithdrawToken(msg.sender, arg3, arg1, arg2);
    return 1
}

function sub_cb3f9658(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    if not address(arg1):
        revert with 0, 'address error'
    require arg2 > 0
    idx = 0
    while idx < sub_8aa92792.length:
        mem[0] = 3
        if sub_8aa92792[idx].field_256 == address(arg1):
            revert with 0, 'same address'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_8aa92792.length++
    sub_8aa92792[sub_8aa92792.length].field_0 = arg2
    storC257[stor3.length] = address(arg1)
}

function sub_576ed9fa(?) payable {
    if not sub_eb24d5f0[msg.sender]:
        revert with 0, 'not harry'
    call sub_8d9c302dAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_eb24d5f0[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_eb24d5f0[msg.sender] = 0
    sub_f9024237.length++
    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
    storA66C[stor7.length] = block.timestamp
    storA66C[stor7.length] = msg.sender
    return 1
}

function sub_aa0a7039(?) payable {
    if uint8(stor0.field_8):
        Mask(224, 0, stor0.field_32) = Mask(224, 0, msg.sender)
        emit SetAdmin(address arg1):
                      0,
                      Mask(160, 96, msg.sender) >> 96,
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            Mask(224, 0, stor0.field_32) = Mask(224, 0, msg.sender)
            emit SetAdmin(address arg1):
                          0,
                          Mask(160, 96, msg.sender) >> 96,
        else:
            uint16(stor0.field_0) = 257
            Mask(224, 0, stor0.field_32) = Mask(224, 0, msg.sender)
            emit SetAdmin(address arg1):
                          0,
                          Mask(160, 96, msg.sender) >> 96,
            uint8(stor0.field_8) = 0
}

function sub_754802f5(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    sub_8d9c302dAddress = address(arg1)
    usdtTokenAddress = address(arg2)
    sub_83fabe03 = arg3
    sub_ba6dc237 = arg4
    if not arg7:
        if arg5 and 1 > -1 / arg5:
            revert with 0, 17
        sub_ebb1a838 = arg5
    else:
        if bool(bool(arg7 < 78)) or bool(bool(arg7 < 32)):
            if arg5 and 10^arg7 > -1 / arg5:
                revert with 0, 17
            sub_ebb1a838 = arg5 * 10^arg7
        else:
            s = 10
            t = 1
            idx = arg7
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg5 and s * t > -1 / arg5:
                revert with 0, 17
            sub_ebb1a838 = arg5 * s * t
    if not arg8:
        if arg6 and 1 > -1 / arg6:
            revert with 0, 17
        sub_f57ff39c = arg6
    else:
        if bool(bool(arg8 < 78)) or bool(bool(arg8 < 32)):
            if arg6 and 10^arg8 > -1 / arg6:
                revert with 0, 17
            sub_f57ff39c = arg6 * 10^arg8
        else:
            s = 10
            t = 1
            idx = arg8
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg6 and s * t > -1 / arg6:
                revert with 0, 17
            sub_f57ff39c = arg6 * s * t
    sub_d9a91386 = arg7
    sub_82543b32 = arg8
    endTime = arg10
    startTime = arg9
    if uint8(stor0.field_8):
        Mask(224, 0, stor0.field_32) = Mask(224, 0, msg.sender)
        emit SetAdmin(address arg1):
                      0,
                      Mask(160, 96, msg.sender) >> 96,
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            Mask(224, 0, stor0.field_32) = Mask(224, 0, msg.sender)
            emit SetAdmin(address arg1):
                          0,
                          Mask(160, 96, msg.sender) >> 96,
        else:
            uint16(stor0.field_0) = 257
            Mask(224, 0, stor0.field_32) = Mask(224, 0, msg.sender)
            emit SetAdmin(address arg1):
                          0,
                          Mask(160, 96, msg.sender) >> 96,
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
}

function sub_dbaf4df5(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'usdt is zero'
    if block.timestamp < startTime:
        revert with 0, 'not start'
    if block.timestamp >= endTime:
        revert with 0, 'time over'
    mem[0] = msg.sender
    mem[32] = 6
    if arg1 > !sub_25de969b[msg.sender]:
        revert with 0, 17
    if arg1 + sub_25de969b[msg.sender] > sub_f57ff39c:
        revert with 0, 'usdt limit'
    if not sub_82543b32:
        if sub_83fabe03 and 1 > -1 / sub_83fabe03:
            revert with 0, 17
        if not sub_d9a91386:
            if arg1 and sub_ba6dc237 > -1 / arg1:
                revert with 0, 17
            if arg1 * sub_ba6dc237 and 1 > -1 / arg1 * sub_ba6dc237:
                revert with 0, 17
            if not sub_83fabe03:
                revert with 0, 18
            if arg1 * sub_ba6dc237 / sub_83fabe03 > !sub_e8a48537:
                revert with 0, 17
            if (arg1 * sub_ba6dc237 / sub_83fabe03) + sub_e8a48537 > sub_ebb1a838:
                revert with 0, 'harry limit'
            idx = 0
            s = 0
            while idx < sub_8aa92792.length:
                mem[0] = 3
                if sub_8aa92792[idx].field_0 <= 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if not s:
                call usdtTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03):
                    revert with 0, 17
                sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03
                if arg1 > !sub_25de969b[msg.sender]:
                    revert with 0, 17
                sub_25de969b[msg.sender] += arg1
                if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03):
                    revert with 0, 17
                sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03
                sub_997fb037.length++
                sub_997fb037[sub_997fb037.length].field_0 = arg1
                stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03
                stor8A35[stor4.length] = block.timestamp
                stor8A35[stor4.length] = msg.sender
                if not sub_eb24d5f0[msg.sender]:
                    revert with 0, 'not harry'
                call sub_8d9c302dAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_eb24d5f0[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                sub_eb24d5f0[msg.sender] = 0
                sub_f9024237.length++
                sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                storA66C[stor7.length] = block.timestamp
                storA66C[stor7.length] = msg.sender
                return 1
            if s > test266151307():
                revert with 0, 65
            mem[96] = s
            mem[64] = (32 * s) + 128
            if not s:
                idx = 0
                s = 0
                t = 0
                while idx < sub_8aa92792.length:
                    mem[0] = 3
                    _849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_849] = sub_8aa92792[idx].field_0
                    mem[_849 + 32] = sub_8aa92792[idx].field_256
                    if not sub_8aa92792[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = _849
                    if s == -1:
                        revert with 0, 17
                    if t > !sub_8aa92792[idx].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    t = t + sub_8aa92792[idx].field_0
                    continue 
                if var80001 < 1:
                    revert with 0, 17
                if var84002 < var84001:
                    if var86001 >= mem[96]:
                        revert with 0, 50
                    if arg1 and var90002 > -1 / arg1:
                        revert with 0, 17
                    if not t:
                        revert with 0, 18
                    if var102001 > !var102002:
                        revert with 0, 17
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[var108001] = msg.sender
                    mem[var108001 + 32] = address(var108003)
                    mem[var108001 + 64] = var108002
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len var110001 + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    if arg1 <= var84007:
                        revert with 0, 'weight error'
                    if mem[96] < 1:
                        revert with 0, 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 0, 50
                    _4000 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                    if arg1 < var84007:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4000)
                    mem[mem[64] + 68] = arg1 - var84007
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_4000), arg1 - var84007
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4105 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4105] == bool(mem[_4105])
                    if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03):
                        revert with 0, 17
                    sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03
                    if arg1 > !sub_25de969b[msg.sender]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    sub_25de969b[msg.sender] += arg1
                    mem[32] = 5
                    if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03):
                        revert with 0, 17
                    sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03
                    _4279 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4279] = arg1
                    mem[_4279 + 32] = arg1 * sub_ba6dc237 / sub_83fabe03
                    mem[_4279 + 64] = block.timestamp
                    mem[_4279 + 96] = msg.sender
                    sub_997fb037.length++
                    sub_997fb037[sub_997fb037.length].field_0 = arg1
                    stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03
                    stor8A35[stor4.length] = block.timestamp
                    stor8A35[stor4.length] = msg.sender
                    mem[0] = msg.sender
                    mem[32] = 5
                    if not sub_eb24d5f0[msg.sender]:
                        revert with 0, 'not harry'
                    _4375 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4375] = sub_eb24d5f0[msg.sender]
                    mem[_4375 + 32] = block.timestamp
                    mem[_4375 + 64] = msg.sender
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                    call sub_8d9c302dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_eb24d5f0[msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4431] == bool(mem[_4431])
                    sub_eb24d5f0[msg.sender] = 0
                    sub_f9024237.length++
                    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                    storA66C[stor7.length] = block.timestamp
                    storA66C[stor7.length] = msg.sender
                    return 1
            else:
                mem[64] = (32 * s) + 192
                mem[(32 * s) + 128] = 0
                mem[(32 * s) + 160] = 0
                mem[128] = (32 * s) + 128
                t = 128
                idx = s
                while idx - 1:
                    mem[64] = mem[64] + 64
                    mem[(32 * s) + 128] = 0
                    mem[(32 * s) + 160] = 0
                    mem[t + 32] = (32 * s) + 128
                    t = t + 32
                    idx = idx - 1
                    continue 
                idx = 0
                s = 0
                t = 0
                while idx < sub_8aa92792.length:
                    mem[0] = 3
                    _1647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1647] = sub_8aa92792[idx].field_0
                    mem[_1647 + 32] = sub_8aa92792[idx].field_256
                    if not sub_8aa92792[idx].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = _1647
                    if s == -1:
                        revert with 0, 17
                    if t > !sub_8aa92792[idx].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    t = t + sub_8aa92792[idx].field_0
                    continue 
                if var84001 < 1:
                    revert with 0, 17
                if var88002 < var88001:
                    if var90001 >= mem[96]:
                        revert with 0, 50
                    if arg1 and var94002 > -1 / arg1:
                        revert with 0, 17
                    if not t:
                        revert with 0, 18
                    if var106001 > !var106002:
                        revert with 0, 17
                    # nil
                else:
                    if arg1 <= var88007:
                        revert with 0, 'weight error'
                    if mem[96] < 1:
                        revert with 0, 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 0, 50
                    _4842 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                    if arg1 < var88007:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(_4842)
                    mem[mem[64] + 68] = arg1 - var88007
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_4842), arg1 - var88007
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4941 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4941] == bool(mem[_4941])
                    if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03):
                        revert with 0, 17
                    sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03
                    if arg1 > !sub_25de969b[msg.sender]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    sub_25de969b[msg.sender] += arg1
                    mem[32] = 5
                    if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03):
                        revert with 0, 17
                    sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03
                    _5123 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5123] = arg1
                    mem[_5123 + 32] = arg1 * sub_ba6dc237 / sub_83fabe03
                    mem[_5123 + 64] = block.timestamp
                    mem[_5123 + 96] = msg.sender
                    sub_997fb037.length++
                    sub_997fb037[sub_997fb037.length].field_0 = arg1
                    stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03
                    stor8A35[stor4.length] = block.timestamp
                    stor8A35[stor4.length] = msg.sender
                    mem[0] = msg.sender
                    mem[32] = 5
                    if not sub_eb24d5f0[msg.sender]:
                        revert with 0, 'not harry'
                    _5218 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5218] = sub_eb24d5f0[msg.sender]
                    mem[_5218 + 32] = block.timestamp
                    mem[_5218 + 64] = msg.sender
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                    call sub_8d9c302dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_eb24d5f0[msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5272] == bool(mem[_5272])
                    sub_eb24d5f0[msg.sender] = 0
                    sub_f9024237.length++
                    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                    storA66C[stor7.length] = block.timestamp
                    storA66C[stor7.length] = msg.sender
                    return 1
        else:
            if bool(bool(sub_d9a91386 < 78)) or bool(bool(sub_d9a91386 < 32)):
                if arg1 and sub_ba6dc237 > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_ba6dc237 and 10^sub_d9a91386 > -1 / arg1 * sub_ba6dc237:
                    revert with 0, 17
                if not sub_83fabe03:
                    revert with 0, 18
                if arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 > !sub_e8a48537:
                    revert with 0, 17
                if (arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03) + sub_e8a48537 > sub_ebb1a838:
                    revert with 0, 'harry limit'
                idx = 0
                s = 0
                while idx < sub_8aa92792.length:
                    mem[0] = 3
                    if sub_8aa92792[idx].field_0 <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if not s:
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03):
                        revert with 0, 17
                    sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                    if arg1 > !sub_25de969b[msg.sender]:
                        revert with 0, 17
                    sub_25de969b[msg.sender] += arg1
                    if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03):
                        revert with 0, 17
                    sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                    sub_997fb037.length++
                    sub_997fb037[sub_997fb037.length].field_0 = arg1
                    stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                    stor8A35[stor4.length] = block.timestamp
                    stor8A35[stor4.length] = msg.sender
                    if not sub_eb24d5f0[msg.sender]:
                        revert with 0, 'not harry'
                    call sub_8d9c302dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_eb24d5f0[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_eb24d5f0[msg.sender] = 0
                    sub_f9024237.length++
                    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                    storA66C[stor7.length] = block.timestamp
                    storA66C[stor7.length] = msg.sender
                    return 1
                if s > test266151307():
                    revert with 0, 65
                mem[96] = s
                mem[64] = (32 * s) + 128
                if not s:
                    idx = 0
                    s = 0
                    t = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_846] = sub_8aa92792[idx].field_0
                        mem[_846 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = _846
                        if s == -1:
                            revert with 0, 17
                        if t > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        t = t + sub_8aa92792[idx].field_0
                        continue 
                    if var85001 < 1:
                        revert with 0, 17
                    if var89002 < var89001:
                        if var91001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var95002 > -1 / arg1:
                            revert with 0, 17
                        if not t:
                            revert with 0, 18
                        if var107001 > !var107002:
                            revert with 0, 17
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[var113001] = msg.sender
                        mem[var113001 + 32] = address(var113003)
                        mem[var113001 + 64] = var113002
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len var115001 + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        if arg1 <= var89007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _3997 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var89007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_3997)
                        mem[mem[64] + 68] = arg1 - var89007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_3997), arg1 - var89007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4102] == bool(mem[_4102])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        _4274 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_4274] = arg1
                        mem[_4274 + 32] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        mem[_4274 + 64] = block.timestamp
                        mem[_4274 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _4369 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4369] = sub_eb24d5f0[msg.sender]
                        mem[_4369 + 32] = block.timestamp
                        mem[_4369 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4423] == bool(mem[_4423])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                else:
                    mem[64] = (32 * s) + 192
                    mem[(32 * s) + 128] = 0
                    mem[(32 * s) + 160] = 0
                    mem[128] = (32 * s) + 128
                    t = 128
                    idx = s
                    while idx - 1:
                        mem[64] = mem[64] + 64
                        mem[(32 * s) + 128] = 0
                        mem[(32 * s) + 160] = 0
                        mem[t + 32] = (32 * s) + 128
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    s = 0
                    t = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _1644 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1644] = sub_8aa92792[idx].field_0
                        mem[_1644 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = _1644
                        if s == -1:
                            revert with 0, 17
                        if t > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        t = t + sub_8aa92792[idx].field_0
                        continue 
                    if var89001 < 1:
                        revert with 0, 17
                    if var93002 < var93001:
                        if var95001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var99002 > -1 / arg1:
                            revert with 0, 17
                        if not t:
                            revert with 0, 18
                        if var111001 > !var111002:
                            revert with 0, 17
                        # nil
                    else:
                        if arg1 <= var93007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _4840 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var93007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4840)
                        mem[mem[64] + 68] = arg1 - var93007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_4840), arg1 - var93007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4938] == bool(mem[_4938])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        _5118 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5118] = arg1
                        mem[_5118 + 32] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        mem[_5118 + 64] = block.timestamp
                        mem[_5118 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _5211 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_5211] = sub_eb24d5f0[msg.sender]
                        mem[_5211 + 32] = block.timestamp
                        mem[_5211 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5268] == bool(mem[_5268])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
            else:
                s = 10
                t = 1
                idx = sub_d9a91386
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if arg1 and sub_ba6dc237 > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_ba6dc237 and s * t > -1 / arg1 * sub_ba6dc237:
                    revert with 0, 17
                if not sub_83fabe03:
                    revert with 0, 18
                if arg1 * sub_ba6dc237 * s * t / sub_83fabe03 > !sub_e8a48537:
                    revert with 0, 17
                if (arg1 * sub_ba6dc237 * s * t / sub_83fabe03) + sub_e8a48537 > sub_ebb1a838:
                    revert with 0, 'harry limit'
                idx = 0
                u = 0
                while idx < sub_8aa92792.length:
                    mem[0] = 3
                    if sub_8aa92792[idx].field_0 <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = u + 1
                    continue 
                if not u:
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_e8a48537 > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03):
                        revert with 0, 17
                    sub_e8a48537 += arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                    if arg1 > !sub_25de969b[msg.sender]:
                        revert with 0, 17
                    sub_25de969b[msg.sender] += arg1
                    if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03):
                        revert with 0, 17
                    sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                    sub_997fb037.length++
                    sub_997fb037[sub_997fb037.length].field_0 = arg1
                    stor8A35[stor4.length] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                    stor8A35[stor4.length] = block.timestamp
                    stor8A35[stor4.length] = msg.sender
                    if not sub_eb24d5f0[msg.sender]:
                        revert with 0, 'not harry'
                    call sub_8d9c302dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_eb24d5f0[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_eb24d5f0[msg.sender] = 0
                    sub_f9024237.length++
                    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                    storA66C[stor7.length] = block.timestamp
                    storA66C[stor7.length] = msg.sender
                    return 1
                if u > test266151307():
                    revert with 0, 65
                mem[96] = u
                mem[64] = (32 * u) + 128
                if not u:
                    idx = 0
                    u = 0
                    v = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _1641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1641] = sub_8aa92792[idx].field_0
                        mem[_1641 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u
                            v = v
                            continue 
                        if u >= mem[96]:
                            revert with 0, 50
                        mem[(32 * u) + 128] = _1641
                        if u == -1:
                            revert with 0, 17
                        if v > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u + 1
                        v = v + sub_8aa92792[idx].field_0
                        continue 
                    if var90001 < 1:
                        revert with 0, 17
                    if var94002 < var94001:
                        if var96001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var100002 > -1 / arg1:
                            revert with 0, 17
                        if not v:
                            revert with 0, 18
                        if var112001 > !var112002:
                            revert with 0, 17
                        # nil
                    else:
                        if arg1 <= var94007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _4837 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var94007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4837)
                        mem[mem[64] + 68] = arg1 - var94007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_4837), arg1 - var94007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4934] == bool(mem[_4934])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        _5113 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5113] = arg1
                        mem[_5113 + 32] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        mem[_5113 + 64] = block.timestamp
                        mem[_5113 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _5203 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_5203] = sub_eb24d5f0[msg.sender]
                        mem[_5203 + 32] = block.timestamp
                        mem[_5203 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5260] == bool(mem[_5260])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                else:
                    mem[64] = (32 * u) + 192
                    mem[(32 * u) + 128] = 0
                    mem[(32 * u) + 160] = 0
                    mem[128] = (32 * u) + 128
                    v = 128
                    idx = u
                    while idx - 1:
                        mem[64] = mem[64] + 64
                        mem[(32 * u) + 128] = 0
                        mem[(32 * u) + 160] = 0
                        mem[v + 32] = (32 * u) + 128
                        v = v + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    u = 0
                    v = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _2419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2419] = sub_8aa92792[idx].field_0
                        mem[_2419 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u
                            v = v
                            continue 
                        if u >= mem[96]:
                            revert with 0, 50
                        mem[(32 * u) + 128] = _2419
                        if u == -1:
                            revert with 0, 17
                        if v > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u + 1
                        v = v + sub_8aa92792[idx].field_0
                        continue 
                    if var94001 < 1:
                        revert with 0, 17
                    if var98002 < var98001:
                        if var100001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var104002 > -1 / arg1:
                            revert with 0, 17
                        if not v:
                            revert with 0, 18
                        if var116001 > !var116002:
                            revert with 0, 17
                        # nil
                    else:
                        if arg1 <= var98007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _5773 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var98007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_5773)
                        mem[mem[64] + 68] = arg1 - var98007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_5773), arg1 - var98007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5854] == bool(mem[_5854])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        _6013 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6013] = arg1
                        mem[_6013 + 32] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        mem[_6013 + 64] = block.timestamp
                        mem[_6013 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _6079 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_6079] = sub_eb24d5f0[msg.sender]
                        mem[_6079 + 32] = block.timestamp
                        mem[_6079 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6108] == bool(mem[_6108])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
    else:
        if bool(bool(sub_82543b32 < 78)) or bool(bool(sub_82543b32 < 32)):
            if sub_83fabe03 and 10^sub_82543b32 > -1 / sub_83fabe03:
                revert with 0, 17
            if not sub_d9a91386:
                if arg1 and sub_ba6dc237 > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_ba6dc237 and 1 > -1 / arg1 * sub_ba6dc237:
                    revert with 0, 17
                if not sub_83fabe03 * 10^sub_82543b32:
                    revert with 0, 18
                if arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32 > !sub_e8a48537:
                    revert with 0, 17
                if (arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32) + sub_e8a48537 > sub_ebb1a838:
                    revert with 0, 'harry limit'
                idx = 0
                s = 0
                while idx < sub_8aa92792.length:
                    mem[0] = 3
                    if sub_8aa92792[idx].field_0 <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if not s:
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32):
                        revert with 0, 17
                    sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                    if arg1 > !sub_25de969b[msg.sender]:
                        revert with 0, 17
                    sub_25de969b[msg.sender] += arg1
                    if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32):
                        revert with 0, 17
                    sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                    sub_997fb037.length++
                    sub_997fb037[sub_997fb037.length].field_0 = arg1
                    stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                    stor8A35[stor4.length] = block.timestamp
                    stor8A35[stor4.length] = msg.sender
                    if not sub_eb24d5f0[msg.sender]:
                        revert with 0, 'not harry'
                    call sub_8d9c302dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_eb24d5f0[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_eb24d5f0[msg.sender] = 0
                    sub_f9024237.length++
                    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                    storA66C[stor7.length] = block.timestamp
                    storA66C[stor7.length] = msg.sender
                    return 1
                if s > test266151307():
                    revert with 0, 65
                mem[96] = s
                mem[64] = (32 * s) + 128
                if not s:
                    idx = 0
                    s = 0
                    t = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_841] = sub_8aa92792[idx].field_0
                        mem[_841 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = _841
                        if s == -1:
                            revert with 0, 17
                        if t > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        t = t + sub_8aa92792[idx].field_0
                        continue 
                    if var85001 < 1:
                        revert with 0, 17
                    if var89002 < var89001:
                        if var91001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var95002 > -1 / arg1:
                            revert with 0, 17
                        if not t:
                            revert with 0, 18
                        if var107001 > !var107002:
                            revert with 0, 17
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[var113001] = msg.sender
                        mem[var113001 + 32] = address(var113003)
                        mem[var113001 + 64] = var113002
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len var115001 + -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        if arg1 <= var89007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _3993 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var89007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_3993)
                        mem[mem[64] + 68] = arg1 - var89007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_3993), arg1 - var89007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4096 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4096] == bool(mem[_4096])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        _4269 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_4269] = arg1
                        mem[_4269 + 32] = arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        mem[_4269 + 64] = block.timestamp
                        mem[_4269 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _4357 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_4357] = sub_eb24d5f0[msg.sender]
                        mem[_4357 + 32] = block.timestamp
                        mem[_4357 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4410] == bool(mem[_4410])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                else:
                    mem[64] = (32 * s) + 192
                    mem[(32 * s) + 128] = 0
                    mem[(32 * s) + 160] = 0
                    mem[128] = (32 * s) + 128
                    t = 128
                    idx = s
                    while idx - 1:
                        mem[64] = mem[64] + 64
                        mem[(32 * s) + 128] = 0
                        mem[(32 * s) + 160] = 0
                        mem[t + 32] = (32 * s) + 128
                        t = t + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    s = 0
                    t = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _1638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1638] = sub_8aa92792[idx].field_0
                        mem[_1638 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = _1638
                        if s == -1:
                            revert with 0, 17
                        if t > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        t = t + sub_8aa92792[idx].field_0
                        continue 
                    if var89001 < 1:
                        revert with 0, 17
                    if var93002 < var93001:
                        if var95001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var99002 > -1 / arg1:
                            revert with 0, 17
                        if not t:
                            revert with 0, 18
                        if var111001 > !var111002:
                            revert with 0, 17
                        # nil
                    else:
                        if arg1 <= var93007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _4835 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var93007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4835)
                        mem[mem[64] + 68] = arg1 - var93007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_4835), arg1 - var93007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4932] == bool(mem[_4932])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        _5108 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5108] = arg1
                        mem[_5108 + 32] = arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        mem[_5108 + 64] = block.timestamp
                        mem[_5108 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03 * 10^sub_82543b32
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _5198 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_5198] = sub_eb24d5f0[msg.sender]
                        mem[_5198 + 32] = block.timestamp
                        mem[_5198 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5256] == bool(mem[_5256])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
            else:
                if bool(bool(sub_d9a91386 < 78)) or bool(bool(sub_d9a91386 < 32)):
                    if arg1 and sub_ba6dc237 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_ba6dc237 and 10^sub_d9a91386 > -1 / arg1 * sub_ba6dc237:
                        revert with 0, 17
                    if not sub_83fabe03 * 10^sub_82543b32:
                        revert with 0, 18
                    if arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32 > !sub_e8a48537:
                        revert with 0, 17
                    if (arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32) + sub_e8a48537 > sub_ebb1a838:
                        revert with 0, 'harry limit'
                    idx = 0
                    s = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        if sub_8aa92792[idx].field_0 <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    if not s:
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        sub_25de969b[msg.sender] += arg1
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                    if s > test266151307():
                        revert with 0, 65
                    mem[96] = s
                    mem[64] = (32 * s) + 128
                    if not s:
                        idx = 0
                        s = 0
                        t = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _838 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_838] = sub_8aa92792[idx].field_0
                            mem[_838 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = _838
                            if s == -1:
                                revert with 0, 17
                            if t > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            t = t + sub_8aa92792[idx].field_0
                            continue 
                        if var90001 < 1:
                            revert with 0, 17
                        if var94002 < var94001:
                            if var96001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var100002 > -1 / arg1:
                                revert with 0, 17
                            if not t:
                                revert with 0, 18
                            if var112001 > !var112002:
                                revert with 0, 17
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var118001] = msg.sender
                            mem[var118001 + 32] = address(var118003)
                            mem[var118001 + 64] = var118002
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len var120001 + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            if arg1 <= var94007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _3990 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var94007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_3990)
                            mem[mem[64] + 68] = arg1 - var94007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_3990), arg1 - var94007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4093 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4093] == bool(mem[_4093])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            _4264 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_4264] = arg1
                            mem[_4264 + 32] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            mem[_4264 + 64] = block.timestamp
                            mem[_4264 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _4351 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4351] = sub_eb24d5f0[msg.sender]
                            mem[_4351 + 32] = block.timestamp
                            mem[_4351 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4402 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4402] == bool(mem[_4402])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
                    else:
                        mem[64] = (32 * s) + 192
                        mem[(32 * s) + 128] = 0
                        mem[(32 * s) + 160] = 0
                        mem[128] = (32 * s) + 128
                        t = 128
                        idx = s
                        while idx - 1:
                            mem[64] = mem[64] + 64
                            mem[(32 * s) + 128] = 0
                            mem[(32 * s) + 160] = 0
                            mem[t + 32] = (32 * s) + 128
                            t = t + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        s = 0
                        t = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _1635 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1635] = sub_8aa92792[idx].field_0
                            mem[_1635 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            mem[(32 * s) + 128] = _1635
                            if s == -1:
                                revert with 0, 17
                            if t > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            t = t + sub_8aa92792[idx].field_0
                            continue 
                        if var94001 < 1:
                            revert with 0, 17
                        if var98002 < var98001:
                            if var100001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var104002 > -1 / arg1:
                                revert with 0, 17
                            if not t:
                                revert with 0, 18
                            if var116001 > !var116002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var98007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _4833 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var98007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4833)
                            mem[mem[64] + 68] = arg1 - var98007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4833), arg1 - var98007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4929] == bool(mem[_4929])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            _5103 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5103] = arg1
                            mem[_5103 + 32] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            mem[_5103 + 64] = block.timestamp
                            mem[_5103 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * 10^sub_82543b32
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _5191 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5191] = sub_eb24d5f0[msg.sender]
                            mem[_5191 + 32] = block.timestamp
                            mem[_5191 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5252] == bool(mem[_5252])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
                else:
                    s = 10
                    t = 1
                    idx = sub_d9a91386
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg1 and sub_ba6dc237 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_ba6dc237 and s * t > -1 / arg1 * sub_ba6dc237:
                        revert with 0, 17
                    if not sub_83fabe03 * 10^sub_82543b32:
                        revert with 0, 18
                    if arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32 > !sub_e8a48537:
                        revert with 0, 17
                    if (arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32) + sub_e8a48537 > sub_ebb1a838:
                        revert with 0, 'harry limit'
                    idx = 0
                    u = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        if sub_8aa92792[idx].field_0 <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u
                            continue 
                        if u == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u + 1
                        continue 
                    if not u:
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        sub_25de969b[msg.sender] += arg1
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                    if u > test266151307():
                        revert with 0, 65
                    mem[96] = u
                    mem[64] = (32 * u) + 128
                    if not u:
                        idx = 0
                        u = 0
                        v = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _1632 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1632] = sub_8aa92792[idx].field_0
                            mem[_1632 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = u
                                v = v
                                continue 
                            if u >= mem[96]:
                                revert with 0, 50
                            mem[(32 * u) + 128] = _1632
                            if u == -1:
                                revert with 0, 17
                            if v > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u + 1
                            v = v + sub_8aa92792[idx].field_0
                            continue 
                        if var95001 < 1:
                            revert with 0, 17
                        if var99002 < var99001:
                            if var101001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var105002 > -1 / arg1:
                                revert with 0, 17
                            if not v:
                                revert with 0, 18
                            if var117001 > !var117002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var99007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _4830 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var99007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4830)
                            mem[mem[64] + 68] = arg1 - var99007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4830), arg1 - var99007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4925] == bool(mem[_4925])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            _5098 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5098] = arg1
                            mem[_5098 + 32] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            mem[_5098 + 64] = block.timestamp
                            mem[_5098 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _5183 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5183] = sub_eb24d5f0[msg.sender]
                            mem[_5183 + 32] = block.timestamp
                            mem[_5183 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5244 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5244] == bool(mem[_5244])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
                    else:
                        mem[64] = (32 * u) + 192
                        mem[(32 * u) + 128] = 0
                        mem[(32 * u) + 160] = 0
                        mem[128] = (32 * u) + 128
                        v = 128
                        idx = u
                        while idx - 1:
                            mem[64] = mem[64] + 64
                            mem[(32 * u) + 128] = 0
                            mem[(32 * u) + 160] = 0
                            mem[v + 32] = (32 * u) + 128
                            v = v + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        u = 0
                        v = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _2416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2416] = sub_8aa92792[idx].field_0
                            mem[_2416 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = u
                                v = v
                                continue 
                            if u >= mem[96]:
                                revert with 0, 50
                            mem[(32 * u) + 128] = _2416
                            if u == -1:
                                revert with 0, 17
                            if v > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u + 1
                            v = v + sub_8aa92792[idx].field_0
                            continue 
                        if var99001 < 1:
                            revert with 0, 17
                        if var103002 < var103001:
                            if var105001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var109002 > -1 / arg1:
                                revert with 0, 17
                            if not v:
                                revert with 0, 18
                            if var121001 > !var121002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var103007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _5771 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var103007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_5771)
                            mem[mem[64] + 68] = arg1 - var103007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_5771), arg1 - var103007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5849] == bool(mem[_5849])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            _6006 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6006] = arg1
                            mem[_6006 + 32] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            mem[_6006 + 64] = block.timestamp
                            mem[_6006 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * s * t / sub_83fabe03 * 10^sub_82543b32
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _6068 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6068] = sub_eb24d5f0[msg.sender]
                            mem[_6068 + 32] = block.timestamp
                            mem[_6068 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6104 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6104] == bool(mem[_6104])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
        else:
            s = 10
            t = 1
            idx = sub_82543b32
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if sub_83fabe03 and s * t > -1 / sub_83fabe03:
                revert with 0, 17
            if not sub_d9a91386:
                if arg1 and sub_ba6dc237 > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_ba6dc237 and 1 > -1 / arg1 * sub_ba6dc237:
                    revert with 0, 17
                if not sub_83fabe03 * s * t:
                    revert with 0, 18
                if arg1 * sub_ba6dc237 / sub_83fabe03 * s * t > !sub_e8a48537:
                    revert with 0, 17
                if (arg1 * sub_ba6dc237 / sub_83fabe03 * s * t) + sub_e8a48537 > sub_ebb1a838:
                    revert with 0, 'harry limit'
                idx = 0
                u = 0
                while idx < sub_8aa92792.length:
                    mem[0] = 3
                    if sub_8aa92792[idx].field_0 <= 0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u
                        continue 
                    if u == -1:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = u + 1
                    continue 
                if not u:
                    call usdtTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03 * s * t):
                        revert with 0, 17
                    sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                    if arg1 > !sub_25de969b[msg.sender]:
                        revert with 0, 17
                    sub_25de969b[msg.sender] += arg1
                    if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03 * s * t):
                        revert with 0, 17
                    sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                    sub_997fb037.length++
                    sub_997fb037[sub_997fb037.length].field_0 = arg1
                    stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                    stor8A35[stor4.length] = block.timestamp
                    stor8A35[stor4.length] = msg.sender
                    if not sub_eb24d5f0[msg.sender]:
                        revert with 0, 'not harry'
                    call sub_8d9c302dAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_eb24d5f0[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_eb24d5f0[msg.sender] = 0
                    sub_f9024237.length++
                    sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                    storA66C[stor7.length] = block.timestamp
                    storA66C[stor7.length] = msg.sender
                    return 1
                if u > test266151307():
                    revert with 0, 65
                mem[96] = u
                mem[64] = (32 * u) + 128
                if not u:
                    idx = 0
                    u = 0
                    v = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _1629 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1629] = sub_8aa92792[idx].field_0
                        mem[_1629 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u
                            v = v
                            continue 
                        if u >= mem[96]:
                            revert with 0, 50
                        mem[(32 * u) + 128] = _1629
                        if u == -1:
                            revert with 0, 17
                        if v > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u + 1
                        v = v + sub_8aa92792[idx].field_0
                        continue 
                    if var90001 < 1:
                        revert with 0, 17
                    if var94002 < var94001:
                        if var96001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var100002 > -1 / arg1:
                            revert with 0, 17
                        if not v:
                            revert with 0, 18
                        if var112001 > !var112002:
                            revert with 0, 17
                        # nil
                    else:
                        if arg1 <= var94007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _4827 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var94007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_4827)
                        mem[mem[64] + 68] = arg1 - var94007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_4827), arg1 - var94007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4922] == bool(mem[_4922])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        _5093 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5093] = arg1
                        mem[_5093 + 32] = arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        mem[_5093 + 64] = block.timestamp
                        mem[_5093 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _5177 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_5177] = sub_eb24d5f0[msg.sender]
                        mem[_5177 + 32] = block.timestamp
                        mem[_5177 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5236] == bool(mem[_5236])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                else:
                    mem[64] = (32 * u) + 192
                    mem[(32 * u) + 128] = 0
                    mem[(32 * u) + 160] = 0
                    mem[128] = (32 * u) + 128
                    v = 128
                    idx = u
                    while idx - 1:
                        mem[64] = mem[64] + 64
                        mem[(32 * u) + 128] = 0
                        mem[(32 * u) + 160] = 0
                        mem[v + 32] = (32 * u) + 128
                        v = v + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    u = 0
                    v = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        _2413 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2413] = sub_8aa92792[idx].field_0
                        mem[_2413 + 32] = sub_8aa92792[idx].field_256
                        if not sub_8aa92792[idx].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u
                            v = v
                            continue 
                        if u >= mem[96]:
                            revert with 0, 50
                        mem[(32 * u) + 128] = _2413
                        if u == -1:
                            revert with 0, 17
                        if v > !sub_8aa92792[idx].field_0:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u + 1
                        v = v + sub_8aa92792[idx].field_0
                        continue 
                    if var94001 < 1:
                        revert with 0, 17
                    if var98002 < var98001:
                        if var100001 >= mem[96]:
                            revert with 0, 50
                        if arg1 and var104002 > -1 / arg1:
                            revert with 0, 17
                        if not v:
                            revert with 0, 18
                        if var116001 > !var116002:
                            revert with 0, 17
                        # nil
                    else:
                        if arg1 <= var98007:
                            revert with 0, 'weight error'
                        if mem[96] < 1:
                            revert with 0, 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 0, 50
                        _5769 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                        if arg1 < var98007:
                            revert with 0, 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = address(_5769)
                        mem[mem[64] + 68] = arg1 - var98007
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_5769), arg1 - var98007
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5846] == bool(mem[_5846])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        mem[0] = msg.sender
                        sub_25de969b[msg.sender] += arg1
                        mem[32] = 5
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        _6001 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6001] = arg1
                        mem[_6001 + 32] = arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        mem[_6001 + 64] = block.timestamp
                        mem[_6001 + 96] = msg.sender
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 / sub_83fabe03 * s * t
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        mem[0] = msg.sender
                        mem[32] = 5
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        _6061 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_6061] = sub_eb24d5f0[msg.sender]
                        mem[_6061 + 32] = block.timestamp
                        mem[_6061 + 64] = msg.sender
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6100] == bool(mem[_6100])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
            else:
                if bool(bool(sub_d9a91386 < 78)) or bool(bool(sub_d9a91386 < 32)):
                    if arg1 and sub_ba6dc237 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_ba6dc237 and 10^sub_d9a91386 > -1 / arg1 * sub_ba6dc237:
                        revert with 0, 17
                    if not sub_83fabe03 * s * t:
                        revert with 0, 18
                    if arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t > !sub_e8a48537:
                        revert with 0, 17
                    if (arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t) + sub_e8a48537 > sub_ebb1a838:
                        revert with 0, 'harry limit'
                    idx = 0
                    u = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        if sub_8aa92792[idx].field_0 <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u
                            continue 
                        if u == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = u + 1
                        continue 
                    if not u:
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        sub_25de969b[msg.sender] += arg1
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                    if u > test266151307():
                        revert with 0, 65
                    mem[96] = u
                    mem[64] = (32 * u) + 128
                    if not u:
                        idx = 0
                        u = 0
                        v = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _1626 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1626] = sub_8aa92792[idx].field_0
                            mem[_1626 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = u
                                v = v
                                continue 
                            if u >= mem[96]:
                                revert with 0, 50
                            mem[(32 * u) + 128] = _1626
                            if u == -1:
                                revert with 0, 17
                            if v > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u + 1
                            v = v + sub_8aa92792[idx].field_0
                            continue 
                        if var95001 < 1:
                            revert with 0, 17
                        if var99002 < var99001:
                            if var101001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var105002 > -1 / arg1:
                                revert with 0, 17
                            if not v:
                                revert with 0, 18
                            if var117001 > !var117002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var99007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _4824 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var99007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_4824)
                            mem[mem[64] + 68] = arg1 - var99007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_4824), arg1 - var99007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4919 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4919] == bool(mem[_4919])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            _5088 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5088] = arg1
                            mem[_5088 + 32] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            mem[_5088 + 64] = block.timestamp
                            mem[_5088 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _5171 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_5171] = sub_eb24d5f0[msg.sender]
                            mem[_5171 + 32] = block.timestamp
                            mem[_5171 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5228] == bool(mem[_5228])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
                    else:
                        mem[64] = (32 * u) + 192
                        mem[(32 * u) + 128] = 0
                        mem[(32 * u) + 160] = 0
                        mem[128] = (32 * u) + 128
                        v = 128
                        idx = u
                        while idx - 1:
                            mem[64] = mem[64] + 64
                            mem[(32 * u) + 128] = 0
                            mem[(32 * u) + 160] = 0
                            mem[v + 32] = (32 * u) + 128
                            v = v + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        u = 0
                        v = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _2410 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2410] = sub_8aa92792[idx].field_0
                            mem[_2410 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = u
                                v = v
                                continue 
                            if u >= mem[96]:
                                revert with 0, 50
                            mem[(32 * u) + 128] = _2410
                            if u == -1:
                                revert with 0, 17
                            if v > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = u + 1
                            v = v + sub_8aa92792[idx].field_0
                            continue 
                        if var99001 < 1:
                            revert with 0, 17
                        if var103002 < var103001:
                            if var105001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var109002 > -1 / arg1:
                                revert with 0, 17
                            if not v:
                                revert with 0, 18
                            if var121001 > !var121002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var103007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _5767 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var103007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_5767)
                            mem[mem[64] + 68] = arg1 - var103007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_5767), arg1 - var103007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5843] == bool(mem[_5843])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            _5996 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5996] = arg1
                            mem[_5996 + 32] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            mem[_5996 + 64] = block.timestamp
                            mem[_5996 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * 10^sub_d9a91386 / sub_83fabe03 * s * t
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _6054 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6054] = sub_eb24d5f0[msg.sender]
                            mem[_6054 + 32] = block.timestamp
                            mem[_6054 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6096 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6096] == bool(mem[_6096])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
                else:
                    u = 10
                    v = 1
                    idx = sub_d9a91386
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if arg1 and sub_ba6dc237 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_ba6dc237 and u * v > -1 / arg1 * sub_ba6dc237:
                        revert with 0, 17
                    if not sub_83fabe03 * s * t:
                        revert with 0, 18
                    if arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t > !sub_e8a48537:
                        revert with 0, 17
                    if (arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t) + sub_e8a48537 > sub_ebb1a838:
                        revert with 0, 'harry limit'
                    idx = 0
                    w = 0
                    while idx < sub_8aa92792.length:
                        mem[0] = 3
                        if sub_8aa92792[idx].field_0 <= 0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            w = w
                            continue 
                        if w == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        w = w + 1
                        continue 
                    if not w:
                        call usdtTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if sub_e8a48537 > !(arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_e8a48537 += arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                        if arg1 > !sub_25de969b[msg.sender]:
                            revert with 0, 17
                        sub_25de969b[msg.sender] += arg1
                        if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t):
                            revert with 0, 17
                        sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                        sub_997fb037.length++
                        sub_997fb037[sub_997fb037.length].field_0 = arg1
                        stor8A35[stor4.length] = arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                        stor8A35[stor4.length] = block.timestamp
                        stor8A35[stor4.length] = msg.sender
                        if not sub_eb24d5f0[msg.sender]:
                            revert with 0, 'not harry'
                        call sub_8d9c302dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_eb24d5f0[msg.sender]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_eb24d5f0[msg.sender] = 0
                        sub_f9024237.length++
                        sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                        storA66C[stor7.length] = block.timestamp
                        storA66C[stor7.length] = msg.sender
                        return 1
                    if w > test266151307():
                        revert with 0, 65
                    mem[96] = w
                    mem[64] = (32 * w) + 128
                    if not w:
                        idx = 0
                        w = 0
                        x = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _2407 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2407] = sub_8aa92792[idx].field_0
                            mem[_2407 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                w = w
                                x = x
                                continue 
                            if w >= mem[96]:
                                revert with 0, 50
                            mem[(32 * w) + 128] = _2407
                            if w == -1:
                                revert with 0, 17
                            if x > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            w = w + 1
                            x = x + sub_8aa92792[idx].field_0
                            continue 
                        if var100001 < 1:
                            revert with 0, 17
                        if var104002 < var104001:
                            if var106001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var110002 > -1 / arg1:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if var122001 > !var122002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var104007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _5764 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var104007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_5764)
                            mem[mem[64] + 68] = arg1 - var104007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_5764), arg1 - var104007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5839 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5839] == bool(mem[_5839])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            _5991 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5991] = arg1
                            mem[_5991 + 32] = arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            mem[_5991 + 64] = block.timestamp
                            mem[_5991 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _6046 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6046] = sub_eb24d5f0[msg.sender]
                            mem[_6046 + 32] = block.timestamp
                            mem[_6046 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6088 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6088] == bool(mem[_6088])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
                    else:
                        mem[64] = (32 * w) + 192
                        mem[(32 * w) + 128] = 0
                        mem[(32 * w) + 160] = 0
                        mem[128] = (32 * w) + 128
                        x = 128
                        idx = w
                        while idx - 1:
                            mem[64] = mem[64] + 64
                            mem[(32 * w) + 128] = 0
                            mem[(32 * w) + 160] = 0
                            mem[x + 32] = (32 * w) + 128
                            x = x + 32
                            idx = idx - 1
                            continue 
                        idx = 0
                        w = 0
                        x = 0
                        while idx < sub_8aa92792.length:
                            mem[0] = 3
                            _3151 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3151] = sub_8aa92792[idx].field_0
                            mem[_3151 + 32] = sub_8aa92792[idx].field_256
                            if not sub_8aa92792[idx].field_0:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                w = w
                                x = x
                                continue 
                            if w >= mem[96]:
                                revert with 0, 50
                            mem[(32 * w) + 128] = _3151
                            if w == -1:
                                revert with 0, 17
                            if x > !sub_8aa92792[idx].field_0:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            w = w + 1
                            x = x + sub_8aa92792[idx].field_0
                            continue 
                        if var104001 < 1:
                            revert with 0, 17
                        if var108002 < var108001:
                            if var110001 >= mem[96]:
                                revert with 0, 50
                            if arg1 and var114002 > -1 / arg1:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if var126001 > !var126002:
                                revert with 0, 17
                            # nil
                        else:
                            if arg1 <= var108007:
                                revert with 0, 'weight error'
                            if mem[96] < 1:
                                revert with 0, 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 0, 50
                            _6620 = mem[mem[(32 * mem[96] - 1) + 128] + 32]
                            if arg1 < var108007:
                                revert with 0, 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(_6620)
                            mem[mem[64] + 68] = arg1 - var108007
                            call usdtTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_6620), arg1 - var108007
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6689] == bool(mem[_6689])
                            if sub_e8a48537 > !(arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_e8a48537 += arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            if arg1 > !sub_25de969b[msg.sender]:
                                revert with 0, 17
                            mem[0] = msg.sender
                            sub_25de969b[msg.sender] += arg1
                            mem[32] = 5
                            if sub_eb24d5f0[msg.sender] > !(arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t):
                                revert with 0, 17
                            sub_eb24d5f0[msg.sender] += arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            _6834 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_6834] = arg1
                            mem[_6834 + 32] = arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            mem[_6834 + 64] = block.timestamp
                            mem[_6834 + 96] = msg.sender
                            sub_997fb037.length++
                            sub_997fb037[sub_997fb037.length].field_0 = arg1
                            stor8A35[stor4.length] = arg1 * sub_ba6dc237 * u * v / sub_83fabe03 * s * t
                            stor8A35[stor4.length] = block.timestamp
                            stor8A35[stor4.length] = msg.sender
                            mem[0] = msg.sender
                            mem[32] = 5
                            if not sub_eb24d5f0[msg.sender]:
                                revert with 0, 'not harry'
                            _6879 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6879] = sub_eb24d5f0[msg.sender]
                            mem[_6879 + 32] = block.timestamp
                            mem[_6879 + 64] = msg.sender
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_eb24d5f0[msg.sender]
                            call sub_8d9c302dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_eb24d5f0[msg.sender]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6892 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6892] == bool(mem[_6892])
                            sub_eb24d5f0[msg.sender] = 0
                            sub_f9024237.length++
                            sub_f9024237[sub_f9024237.length].field_0 = sub_eb24d5f0[msg.sender]
                            storA66C[stor7.length] = block.timestamp
                            storA66C[stor7.length] = msg.sender
                            return 1
}



}
