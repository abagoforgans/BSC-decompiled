contract main {




// =====================  Runtime code  =====================


uint8 isPaused;
address addrAdmin; offset 8
address operatorAddress;
address addrFinance;
mapping of uint8 stor3;
mapping of uint8 stor4;

function safeBetContracts(address arg1) {
    return bool(stor3[arg1])
}

function sub_4e2a3022(?) {
    return bool(stor4[arg1])
}

function operator() {
    return operatorAddress
}

function addrFinance() {
    return addrFinance
}

function isPaused() {
    return bool(isPaused)
}

function addrAdmin() {
    return addrAdmin
}

function _fallback() payable {
  stop
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    isPaused = uint8(arg1)
}

function setSafeContract(address arg1, bool arg2) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor3[address(arg1)] = uint8(arg2)
}

function setFinance(address arg1) {
    if addrFinance != msg.sender:
        revert with 0, 'not finance'
    if not arg1:
        revert with 0, '_addr is 0'
    addrFinance = arg1
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
    operatorAddress = arg1
}

function sub_0f770a00(?) {
    require stor3[address(msg.sender)]
    require not stor4[arg4]
    stor4[arg4] = 1
    if not arg2:
        if arg3 > 0:
            call arg1 with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TransferBnb(arg3, arg1);
    else:
        if arg3 > 0:
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x52a1ece0: arg3, arg1, arg2
}

function sub_d416f72c(?) {
    require stor3[address(msg.sender)]
    require not stor4[arg4]
    stor4[arg4] = 1
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not arg1:
        revert with 0, '_addr is 0'
    idx = 0
    s = 0
    s = 0
    while idx < arg3.length:
        require idx < arg3.length
        _24 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < arg2.length
        _26 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            s = mem[(32 * idx) + (32 * arg2.length) + 160]
            continue 
        if not mem[(32 * idx) + 140 len 20]:
            call arg1 with:
               value mem[(32 * idx) + (32 * arg2.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
            emit TransferBnb(mem[(32 * arg2.length) + (32 * arg3.length) + 160], arg1);
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = arg1
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _24
            require ext_code.size(address(_26))
            call address(_26).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), _24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = _24
            emit 0x52a1ece0: _24, arg1, address(_26)
        idx = idx + 1
        s = _26
        s = _24
        continue 
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
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[5971 len 32 * arg1.length]
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



}
