contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address addrAdmin; offset 8
array of address stor1;
uint8 stor2;
uint8 status; offset 224
uint64 sub_14b693e6; offset 160
address addrFinance;
address sub_14d329d5Address;
array of struct sub_d1107238;
uint256 sub_6d65db56;
uint256 stor6;
uint256 stor7;
uint32 stor8;
uint32 stor8; offset 32
uint32 stor8; offset 64
uint32 stor8; offset 96
uint32 stor8; offset 128
array of struct sub_33470433;
uint256 stor10;

function sub_14b693e6(?) {
    return sub_14b693e6
}

function sub_14d329d5(?) {
    return sub_14d329d5Address
}

function status() {
    require status <= 6
    return status
}

function sub_33470433(?) {
    require arg1 < sub_33470433.length
    return sub_33470433[arg1].field_0, sub_33470433[arg1].field_256
}

function operator() {
    return address(stor1.length)
}

function sub_6d65db56(?) {
    return sub_6d65db56
}

function addrFinance() {
    return addrFinance
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function sub_d1107238(?) {
    require arg1 < sub_d1107238.length
    return sub_d1107238[arg1].field_512, sub_d1107238[arg1].field_544
}

function _fallback() payable {
  stop
}

function sub_3d683b2b(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    sub_14b693e6 = arg1
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor0 = uint8(arg1)
}

function setFinance(address arg1) {
    if addrFinance != msg.sender:
        revert with 0, 'not finance'
    if not arg1:
        revert with 0, '_addr is 0'
    addrFinance = arg1
}

function sub_d4b94558(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_stakerContractAddr is 0'
    sub_14d329d5Address = arg1
}

function setAdmin(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_newAdmin can't be address 0'
    addrAdmin = arg1
}

function setOperator(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_addr can't be address 0'
    address(stor1.length) = arg1
}

function sub_df034719(?) {
    if address(stor1.length) != msg.sender:
        revert with 0, 'not op'
    require status <= 6
    if status != 5:
        revert with 0, 'status error'
    sub_6d65db56++
    return sub_6d65db56
}

function sub_99ff59b1(?) {
    return stor6, 
           stor7,
           uint32(stor8.field_0),
           uint32(stor8.field_0),
           uint32(stor8.field_64),
           uint32(stor8.field_0),
           uint32(stor8.field_128)
}

function sub_37e1a232(?) {
    require status <= 6
    require sub_d1107238.length - 1 < sub_d1107238.length
    return sub_d1107238.length - 1, 
           stor2,
           uint32(stor8.field_0),
           uint32(stor8.field_0),
           uint32(stor8.field_0),
           sub_6d65db56,
           sub_d1107238[sub_d1107238.length].field_0,
           stor10
}

function sub_b2002ef4(?) {
    if address(stor1.length) != msg.sender:
        revert with 0, 'not op'
    require status <= 6
    if status:
        require status <= 6
        if status != 3:
            require status <= 6
            if status != 6:
                revert with 0, 'status error'
    require ext_code.size(sub_14d329d5Address)
    call sub_14d329d5Address.0x53b6089e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] <= 0:
        revert with 0, 'devAmount is 0'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'totalAmount is 0'
    stor6 = ext_call.return_data[32]
    stor7 = ext_call.return_data[0]
    require ext_code.size(sub_14d329d5Address)
    call sub_14d329d5Address.0x438f32e4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint32(stor8.field_0) = uint32(ext_call.return_data[0] + 1)
    uint32(stor8.field_32) = 0
    uint32(stor8.field_64) = 0
    uint32(stor8.field_96) = uint32(uint32(stor8.field_96) + 1)
    require ext_code.size(sub_14d329d5Address)
    call sub_14d329d5Address.0x941e8e4d with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcd338465: uint32(stor8.field_0), ext_call.return_data[32] << 192, ext_call.return_data[0] << 192, uint32(stor8.field_0)
    status = 1
    return ext_call.return_data[0], ext_call.return_data[32]
}

function updateVersion(address[] arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not addrFinance:
        revert with 0, 'finance is 0'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        require 0 < arg1.length
        mem[(32 * arg1.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg1.length:
            require idx < arg1.length
            _63 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + 164] = this.address
            require ext_code.size(address(_63))
            call address(_63).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _63
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        if not addrFinance:
            revert with 0, '_addr is 0'
        idx = 0
        s = 0
        s = 0
        while idx < mem[(32 * arg1.length) + 128]:
            require idx < mem[(32 * arg1.length) + 128]
            _112 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            _116 = mem[(32 * idx) + (64 * arg1.length) + 192]
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                idx = idx + 1
                s = mem[(32 * idx) + (64 * arg1.length) + 192]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                continue 
            if not mem[(32 * idx) + (64 * arg1.length) + 204 len 20]:
                call addrFinance with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * arg1.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit TransferBnb(mem[(98 * arg1.length) + 192], addrFinance);
            else:
                mem[(98 * arg1.length) + 196] = addrFinance
                mem[(98 * arg1.length) + 228] = _112
                require ext_code.size(address(_116))
                call address(_116).0xa9059cbb with:
                     gas gas_remaining wei
                    args addrFinance, _112
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(98 * arg1.length) + 192] = _112
                emit 0x52a1ece0: _112, addrFinance, address(_116)
            idx = idx + 1
            s = _116
            s = _112
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[15608 len 32 * arg1.length]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg1.length:
            require idx < arg1.length
            _67 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + 164] = this.address
            require ext_code.size(address(_67))
            call address(_67).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _67
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        if not addrFinance:
            revert with 0, '_addr is 0'
        idx = 0
        s = 0
        s = 0
        while idx < mem[(32 * arg1.length) + 128]:
            require idx < mem[(32 * arg1.length) + 128]
            _114 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            _117 = mem[(32 * idx) + (64 * arg1.length) + 192]
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                idx = idx + 1
                s = mem[(32 * idx) + (64 * arg1.length) + 192]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                continue 
            if not mem[(32 * idx) + (64 * arg1.length) + 204 len 20]:
                call addrFinance with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * arg1.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit TransferBnb(mem[(98 * arg1.length) + 192], addrFinance);
            else:
                mem[(98 * arg1.length) + 196] = addrFinance
                mem[(98 * arg1.length) + 228] = _114
                require ext_code.size(address(_117))
                call address(_117).0xa9059cbb with:
                     gas gas_remaining wei
                    args addrFinance, _114
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(98 * arg1.length) + 192] = _114
                emit 0x52a1ece0: _114, addrFinance, address(_117)
            idx = idx + 1
            s = _117
            s = _114
            continue 
}

