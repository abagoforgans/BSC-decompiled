contract main {




// =====================  Runtime code  =====================


address upgradeabilityOwner;
array of uint256 version;
address implementationAddress;
mapping of uint256 arrayLimit;
mapping of address owner;
mapping of uint8 stor7;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return implementationAddress
}

function upgradeabilityOwner() {
    return upgradeabilityOwner
}

function owner() {
    return owner['owner']
}

function arrayLimit() {
    return arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
}

function currentFee() {
    return arrayLimit['fee']
}

function fee() {
    return arrayLimit['fee']
}

function pendingOwner() {
    return owner['pendingOwner']
}

function _fallback() payable {
  stop
}

function setFee(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['fee'] = arg1
}

function setArrayLimit(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['arrayLimit'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner['owner']
    require arg1
    owner['pendingOwner'] = arg1
}

function claimOwnership() {
    require msg.sender == owner['pendingOwner']
    emit OwnershipTransferred(owner['owner'], owner['pendingOwner']);
    owner['owner'] = owner['pendingOwner']
    owner['pendingOwner'] = 0
}

function initialize(address arg1) {
    require not stor7['rs_multisender_initialized']
    emit OwnershipTransferred(owner['owner'], arg1);
    owner['owner'] = arg1
    require msg.sender == owner['owner']
    arrayLimit['arrayLimit'] = 200
    require msg.sender == owner['owner']
    arrayLimit['fee'] = 5 * 10^17
    stor7['rs_multisender_initialized'] = 1
}

function claimTokens(address arg1) {
    require msg.sender == owner['owner']
    if not arg1:
        call owner['owner'] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner['owner'], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimedTokens(address(arg1), owner['owner'], ext_call.return_data[0]);
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.value >= arrayLimit['fee']
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 'arrayLimit'
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10
    mem[(32 * arg1.length) + (32 * arg2.length) + 202 len 0] = None
    mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 10] = Mask(80, 0, 'arrayLimit')
    require arg1.length <= arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
    require arrayLimit['fee'] <= msg.value
    idx = 0
    s = msg.value - arrayLimit['fee']
    while idx < arg1.length:
        require idx < arg2.length
        require s >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= s
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s - mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    emit Multisended(msg.value, 48879);
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arrayLimit['fee'] <= 0:
        if arg1 != 48879:
            mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'arrayLimit'
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 10
            mem[(32 * arg2.length) + (32 * arg3.length) + 202 len 0] = None
            mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 10] = Mask(80, 0, 'arrayLimit')
            require arg2.length <= arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _211 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _217 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 206] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 238] = address(_211)
                mem[(32 * arg2.length) + (32 * arg3.length) + 270] = _217
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_211), _217
                mem[(32 * arg2.length) + (32 * arg3.length) + 202] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
            emit Multisended(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, arg1);
        else:
            require msg.value >= arrayLimit['fee']
            mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'arrayLimit'
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 10
            mem[(32 * arg2.length) + (32 * arg3.length) + 202 len 0] = None
            mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 10] = Mask(80, 0, 'arrayLimit')
            mem[(32 * arg2.length) + (32 * arg3.length) + 202 len 22] = Mask(176, 0, 'arrayLimit')
            require arg2.length <= arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
            require arrayLimit['fee'] <= msg.value
            idx = 0
            s = msg.value - arrayLimit['fee']
            while idx < arg2.length:
                require idx < arg3.length
                require s >= mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < arg3.length
                require mem[(32 * idx) + (32 * arg2.length) + 160] <= s
                require idx < arg2.length
                require idx < arg3.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg2.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - mem[(32 * idx) + (32 * arg2.length) + 160]
                continue 
            emit Multisended(msg.value, 48879);
    else:
        require msg.value >= arrayLimit['fee']
        if arg1 != 48879:
            mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'arrayLimit'
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 10
            mem[(32 * arg2.length) + (32 * arg3.length) + 202 len 0] = None
            mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 10] = Mask(80, 0, 'arrayLimit')
            require arg2.length <= arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _214 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _221 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 206] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 238] = address(_214)
                mem[(32 * arg2.length) + (32 * arg3.length) + 270] = _221
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_214), _221
                mem[(32 * arg2.length) + (32 * arg3.length) + 202] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
            emit Multisended(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, arg1);
        else:
            require msg.value >= arrayLimit['fee']
            mem[(32 * arg2.length) + (32 * arg3.length) + 192] = 'arrayLimit'
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 10
            mem[(32 * arg2.length) + (32 * arg3.length) + 202 len 0] = None
            mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 10] = Mask(80, 0, 'arrayLimit')
            mem[(32 * arg2.length) + (32 * arg3.length) + 202 len 22] = Mask(176, 0, 'arrayLimit')
            require arg2.length <= arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
            require arrayLimit['fee'] <= msg.value
            idx = 0
            s = msg.value - arrayLimit['fee']
            while idx < arg2.length:
                require idx < arg3.length
                require s >= mem[(32 * idx) + (32 * arg2.length) + 160]
                require idx < arg3.length
                require mem[(32 * idx) + (32 * arg2.length) + 160] <= s
                require idx < arg2.length
                require idx < arg3.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg2.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - mem[(32 * idx) + (32 * arg2.length) + 160]
                continue 
            emit Multisended(msg.value, 48879);
}



}