function sub_280e03d7(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if uint32(block.timestamp - uint32(stor8.field_128)) > sub_14b693e6:
        return 0
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg2.length:
            require idx < arg2.length
            _274 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = this.address
            require ext_code.size(address(_274))
            call address(_274).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _274
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + 160] = 96
        mem[(64 * arg2.length) + 192] = (32 * arg2.length) + 128
        mem[(64 * arg2.length) + 224] = uint32(block.timestamp)
        mem[(64 * arg2.length) + 256] = 0
        if arg1 < sub_d1107238.length:
            sub_d1107238[arg1].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while sub_d1107238[arg1].field_0 > idx:
                    sub_d1107238[(3 * arg1) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[arg1].field_256 = mem[(32 * arg2.length) + 128]
                if not mem[(32 * arg2.length) + 128]:
                    idx = 0
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[arg1].field_512 = uint32(block.timestamp)
                    sub_d1107238[arg1].field_544 = 0
                    sub_d1107238[arg1].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg2.length) + 288] = stor6
                    mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg2.length) + 320] = 160
                    mem[(64 * arg2.length) + 448] = arg2.length
                    mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    var37001 = floor32(arg2.length)
                else:
                    s = 0
                    idx = (32 * arg2.length) + 160
                    while (32 * arg2.length) + (32 * mem[(32 * arg2.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg2.length) + 128]) + 31) >> 5
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[arg1].field_512 = uint32(block.timestamp)
                    sub_d1107238[arg1].field_544 = 0
                    sub_d1107238[arg1].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg2.length) + 288] = stor6
                    mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg2.length) + 320] = 160
                    mem[(64 * arg2.length) + 448] = arg2.length
                    mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    sub_d1107238[(3 * arg1) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while sub_d1107238[arg1].field_0 > idx:
                    sub_d1107238[(3 * arg1) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[arg1].field_256 = mem[(32 * arg2.length) + 128]
                if not mem[(32 * arg2.length) + 128]:
                    idx = 0
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg2.length) + 160
                    while (32 * arg2.length) + (32 * mem[(32 * arg2.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg2.length) + 128]) + 31) >> 5
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1107238[arg1].field_512 = uint32(block.timestamp)
                sub_d1107238[arg1].field_544 = 0
                sub_d1107238[arg1].field_768 = 0
                sub_6d65db56 = 0
                mem[(64 * arg2.length) + 288] = stor6
                mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
                mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
                mem[(64 * arg2.length) + 320] = 160
                mem[(64 * arg2.length) + 448] = arg2.length
                mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        else:
            sub_d1107238.length++
            sub_d1107238[sub_d1107238.length].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg2.length) + 128]
            if not mem[(32 * arg2.length) + 128]:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg2.length) + 160
                while (32 * arg2.length) + (32 * mem[(32 * arg2.length) + 128]) + 160 > idx:
                    stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[(32 * arg2.length) + 128]) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
            sub_d1107238[sub_d1107238.length].field_544 = 0
            sub_d1107238[sub_d1107238.length].field_768 = 0
            sub_6d65db56 = 0
            mem[(64 * arg2.length) + 288] = stor6
            mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
            mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
            mem[(64 * arg2.length) + 320] = 160
            mem[(64 * arg2.length) + 448] = arg2.length
            mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[15608 len 32 * arg2.length]
        require 0 < arg2.length
        mem[(32 * arg2.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg2.length:
            require idx < arg2.length
            _277 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = this.address
            require ext_code.size(address(_277))
            call address(_277).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _277
            idx = idx + 1
            continue 
        mem[(64 * arg2.length) + 160] = 96
        mem[(64 * arg2.length) + 192] = (32 * arg2.length) + 128
        mem[(64 * arg2.length) + 224] = uint32(block.timestamp)
        mem[(64 * arg2.length) + 256] = 0
        if arg1 < sub_d1107238.length:
            sub_d1107238[arg1].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while sub_d1107238[arg1].field_0 > idx:
                    sub_d1107238[(3 * arg1) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[arg1].field_256 = mem[(32 * arg2.length) + 128]
                if not mem[(32 * arg2.length) + 128]:
                    idx = 0
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[arg1].field_512 = uint32(block.timestamp)
                    sub_d1107238[arg1].field_544 = 0
                    sub_d1107238[arg1].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg2.length) + 288] = stor6
                    mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg2.length) + 320] = 160
                    mem[(64 * arg2.length) + 448] = arg2.length
                    mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    var38001 = floor32(arg2.length)
                else:
                    s = 0
                    idx = (32 * arg2.length) + 160
                    while (32 * arg2.length) + (32 * mem[(32 * arg2.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg2.length) + 128]) + 31) >> 5
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[arg1].field_512 = uint32(block.timestamp)
                    sub_d1107238[arg1].field_544 = 0
                    sub_d1107238[arg1].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg2.length) + 288] = stor6
                    mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg2.length) + 320] = 160
                    mem[(64 * arg2.length) + 448] = arg2.length
                    mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    sub_d1107238[(3 * arg1) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while sub_d1107238[arg1].field_0 > idx:
                    sub_d1107238[(3 * arg1) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[arg1].field_256 = mem[(32 * arg2.length) + 128]
                if not mem[(32 * arg2.length) + 128]:
                    idx = 0
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg2.length) + 160
                    while (32 * arg2.length) + (32 * mem[(32 * arg2.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg2.length) + 128]) + 31) >> 5
                    while sub_d1107238[arg1].field_256 > idx:
                        stor[idx + sha3((3 * arg1) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1107238[arg1].field_512 = uint32(block.timestamp)
                sub_d1107238[arg1].field_544 = 0
                sub_d1107238[arg1].field_768 = 0
                sub_6d65db56 = 0
                mem[(64 * arg2.length) + 288] = stor6
                mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
                mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
                mem[(64 * arg2.length) + 320] = 160
                mem[(64 * arg2.length) + 448] = arg2.length
                mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        else:
            sub_d1107238.length++
            sub_d1107238[sub_d1107238.length].field_0 = arg2.length
            if not arg2.length:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg2.length) + 128]
            if not mem[(32 * arg2.length) + 128]:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg2.length) + 160
                while (32 * arg2.length) + (32 * mem[(32 * arg2.length) + 128]) + 160 > idx:
                    stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[(32 * arg2.length) + 128]) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
            sub_d1107238[sub_d1107238.length].field_544 = 0
            sub_d1107238[sub_d1107238.length].field_768 = 0
            sub_6d65db56 = 0
            mem[(64 * arg2.length) + 288] = stor6
            mem[(64 * arg2.length) + 384] = uint32(stor8.field_64)
            mem[(64 * arg2.length) + 416] = uint32(block.timestamp)
            mem[(64 * arg2.length) + 320] = 160
            mem[(64 * arg2.length) + 448] = arg2.length
            mem[(64 * arg2.length) + 480 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + 352] = (32 * arg2.length) + 192
    mem[(98 * arg2.length) + 480] = mem[(32 * arg2.length) + 128]
    mem[(98 * arg2.length) + 512 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    emit 0x50a0ea87: mem[(64 * arg2.length) + 288 len (32 * mem[(32 * arg2.length) + 128]) + (32 * arg2.length) + 224], arg1
    status = 4
    return 1
}

function sub_161fb371(?) {
    if address(stor1.length) != msg.sender:
        revert with 0, 'not op'
    require status <= 6
    if status != 3:
        revert with 0, 'status error'
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if uint32(block.timestamp - uint32(stor8.field_128)) > sub_14b693e6:
        return 0
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        require 0 < arg1.length
        mem[(32 * arg1.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg1.length:
            require idx < arg1.length
            _276 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + 164] = this.address
            require ext_code.size(address(_276))
            call address(_276).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _276
            idx = idx + 1
            continue 
        mem[64] = (64 * arg1.length) + 288
        mem[(64 * arg1.length) + 160] = 96
        mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 128
        mem[(64 * arg1.length) + 224] = uint32(block.timestamp)
        mem[(64 * arg1.length) + 256] = 0
        if sub_d1107238.length < sub_d1107238.length:
            sub_d1107238[sub_d1107238.length].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg1.length) + 128]
                mem[0] = (3 * sub_d1107238.length) + sha3(4) + 1
                if not mem[(32 * arg1.length) + 128]:
                    idx = 0
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
                    sub_d1107238[sub_d1107238.length].field_544 = 0
                    sub_d1107238[sub_d1107238.length].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg1.length) + 288] = stor6
                    mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg1.length) + 320] = 160
                    mem[(64 * arg1.length) + 448] = arg1.length
                    mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    var40001 = floor32(arg1.length)
                else:
                    s = 0
                    idx = (32 * arg1.length) + 160
                    while (32 * arg1.length) + (32 * mem[(32 * arg1.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg1.length) + 128]) + 31) >> 5
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
                    sub_d1107238[sub_d1107238.length].field_544 = 0
                    sub_d1107238[sub_d1107238.length].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg1.length) + 288] = stor6
                    mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg1.length) + 320] = 160
                    mem[(64 * arg1.length) + 448] = arg1.length
                    mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg1.length) + 128]
                mem[0] = (3 * sub_d1107238.length) + sha3(4) + 1
                if not mem[(32 * arg1.length) + 128]:
                    idx = 0
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + 160
                    while (32 * arg1.length) + (32 * mem[(32 * arg1.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg1.length) + 128]) + 31) >> 5
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
                sub_d1107238[sub_d1107238.length].field_544 = 0
                sub_d1107238[sub_d1107238.length].field_768 = 0
                sub_6d65db56 = 0
                mem[(64 * arg1.length) + 288] = stor6
                mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
                mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
                mem[(64 * arg1.length) + 320] = 160
                mem[(64 * arg1.length) + 448] = arg1.length
                mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        else:
            sub_d1107238.length++
            sub_d1107238[sub_d1107238.length].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg1.length) + 128]
            mem[0] = (3 * sub_d1107238.length) + sha3(4) + 1
            if not mem[(32 * arg1.length) + 128]:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg1.length) + 160
                while (32 * arg1.length) + (32 * mem[(32 * arg1.length) + 128]) + 160 > idx:
                    stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[(32 * arg1.length) + 128]) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
            sub_d1107238[sub_d1107238.length].field_544 = 0
            sub_d1107238[sub_d1107238.length].field_768 = 0
            sub_6d65db56 = 0
            mem[(64 * arg1.length) + 288] = stor6
            mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
            mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
            mem[(64 * arg1.length) + 320] = 160
            mem[(64 * arg1.length) + 448] = arg1.length
            mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[15608 len 32 * arg1.length]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg1.length:
            require idx < arg1.length
            _279 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + 164] = this.address
            require ext_code.size(address(_279))
            call address(_279).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _279
            idx = idx + 1
            continue 
        mem[64] = (64 * arg1.length) + 288
        mem[(64 * arg1.length) + 160] = 96
        mem[(64 * arg1.length) + 192] = (32 * arg1.length) + 128
        mem[(64 * arg1.length) + 224] = uint32(block.timestamp)
        mem[(64 * arg1.length) + 256] = 0
        if sub_d1107238.length < sub_d1107238.length:
            sub_d1107238[sub_d1107238.length].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg1.length) + 128]
                mem[0] = (3 * sub_d1107238.length) + sha3(4) + 1
                if not mem[(32 * arg1.length) + 128]:
                    idx = 0
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
                    sub_d1107238[sub_d1107238.length].field_544 = 0
                    sub_d1107238[sub_d1107238.length].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg1.length) + 288] = stor6
                    mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg1.length) + 320] = 160
                    mem[(64 * arg1.length) + 448] = arg1.length
                    mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    var41001 = floor32(arg1.length)
                else:
                    s = 0
                    idx = (32 * arg1.length) + 160
                    while (32 * arg1.length) + (32 * mem[(32 * arg1.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg1.length) + 128]) + 31) >> 5
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
                    sub_d1107238[sub_d1107238.length].field_544 = 0
                    sub_d1107238[sub_d1107238.length].field_768 = 0
                    sub_6d65db56 = 0
                    mem[(64 * arg1.length) + 288] = stor6
                    mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
                    mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
                    mem[(64 * arg1.length) + 320] = 160
                    mem[(64 * arg1.length) + 448] = arg1.length
                    mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg1.length) + 128]
                mem[0] = (3 * sub_d1107238.length) + sha3(4) + 1
                if not mem[(32 * arg1.length) + 128]:
                    idx = 0
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + 160
                    while (32 * arg1.length) + (32 * mem[(32 * arg1.length) + 128]) + 160 > idx:
                        stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[(32 * arg1.length) + 128]) + 31) >> 5
                    while sub_d1107238[sub_d1107238.length].field_256 > idx:
                        stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
                sub_d1107238[sub_d1107238.length].field_544 = 0
                sub_d1107238[sub_d1107238.length].field_768 = 0
                sub_6d65db56 = 0
                mem[(64 * arg1.length) + 288] = stor6
                mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
                mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
                mem[(64 * arg1.length) + 320] = 160
                mem[(64 * arg1.length) + 448] = arg1.length
                mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        else:
            sub_d1107238.length++
            sub_d1107238[sub_d1107238.length].field_0 = arg1.length
            if not arg1.length:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_0 > idx:
                    sub_d1107238[(3 * sub_d1107238.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_256 = mem[(32 * arg1.length) + 128]
            mem[0] = (3 * sub_d1107238.length) + sha3(4) + 1
            if not mem[(32 * arg1.length) + 128]:
                idx = 0
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg1.length) + 160
                while (32 * arg1.length) + (32 * mem[(32 * arg1.length) + 128]) + 160 > idx:
                    stor[s + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[(32 * arg1.length) + 128]) + 31) >> 5
                while sub_d1107238[sub_d1107238.length].field_256 > idx:
                    stor[idx + sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_d1107238[sub_d1107238.length].field_512 = uint32(block.timestamp)
            sub_d1107238[sub_d1107238.length].field_544 = 0
            sub_d1107238[sub_d1107238.length].field_768 = 0
            sub_6d65db56 = 0
            mem[(64 * arg1.length) + 288] = stor6
            mem[(64 * arg1.length) + 384] = uint32(stor8.field_64)
            mem[(64 * arg1.length) + 416] = uint32(block.timestamp)
            mem[(64 * arg1.length) + 320] = 160
            mem[(64 * arg1.length) + 448] = arg1.length
            mem[(64 * arg1.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + 352] = (32 * arg1.length) + 192
    mem[(98 * arg1.length) + 480] = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 512 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    emit 0x50a0ea87: mem[(64 * arg1.length) + 288 len (32 * mem[(32 * arg1.length) + 128]) + (32 * arg1.length) + 224], sub_d1107238.length
    status = 4
    return 1
}

function sub_49986eed(?) payable {
    mem[64] = 96
    require not msg.value
    if address(stor1.length) != msg.sender:
        revert with 0, 'not op'
    require status <= 6
    if status == 1:
        if arg1 <= 0:
            revert with 0, 'loopCnt 0'
        require status <= 6
        if status == 2:
            if uint32(stor8.field_32):
                s = 0
                s = 0
                idx = 0
                s = uint32(stor8.field_32)
                while idx < arg1:
                    if uint32(s) >= uint32(stor8.field_0):
                        uint32(stor8.field_32) = uint32(s)
                        status = 3
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x941e8e4d with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint32(stor8.field_128) = uint32(block.timestamp)
                        emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                        return 1
                    require ext_code.size(sub_14d329d5Address)
                    call sub_14d329d5Address.0x21ec49a2 with:
                         gas gas_remaining wei
                        args (s << 224)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] > 0:
                        if address(ext_call.return_data[0]):
                            if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                _433 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_433] = address(ext_call.return_data[0])
                                mem[_433 + 32] = uint64(ext_call.return_data[32])
                                if uint32(stor8.field_64) < sub_33470433.length:
                                    mem[0] = 9
                                    sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                else:
                                    sub_33470433.length++
                                    mem[0] = 9
                                    sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[sub_33470433.length].field_320 = 0
                                uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[64] = 160
                if uint32(stor8.field_64) < sub_33470433.length:
                    sub_33470433[uint32(stor8.field_64)].field_0 = addrFinance
                    sub_33470433[uint32(stor8.field_64)].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _434 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_434] = address(ext_call.return_data[0])
                                    mem[_434 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    sub_33470433.length++
                    sub_33470433[sub_33470433.length].field_0 = addrFinance
                    sub_33470433[sub_33470433.length].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _435 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_435] = address(ext_call.return_data[0])
                                    mem[_435 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
        else:
            status = 2
            if uint32(stor8.field_32):
                s = 0
                s = 0
                idx = 0
                s = uint32(stor8.field_32)
                while idx < arg1:
                    if uint32(s) >= uint32(stor8.field_0):
                        uint32(stor8.field_32) = uint32(s)
                        status = 3
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x941e8e4d with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint32(stor8.field_128) = uint32(block.timestamp)
                        emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                        return 1
                    require ext_code.size(sub_14d329d5Address)
                    call sub_14d329d5Address.0x21ec49a2 with:
                         gas gas_remaining wei
                        args (s << 224)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] > 0:
                        if address(ext_call.return_data[0]):
                            if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                _436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_436] = address(ext_call.return_data[0])
                                mem[_436 + 32] = uint64(ext_call.return_data[32])
                                if uint32(stor8.field_64) < sub_33470433.length:
                                    mem[0] = 9
                                    sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                else:
                                    sub_33470433.length++
                                    mem[0] = 9
                                    sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[sub_33470433.length].field_320 = 0
                                uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[64] = 160
                if uint32(stor8.field_64) < sub_33470433.length:
                    sub_33470433[uint32(stor8.field_64)].field_0 = addrFinance
                    sub_33470433[uint32(stor8.field_64)].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _437 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_437] = address(ext_call.return_data[0])
                                    mem[_437 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    sub_33470433.length++
                    sub_33470433[sub_33470433.length].field_0 = addrFinance
                    sub_33470433[sub_33470433.length].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _438 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_438] = address(ext_call.return_data[0])
                                    mem[_438 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
    else:
        require status <= 6
        if status != 2:
            revert with 0, 'status error'
        if arg1 <= 0:
            revert with 0, 'loopCnt 0'
        require status <= 6
        if status == 2:
            if uint32(stor8.field_32):
                s = 0
                s = 0
                idx = 0
                s = uint32(stor8.field_32)
                while idx < arg1:
                    if uint32(s) >= uint32(stor8.field_0):
                        uint32(stor8.field_32) = uint32(s)
                        status = 3
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x941e8e4d with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint32(stor8.field_128) = uint32(block.timestamp)
                        emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                        return 1
                    require ext_code.size(sub_14d329d5Address)
                    call sub_14d329d5Address.0x21ec49a2 with:
                         gas gas_remaining wei
                        args (s << 224)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] > 0:
                        if address(ext_call.return_data[0]):
                            if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                _439 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_439] = address(ext_call.return_data[0])
                                mem[_439 + 32] = uint64(ext_call.return_data[32])
                                if uint32(stor8.field_64) < sub_33470433.length:
                                    mem[0] = 9
                                    sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                else:
                                    sub_33470433.length++
                                    mem[0] = 9
                                    sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[sub_33470433.length].field_320 = 0
                                uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[64] = 160
                if uint32(stor8.field_64) < sub_33470433.length:
                    sub_33470433[uint32(stor8.field_64)].field_0 = addrFinance
                    sub_33470433[uint32(stor8.field_64)].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _440 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_440] = address(ext_call.return_data[0])
                                    mem[_440 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    sub_33470433.length++
                    sub_33470433[sub_33470433.length].field_0 = addrFinance
                    sub_33470433[sub_33470433.length].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _441 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_441] = address(ext_call.return_data[0])
                                    mem[_441 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
        else:
            status = 2
            if uint32(stor8.field_32):
                s = 0
                s = 0
                idx = 0
                s = uint32(stor8.field_32)
                while idx < arg1:
                    if uint32(s) >= uint32(stor8.field_0):
                        uint32(stor8.field_32) = uint32(s)
                        status = 3
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x941e8e4d with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint32(stor8.field_128) = uint32(block.timestamp)
                        emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                        return 1
                    require ext_code.size(sub_14d329d5Address)
                    call sub_14d329d5Address.0x21ec49a2 with:
                         gas gas_remaining wei
                        args (s << 224)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] > 0:
                        if address(ext_call.return_data[0]):
                            if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                _442 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_442] = address(ext_call.return_data[0])
                                mem[_442 + 32] = uint64(ext_call.return_data[32])
                                if uint32(stor8.field_64) < sub_33470433.length:
                                    mem[0] = 9
                                    sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                else:
                                    sub_33470433.length++
                                    mem[0] = 9
                                    sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                    sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                    sub_33470433[sub_33470433.length].field_320 = 0
                                uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[64] = 160
                if uint32(stor8.field_64) < sub_33470433.length:
                    sub_33470433[uint32(stor8.field_64)].field_0 = addrFinance
                    sub_33470433[uint32(stor8.field_64)].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _443 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_443] = address(ext_call.return_data[0])
                                    mem[_443 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
                else:
                    sub_33470433.length++
                    sub_33470433[sub_33470433.length].field_0 = addrFinance
                    sub_33470433[sub_33470433.length].field_256 = stor7
                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                    s = 0
                    s = 0
                    idx = 0
                    s = 1
                    while idx < arg1:
                        if uint32(s) >= uint32(stor8.field_0):
                            uint32(stor8.field_32) = uint32(s)
                            status = 3
                            require ext_code.size(sub_14d329d5Address)
                            call sub_14d329d5Address.0x941e8e4d with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint32(stor8.field_128) = uint32(block.timestamp)
                            emit 0xf0fdff55: uint32(stor8.field_0), stor6, stor7, uint32(stor8.field_64)
                            return 1
                        require ext_code.size(sub_14d329d5Address)
                        call sub_14d329d5Address.0x21ec49a2 with:
                             gas gas_remaining wei
                            args (s << 224)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] > 0:
                            if address(ext_call.return_data[0]):
                                if uint32(ext_code.size(address(ext_call.return_data[0]))) <= 0:
                                    _444 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_444] = address(ext_call.return_data[0])
                                    mem[_444 + 32] = uint64(ext_call.return_data[32])
                                    if uint32(stor8.field_64) < sub_33470433.length:
                                        mem[0] = 9
                                        sub_33470433[uint32(stor8.field_64)].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[uint32(stor8.field_64)].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[uint32(stor8.field_64)].field_320 = 0
                                    else:
                                        sub_33470433.length++
                                        mem[0] = 9
                                        sub_33470433[sub_33470433.length].field_0 = address(ext_call.return_data[0])
                                        sub_33470433[sub_33470433.length].field_256 = uint64(ext_call.return_data[32])
                                        sub_33470433[sub_33470433.length].field_320 = 0
                                    uint32(stor8.field_64) = uint32(uint32(stor8.field_64) + 1)
                        s = ext_call.return_data[32]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 1
                        continue 
    uint32(stor8.field_32) = uint32(s)
    return 0
}

function sub_85294b8b(?) payable {
    mem[64] = 96
    require not msg.value
    if address(stor1.length) != msg.sender:
        revert with 0, 'not op'
    require status <= 6
    if status == 4:
        if arg1 <= 0:
            revert with 0, 'loopCnt 0'
        require status <= 6
        if status == 5:
            require sub_d1107238.length - 1 < sub_d1107238.length
            mem[0] = 4
            s = 0
            s = 0
            s = 0
            idx = 0
            s = sub_6d65db56
            while idx < arg1:
                if s >= uint32(stor8.field_64):
                    sub_6d65db56 = s
                    sub_d1107238[sub_d1107238.length].field_0 = uint32(block.timestamp)
                    stor10 = block.timestamp
                    status = 6
                    _394 = mem[64]
                    mem[mem[64] + 64] = uint32(stor8.field_64)
                    mem[mem[64] + 96] = sub_d1107238[sub_d1107238.length].field_0
                    mem[mem[64]] = 128
                    mem[_394 + 128] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        mem[_394 + 32] = 160
                        mem[_394 + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _394 + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_394 + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _394 + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    else:
                        mem[_394 + 160] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        idx = _394 + 160
                        s = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160 > idx + 32:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_394 + 32] = (32 * sub_d1107238[sub_d1107238.length].field_0) + 160
                        mem[_394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _394 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    return 1
                require s < sub_33470433.length
                mem[0] = 9
                emit 0xace6700b: sub_33470433[s].field_256, sub_d1107238.length - 1, s, sub_33470433[s].field_0
                if not sub_33470433[s].field_0:
                    revert with 0, 'staker is 0'
                _417 = mem[64]
                mem[mem[64]] = sub_d1107238[sub_d1107238.length].field_0
                mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                if not sub_d1107238[sub_d1107238.length].field_0:
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _839 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_839] = 26
                            mem[_839 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_417]
                                mem[(32 * t) + _417 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _870 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_870 + idx + 68] = mem[_839 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_870 + 68] = mem[_870 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _870 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_869] = 26
                        mem[_869 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_417]
                            mem[(32 * t) + _417 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_901 + idx + 68] = mem[_869 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_901 + 68] = mem[_901 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _901 + -mem[64] + 100
                    _765 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_765] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _789 = mem[_417]
                        t = 0
                        u = 0
                        u = 0
                        while t < _789:
                            require t < mem[_417]
                            _1121 = mem[(32 * t) + _417 + 32]
                            require t < mem[_765]
                            _1177 = mem[(32 * t) + _765 + 32]
                            if mem[(32 * t) + _417 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _765 + 32]
                                u = mem[(32 * t) + _417 + 32]
                                continue 
                            if not mem[(32 * t) + _765 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _417 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _417 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1121
                                require ext_code.size(address(_1177))
                                call address(_1177).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1121
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1121
                                emit 0x52a1ece0: _1121, sub_33470433[s].field_0, address(_1177)
                            t = t + 1
                            u = _1177
                            u = _1121
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_765 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _765 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _765 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1289 = mem[_417]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1289:
                            require t < mem[_417]
                            _1437 = mem[(32 * t) + _417 + 32]
                            require t < mem[_765]
                            _1461 = mem[(32 * t) + _765 + 32]
                            if mem[(32 * t) + _417 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _765 + 32]
                                u = mem[(32 * t) + _417 + 32]
                                continue 
                            if not mem[(32 * t) + _765 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _417 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _417 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1437
                                require ext_code.size(address(_1461))
                                call address(_1461).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1437
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1437
                                emit 0x52a1ece0: _1437, sub_33470433[s].field_0, address(_1461)
                            t = t + 1
                            u = _1461
                            u = _1437
                            continue 
                else:
                    mem[_417 + 32 len 32 * sub_d1107238[sub_d1107238.length].field_0] = code.data[15608 len 32 * sub_d1107238[sub_d1107238.length].field_0]
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _842 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_842] = 26
                            mem[_842 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_417]
                                mem[(32 * t) + _417 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _874 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_874 + idx + 68] = mem[_842 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_874 + 68] = mem[_874 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _874 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _873 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_873] = 26
                        mem[_873 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_417]
                            mem[(32 * t) + _417 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_905 + idx + 68] = mem[_873 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_905 + 68] = mem[_905 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _905 + -mem[64] + 100
                    _766 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_766] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _792 = mem[_417]
                        t = 0
                        u = 0
                        u = 0
                        while t < _792:
                            require t < mem[_417]
                            _1127 = mem[(32 * t) + _417 + 32]
                            require t < mem[_766]
                            _1180 = mem[(32 * t) + _766 + 32]
                            if mem[(32 * t) + _417 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _766 + 32]
                                u = mem[(32 * t) + _417 + 32]
                                continue 
                            if not mem[(32 * t) + _766 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _417 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _417 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1127
                                require ext_code.size(address(_1180))
                                call address(_1180).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1127
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1127
                                emit 0x52a1ece0: _1127, sub_33470433[s].field_0, address(_1180)
                            t = t + 1
                            u = _1180
                            u = _1127
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_766 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _766 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _766 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1292 = mem[_417]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1292:
                            require t < mem[_417]
                            _1439 = mem[(32 * t) + _417 + 32]
                            require t < mem[_766]
                            _1462 = mem[(32 * t) + _766 + 32]
                            if mem[(32 * t) + _417 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _766 + 32]
                                u = mem[(32 * t) + _417 + 32]
                                continue 
                            if not mem[(32 * t) + _766 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _417 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _417 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1439
                                require ext_code.size(address(_1462))
                                call address(_1462).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1439
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1439
                                emit 0x52a1ece0: _1439, sub_33470433[s].field_0, address(_1462)
                            t = t + 1
                            u = _1462
                            u = _1439
                            continue 
                s = sub_33470433[s].field_256
                s = sub_33470433[s].field_0
                s = (2 * s) + sha3(9)
                idx = idx + 1
                s = s + 1
                continue 
        else:
            status = 5
            require sub_d1107238.length - 1 < sub_d1107238.length
            mem[0] = 4
            s = 0
            s = 0
            s = 0
            idx = 0
            s = sub_6d65db56
            while idx < arg1:
                if s >= uint32(stor8.field_64):
                    sub_6d65db56 = s
                    sub_d1107238[sub_d1107238.length].field_0 = uint32(block.timestamp)
                    stor10 = block.timestamp
                    status = 6
                    _400 = mem[64]
                    mem[mem[64] + 64] = uint32(stor8.field_64)
                    mem[mem[64] + 96] = sub_d1107238[sub_d1107238.length].field_0
                    mem[mem[64]] = 128
                    mem[_400 + 128] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        mem[_400 + 32] = 160
                        mem[_400 + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _400 + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_400 + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _400 + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    else:
                        mem[_400 + 160] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        idx = _400 + 160
                        s = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160 > idx + 32:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_400 + 32] = (32 * sub_d1107238[sub_d1107238.length].field_0) + 160
                        mem[_400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _400 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    return 1
                require s < sub_33470433.length
                mem[0] = 9
                emit 0xace6700b: sub_33470433[s].field_256, sub_d1107238.length - 1, s, sub_33470433[s].field_0
                if not sub_33470433[s].field_0:
                    revert with 0, 'staker is 0'
                _422 = mem[64]
                mem[mem[64]] = sub_d1107238[sub_d1107238.length].field_0
                mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                if not sub_d1107238[sub_d1107238.length].field_0:
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_845] = 26
                            mem[_845 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_422]
                                mem[(32 * t) + _422 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _878 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_878 + idx + 68] = mem[_845 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_878 + 68] = mem[_878 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _878 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _877 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_877] = 26
                        mem[_877 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_422]
                            mem[(32 * t) + _422 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _909 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_909 + idx + 68] = mem[_877 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_909 + 68] = mem[_909 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _909 + -mem[64] + 100
                    _767 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_767] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _795 = mem[_422]
                        t = 0
                        u = 0
                        u = 0
                        while t < _795:
                            require t < mem[_422]
                            _1135 = mem[(32 * t) + _422 + 32]
                            require t < mem[_767]
                            _1185 = mem[(32 * t) + _767 + 32]
                            if mem[(32 * t) + _422 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _767 + 32]
                                u = mem[(32 * t) + _422 + 32]
                                continue 
                            if not mem[(32 * t) + _767 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _422 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _422 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1135
                                require ext_code.size(address(_1185))
                                call address(_1185).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1135
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1135
                                emit 0x52a1ece0: _1135, sub_33470433[s].field_0, address(_1185)
                            t = t + 1
                            u = _1185
                            u = _1135
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_767 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _767 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _767 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1295 = mem[_422]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1295:
                            require t < mem[_422]
                            _1443 = mem[(32 * t) + _422 + 32]
                            require t < mem[_767]
                            _1463 = mem[(32 * t) + _767 + 32]
                            if mem[(32 * t) + _422 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _767 + 32]
                                u = mem[(32 * t) + _422 + 32]
                                continue 
                            if not mem[(32 * t) + _767 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _422 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _422 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1443
                                require ext_code.size(address(_1463))
                                call address(_1463).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1443
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1443
                                emit 0x52a1ece0: _1443, sub_33470433[s].field_0, address(_1463)
                            t = t + 1
                            u = _1463
                            u = _1443
                            continue 
                else:
                    mem[_422 + 32 len 32 * sub_d1107238[sub_d1107238.length].field_0] = code.data[15608 len 32 * sub_d1107238[sub_d1107238.length].field_0]
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _848 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_848] = 26
                            mem[_848 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_422]
                                mem[(32 * t) + _422 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _882 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_882 + idx + 68] = mem[_848 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_882 + 68] = mem[_882 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _882 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _881 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_881] = 26
                        mem[_881 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_422]
                            mem[(32 * t) + _422 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_913 + idx + 68] = mem[_881 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_913 + 68] = mem[_913 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _913 + -mem[64] + 100
                    _768 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_768] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _798 = mem[_422]
                        t = 0
                        u = 0
                        u = 0
                        while t < _798:
                            require t < mem[_422]
                            _1141 = mem[(32 * t) + _422 + 32]
                            require t < mem[_768]
                            _1188 = mem[(32 * t) + _768 + 32]
                            if mem[(32 * t) + _422 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _768 + 32]
                                u = mem[(32 * t) + _422 + 32]
                                continue 
                            if not mem[(32 * t) + _768 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _422 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _422 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1141
                                require ext_code.size(address(_1188))
                                call address(_1188).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1141
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1141
                                emit 0x52a1ece0: _1141, sub_33470433[s].field_0, address(_1188)
                            t = t + 1
                            u = _1188
                            u = _1141
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_768 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _768 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _768 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1298 = mem[_422]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1298:
                            require t < mem[_422]
                            _1445 = mem[(32 * t) + _422 + 32]
                            require t < mem[_768]
                            _1464 = mem[(32 * t) + _768 + 32]
                            if mem[(32 * t) + _422 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _768 + 32]
                                u = mem[(32 * t) + _422 + 32]
                                continue 
                            if not mem[(32 * t) + _768 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _422 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _422 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1445
                                require ext_code.size(address(_1464))
                                call address(_1464).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1445
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1445
                                emit 0x52a1ece0: _1445, sub_33470433[s].field_0, address(_1464)
                            t = t + 1
                            u = _1464
                            u = _1445
                            continue 
                s = sub_33470433[s].field_256
                s = sub_33470433[s].field_0
                s = (2 * s) + sha3(9)
                idx = idx + 1
                s = s + 1
                continue 
    else:
        require status <= 6
        if status != 5:
            revert with 0, 'status error'
        if arg1 <= 0:
            revert with 0, 'loopCnt 0'
        require status <= 6
        if status == 5:
            require sub_d1107238.length - 1 < sub_d1107238.length
            mem[0] = 4
            s = 0
            s = 0
            s = 0
            idx = 0
            s = sub_6d65db56
            while idx < arg1:
                if s >= uint32(stor8.field_64):
                    sub_6d65db56 = s
                    sub_d1107238[sub_d1107238.length].field_0 = uint32(block.timestamp)
                    stor10 = block.timestamp
                    status = 6
                    _406 = mem[64]
                    mem[mem[64] + 64] = uint32(stor8.field_64)
                    mem[mem[64] + 96] = sub_d1107238[sub_d1107238.length].field_0
                    mem[mem[64]] = 128
                    mem[_406 + 128] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        mem[_406 + 32] = 160
                        mem[_406 + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _406 + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_406 + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _406 + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    else:
                        mem[_406 + 160] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        idx = _406 + 160
                        s = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160 > idx + 32:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_406 + 32] = (32 * sub_d1107238[sub_d1107238.length].field_0) + 160
                        mem[_406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _406 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    return 1
                require s < sub_33470433.length
                mem[0] = 9
                emit 0xace6700b: sub_33470433[s].field_256, sub_d1107238.length - 1, s, sub_33470433[s].field_0
                if not sub_33470433[s].field_0:
                    revert with 0, 'staker is 0'
                _427 = mem[64]
                mem[mem[64]] = sub_d1107238[sub_d1107238.length].field_0
                mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                if not sub_d1107238[sub_d1107238.length].field_0:
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _851 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_851] = 26
                            mem[_851 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_427]
                                mem[(32 * t) + _427 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _886 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_886 + idx + 68] = mem[_851 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_886 + 68] = mem[_886 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _886 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _885 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_885] = 26
                        mem[_885 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_427]
                            mem[(32 * t) + _427 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _917 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_917 + idx + 68] = mem[_885 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_917 + 68] = mem[_917 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _917 + -mem[64] + 100
                    _769 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_769] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _801 = mem[_427]
                        t = 0
                        u = 0
                        u = 0
                        while t < _801:
                            require t < mem[_427]
                            _1149 = mem[(32 * t) + _427 + 32]
                            require t < mem[_769]
                            _1193 = mem[(32 * t) + _769 + 32]
                            if mem[(32 * t) + _427 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _769 + 32]
                                u = mem[(32 * t) + _427 + 32]
                                continue 
                            if not mem[(32 * t) + _769 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _427 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _427 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1149
                                require ext_code.size(address(_1193))
                                call address(_1193).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1149
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1149
                                emit 0x52a1ece0: _1149, sub_33470433[s].field_0, address(_1193)
                            t = t + 1
                            u = _1193
                            u = _1149
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_769 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _769 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _769 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1301 = mem[_427]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1301:
                            require t < mem[_427]
                            _1449 = mem[(32 * t) + _427 + 32]
                            require t < mem[_769]
                            _1465 = mem[(32 * t) + _769 + 32]
                            if mem[(32 * t) + _427 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _769 + 32]
                                u = mem[(32 * t) + _427 + 32]
                                continue 
                            if not mem[(32 * t) + _769 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _427 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _427 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1449
                                require ext_code.size(address(_1465))
                                call address(_1465).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1449
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1449
                                emit 0x52a1ece0: _1449, sub_33470433[s].field_0, address(_1465)
                            t = t + 1
                            u = _1465
                            u = _1449
                            continue 
                else:
                    mem[_427 + 32 len 32 * sub_d1107238[sub_d1107238.length].field_0] = code.data[15608 len 32 * sub_d1107238[sub_d1107238.length].field_0]
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _854 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_854] = 26
                            mem[_854 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_427]
                                mem[(32 * t) + _427 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _890 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_890 + idx + 68] = mem[_854 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_890 + 68] = mem[_890 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _890 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _889 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_889] = 26
                        mem[_889 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_427]
                            mem[(32 * t) + _427 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _921 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_921 + idx + 68] = mem[_889 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_921 + 68] = mem[_921 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _921 + -mem[64] + 100
                    _770 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_770] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _804 = mem[_427]
                        t = 0
                        u = 0
                        u = 0
                        while t < _804:
                            require t < mem[_427]
                            _1155 = mem[(32 * t) + _427 + 32]
                            require t < mem[_770]
                            _1196 = mem[(32 * t) + _770 + 32]
                            if mem[(32 * t) + _427 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _770 + 32]
                                u = mem[(32 * t) + _427 + 32]
                                continue 
                            if not mem[(32 * t) + _770 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _427 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _427 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1155
                                require ext_code.size(address(_1196))
                                call address(_1196).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1155
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1155
                                emit 0x52a1ece0: _1155, sub_33470433[s].field_0, address(_1196)
                            t = t + 1
                            u = _1196
                            u = _1155
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_770 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _770 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _770 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1304 = mem[_427]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1304:
                            require t < mem[_427]
                            _1451 = mem[(32 * t) + _427 + 32]
                            require t < mem[_770]
                            _1466 = mem[(32 * t) + _770 + 32]
                            if mem[(32 * t) + _427 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _770 + 32]
                                u = mem[(32 * t) + _427 + 32]
                                continue 
                            if not mem[(32 * t) + _770 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _427 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _427 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1451
                                require ext_code.size(address(_1466))
                                call address(_1466).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1451
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1451
                                emit 0x52a1ece0: _1451, sub_33470433[s].field_0, address(_1466)
                            t = t + 1
                            u = _1466
                            u = _1451
                            continue 
                s = sub_33470433[s].field_256
                s = sub_33470433[s].field_0
                s = (2 * s) + sha3(9)
                idx = idx + 1
                s = s + 1
                continue 
        else:
            status = 5
            require sub_d1107238.length - 1 < sub_d1107238.length
            mem[0] = 4
            s = 0
            s = 0
            s = 0
            idx = 0
            s = sub_6d65db56
            while idx < arg1:
                if s >= uint32(stor8.field_64):
                    sub_6d65db56 = s
                    sub_d1107238[sub_d1107238.length].field_0 = uint32(block.timestamp)
                    stor10 = block.timestamp
                    status = 6
                    _412 = mem[64]
                    mem[mem[64] + 64] = uint32(stor8.field_64)
                    mem[mem[64] + 96] = sub_d1107238[sub_d1107238.length].field_0
                    mem[mem[64]] = 128
                    mem[_412 + 128] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        mem[_412 + 32] = 160
                        mem[_412 + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _412 + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_412 + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _412 + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    else:
                        mem[_412 + 160] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        idx = _412 + 160
                        s = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160 > idx + 32:
                            mem[idx + 32] = address(stor1[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_412 + 32] = (32 * sub_d1107238[sub_d1107238.length].field_0) + 160
                        mem[_412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 160] = sub_d1107238[sub_d1107238.length].field_0
                        if not sub_d1107238[sub_d1107238.length].field_0:
                            emit 0x1ff59d30: mem[mem[64] len _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                        else:
                            mem[_412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2)].field_0
                            idx = _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192
                            s = sha3((3 * sub_d1107238.length) + sha3(4) - 2)
                            while _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + 192 > idx + 32:
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x1ff59d30: mem[mem[64] len _412 + (32 * sub_d1107238[sub_d1107238.length].field_0) + (32 * sub_d1107238[sub_d1107238.length].field_0) + -mem[64] + 192], sub_d1107238.length - 1
                    return 1
                require s < sub_33470433.length
                mem[0] = 9
                emit 0xace6700b: sub_33470433[s].field_256, sub_d1107238.length - 1, s, sub_33470433[s].field_0
                if not sub_33470433[s].field_0:
                    revert with 0, 'staker is 0'
                _432 = mem[64]
                mem[mem[64]] = sub_d1107238[sub_d1107238.length].field_0
                mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                if not sub_d1107238[sub_d1107238.length].field_0:
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _857 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_857] = 26
                            mem[_857 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_432]
                                mem[(32 * t) + _432 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _894 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_894 + idx + 68] = mem[_857 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_894 + 68] = mem[_894 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _894 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_893] = 26
                        mem[_893 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_432]
                            mem[(32 * t) + _432 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _925 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_925 + idx + 68] = mem[_893 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_925 + 68] = mem[_925 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _925 + -mem[64] + 100
                    _771 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_771] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _807 = mem[_432]
                        t = 0
                        u = 0
                        u = 0
                        while t < _807:
                            require t < mem[_432]
                            _1163 = mem[(32 * t) + _432 + 32]
                            require t < mem[_771]
                            _1201 = mem[(32 * t) + _771 + 32]
                            if mem[(32 * t) + _432 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _771 + 32]
                                u = mem[(32 * t) + _432 + 32]
                                continue 
                            if not mem[(32 * t) + _771 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _432 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _432 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1163
                                require ext_code.size(address(_1201))
                                call address(_1201).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1163
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1163
                                emit 0x52a1ece0: _1163, sub_33470433[s].field_0, address(_1201)
                            t = t + 1
                            u = _1201
                            u = _1163
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_771 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _771 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _771 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1307 = mem[_432]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1307:
                            require t < mem[_432]
                            _1455 = mem[(32 * t) + _432 + 32]
                            require t < mem[_771]
                            _1467 = mem[(32 * t) + _771 + 32]
                            if mem[(32 * t) + _432 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _771 + 32]
                                u = mem[(32 * t) + _432 + 32]
                                continue 
                            if not mem[(32 * t) + _771 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _432 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _432 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1455
                                require ext_code.size(address(_1467))
                                call address(_1467).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1455
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1455
                                emit 0x52a1ece0: _1455, sub_33470433[s].field_0, address(_1467)
                            t = t + 1
                            u = _1467
                            u = _1455
                            continue 
                else:
                    mem[_432 + 32 len 32 * sub_d1107238[sub_d1107238.length].field_0] = code.data[15608 len 32 * sub_d1107238[sub_d1107238.length].field_0]
                    t = 0
                    while t < sub_d1107238[sub_d1107238.length].field_0:
                        require t < sub_d1107238[sub_d1107238.length].field_0
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 2
                        if not stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0:
                            _860 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_860] = 26
                            mem[_860 + 32] = 'SafeMath: division by zero'
                            if stor6 > 0:
                                require stor6
                                require t < mem[_432]
                                mem[(32 * t) + _432 + 32] = 0 / stor6
                                t = t + 1
                                continue 
                            _898 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_898 + idx + 68] = mem[_860 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_898 + 68] = mem[_898 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _898 + -mem[64] + 100
                        require stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0
                        if stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 != sub_33470433[s].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_897] = 26
                        mem[_897 + 32] = 'SafeMath: division by zero'
                        if stor6 > 0:
                            require stor6
                            require t < mem[_432]
                            mem[(32 * t) + _432 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 2) + t].field_0 * sub_33470433[s].field_256 / stor6
                            t = t + 1
                            continue 
                        _929 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_929 + idx + 68] = mem[_897 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_929 + 68] = mem[_929 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _929 + -mem[64] + 100
                    _772 = mem[64]
                    mem[64] = mem[64] + (32 * sub_d1107238[sub_d1107238.length].field_0) + 32
                    mem[_772] = sub_d1107238[sub_d1107238.length].field_0
                    if not sub_d1107238[sub_d1107238.length].field_0:
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _810 = mem[_432]
                        t = 0
                        u = 0
                        u = 0
                        while t < _810:
                            require t < mem[_432]
                            _1169 = mem[(32 * t) + _432 + 32]
                            require t < mem[_772]
                            _1204 = mem[(32 * t) + _772 + 32]
                            if mem[(32 * t) + _432 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _772 + 32]
                                u = mem[(32 * t) + _432 + 32]
                                continue 
                            if not mem[(32 * t) + _772 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _432 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _432 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1169
                                require ext_code.size(address(_1204))
                                call address(_1204).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1169
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1169
                                emit 0x52a1ece0: _1169, sub_33470433[s].field_0, address(_1204)
                            t = t + 1
                            u = _1204
                            u = _1169
                            continue 
                    else:
                        mem[0] = (3 * sub_d1107238.length) + sha3(4) - 3
                        mem[_772 + 32] = stor[sha3((3 * sub_d1107238.length) + ('name', 'sub_d1107238', 4) - 3)].field_0
                        t = _772 + 32
                        u = sha3((3 * sub_d1107238.length) + sha3(4) - 3)
                        while _772 + (32 * sub_d1107238[sub_d1107238.length].field_0) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        if not sub_33470433[s].field_0:
                            revert with 0, '_addr is 0'
                        _1310 = mem[_432]
                        t = 0
                        u = 0
                        u = 0
                        while t < _1310:
                            require t < mem[_432]
                            _1457 = mem[(32 * t) + _432 + 32]
                            require t < mem[_772]
                            _1468 = mem[(32 * t) + _772 + 32]
                            if mem[(32 * t) + _432 + 32] <= 0:
                                t = t + 1
                                u = mem[(32 * t) + _772 + 32]
                                u = mem[(32 * t) + _432 + 32]
                                continue 
                            if not mem[(32 * t) + _772 + 44 len 20]:
                                call sub_33470433[s].field_0 with:
                                   value mem[(32 * t) + _432 + 32] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = mem[(32 * t) + _432 + 32]
                                emit TransferBnb(mem[mem[64]], sub_33470433[s].field_0);
                            else:
                                mem[mem[64] + 4] = sub_33470433[s].field_0
                                mem[mem[64] + 36] = _1457
                                require ext_code.size(address(_1468))
                                call address(_1468).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args sub_33470433[s].field_0, _1457
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64]] = _1457
                                emit 0x52a1ece0: _1457, sub_33470433[s].field_0, address(_1468)
                            t = t + 1
                            u = _1468
                            u = _1457
                            continue 
                s = sub_33470433[s].field_256
                s = sub_33470433[s].field_0
                s = (2 * s) + sha3(9)
                idx = idx + 1
                s = s + 1
                continue 
    sub_6d65db56 = s
    return 0
}



}
