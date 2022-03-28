contract main {




// =====================  Runtime code  =====================


const getBridgeValidatorsInterfacesVersion = 2, 3, 0

const F_ADDR = 0xffffffffffffffffffffffffffffffffffffffff


mapping of address nextValidator;
uint8 isInitialized;
uint256 requiredSignatures;
uint256 validatorCount;
address owner;
uint256 deployedAtBlock;

function validatorCount() {
    return validatorCount
}

function isInitialized() {
    return bool(isInitialized)
}

function requiredSignatures() {
    return requiredSignatures
}

function getNextValidator(address arg1) {
    return nextValidator['validatorsList'][arg1]
}

function owner() {
    return owner
}

function deployedAtBlock() {
    return deployedAtBlock
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == owner
    require validatorCount >= arg1
    require arg1
    requiredSignatures = arg1
    emit RequiredSignaturesChanged(arg1);
}

function isValidator(address arg1) {
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        return arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    return not not nextValidator['validatorsList'][arg1]
}

function addValidator(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require not nextValidator['validatorsList'][arg1]
    require nextValidator['validatorsList'][test266151307()][65535]
    nextValidator['validatorsList'][arg1] = nextValidator['validatorsList'][test266151307()][65535]
    nextValidator['validatorsList'][test266151307()][65535] = arg1
    require validatorCount + 1 >= validatorCount
    require validatorCount + 1 <= 50
    validatorCount++
    emit ValidatorAdded(arg1);
}

function isValidatorDuty(address arg1) {
    mem[128] = 'validatorsList'
    mem[142] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
    mem[96] = 34
    mem[64] = 162
    mem[162] = 'validatorsList', test266151307()
    mem[194 len 2] = 65535
    mem[0] = sha3('validatorsList', test266151307(), 65535)
    mem[32] = 2
    require nextValidator['validatorsList'][test266151307()][65535]
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
        if address(idx) == arg1:
            require validatorCount
            return (block.number % validatorCount == s)
        _47 = mem[64]
        mem[mem[64] + 32] = 'validatorsList'
        mem[mem[64] + 46] = address(idx)
        _48 = mem[64]
        mem[mem[64]] = 34
        mem[64] = mem[64] + 66
        _50 = mem[_48]
        t = _48 + 32
        u = mem[64]
        idx = mem[_48]
        while idx >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_48])] = 256^(-(mem[_48] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_48])] or mem[_48 + floor32(mem[_48]) + 32] and !(256^(-(mem[_48] % 32) + 32) - 1)
        mem[0] = sha3(mem[mem[64] len _47 + _50 + -mem[64] + 66])
        mem[32] = 2
        require nextValidator[mem[0]]
        idx = nextValidator[mem[0]]
        s = s + 1
        continue 
    return 0
}

function removeValidator(address arg1) {
    require msg.sender == owner
    require validatorCount > requiredSignatures
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    mem[128] = 'validatorsList'
    mem[142] = address(arg1)
    mem[96] = 34
    require nextValidator['validatorsList'][arg1]
    mem[194] = 'validatorsList'
    mem[208] = address(arg1)
    mem[162] = 34
    mem[260] = 'validatorsList'
    mem[274] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
    mem[228] = 34
    mem[64] = 294
    mem[294] = 'validatorsList', test266151307()
    mem[326 len 2] = 65535
    mem[0] = sha3('validatorsList', test266151307(), 65535)
    mem[32] = 2
    require nextValidator['validatorsList'][test266151307()][65535]
    idx = stor[sha3(mem[0 len 64])]
    s = 0xffffffffffffffffffffffffffffffffffffffff
    while arg1 != address(idx):
        _227 = mem[64]
        mem[mem[64] + 32] = 'validatorsList'
        mem[mem[64] + 46] = address(idx)
        _228 = mem[64]
        mem[mem[64]] = 34
        mem[64] = mem[64] + 66
        _230 = mem[_228]
        t = _228 + 32
        u = _227 + 66
        s = mem[_228]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_227 + floor32(mem[_228]) + 66] = 256^(-(mem[_228] % 32) + 32) - 1 and mem[_227 + floor32(mem[_228]) + 66] or mem[_228 + floor32(mem[_228]) + 32] and !(256^(-(mem[_228] % 32) + 32) - 1)
        mem[0] = sha3(mem[_227 + 66 len _230])
        mem[32] = 2
        require nextValidator[mem[0]] != 0xffffffffffffffffffffffffffffffffffffffff
        require nextValidator[mem[0]]
        idx = nextValidator[mem[0]]
        s = idx
        continue 
    _223 = mem[64]
    mem[mem[64] + 32] = 'validatorsList'
    mem[mem[64] + 46] = address(s)
    _224 = mem[64]
    mem[mem[64]] = 34
    mem[64] = mem[64] + 66
    _226 = mem[_224]
    mem[_223 + 66 len floor32(mem[_224])] = mem[_224 + 32 len floor32(mem[_224])]
    mem[_223 + floor32(mem[_224]) + 66] = 256^(-(mem[_224] % 32) + 32) - 1 and mem[_223 + floor32(mem[_224]) + 66] or mem[_224 + floor32(mem[_224]) + 32] and !(256^(-(mem[_224] % 32) + 32) - 1)
    mem[0] = sha3(mem[_223 + 66 len _226])
    nextValidator[mem[0]] = nextValidator['validatorsList'][arg1]
    mem[_223 + 66] = 14
    mem[_223 + 98] = 'validatorsList'
    mem[_223 + 162 len 0] = None
    mem[_223 + 176] = address(arg1)
    mem[_223 + 130] = 34
    mem[_223 + 196] = mem[_223 + 162 len 14], Mask(144, 16, arg1) >> 16
    mem[_223 + 228 len 2] = uint16(arg1)
    mem[0] = sha3(mem[_223 + 162 len 14], arg1)
    nextValidator[mem[0]] = 0
    require 1 <= validatorCount
    require validatorCount - 1 <= 50
    validatorCount--
    emit ValidatorRemoved(arg1);
}

function validatorList() {
    mem[96] = validatorCount
    if not validatorCount:
        mem[(32 * validatorCount) + 160] = 'validatorsList'
        mem[(32 * validatorCount) + 174] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
        mem[(32 * validatorCount) + 128] = 34
        mem[64] = (32 * validatorCount) + 194
        mem[(32 * validatorCount) + 194] = 'validatorsList', test266151307()
        mem[(32 * validatorCount) + 226 len 2] = 65535
        mem[0] = sha3('validatorsList', test266151307(), 65535)
        mem[32] = 2
        require nextValidator['validatorsList'][test266151307()][65535]
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
            require s < mem[96]
            mem[(32 * s) + 128] = address(idx)
            _106 = mem[64]
            mem[mem[64] + 32] = 'validatorsList'
            mem[mem[64] + 46] = address(idx)
            _107 = mem[64]
            mem[mem[64]] = 34
            mem[64] = mem[64] + 66
            _109 = mem[_107]
            t = _107 + 32
            u = _106 + 66
            idx = mem[_107]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[_106 + floor32(mem[_107]) + 66] = 256^(-(mem[_107] % 32) + 32) - 1 and mem[_106 + floor32(mem[_107]) + 66] or mem[_107 + floor32(mem[_107]) + 32] and !(256^(-(mem[_107] % 32) + 32) - 1)
            mem[0] = sha3(mem[_106 + 66 len _109])
            mem[32] = 2
            require nextValidator[mem[0]]
            idx = nextValidator[mem[0]]
            s = s + 1
            continue 
    else:
        mem[128 len 32 * validatorCount] = code.data[4917 len 32 * validatorCount]
        mem[(32 * validatorCount) + 160] = 'validatorsList'
        mem[(32 * validatorCount) + 174] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
        mem[(32 * validatorCount) + 128] = 34
        mem[64] = (32 * validatorCount) + 194
        mem[(32 * validatorCount) + 194] = 'validatorsList', test266151307()
        mem[(32 * validatorCount) + 226 len 2] = 65535
        mem[0] = sha3('validatorsList', test266151307(), 65535)
        mem[32] = 2
        require nextValidator['validatorsList'][test266151307()][65535]
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
            require s < mem[96]
            mem[(32 * s) + 128] = address(idx)
            _110 = mem[64]
            mem[mem[64] + 32] = 'validatorsList'
            mem[mem[64] + 46] = address(idx)
            _111 = mem[64]
            mem[mem[64]] = 34
            mem[64] = mem[64] + 66
            _113 = mem[_111]
            t = _111 + 32
            u = _110 + 66
            idx = mem[_111]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[_110 + floor32(mem[_111]) + 66] = 256^(-(mem[_111] % 32) + 32) - 1 and mem[_110 + floor32(mem[_111]) + 66] or mem[_111 + floor32(mem[_111]) + 32] and !(256^(-(mem[_111] % 32) + 32) - 1)
            mem[0] = sha3(mem[_110 + 66 len _113])
            mem[32] = 2
            require nextValidator[mem[0]]
            idx = nextValidator[mem[0]]
            s = s + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function initialize(uint256 arg1, address[] arg2, address arg3) {
    mem[96] = 4
    mem[64] = 132
    mem[128 len 4] = unknown_0x6fde8202(?????)
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call this.address.mem[132 len 4] with:
         gas gas_remaining wei
        args mem[136 len 28]
    if not ext_call.success:
        require not isInitialized
        require arg3
        mem[132] = owner
        mem[164] = arg3
        emit OwnershipTransferred(owner, arg3);
        mem[0] = 0x2016836a56b71f0d02689e69e326f4f4c1b9057164ef592671cf0d37c8040c0
        mem[32] = 2
        owner = arg3
        require arg1
        require arg2.length >= arg1
        idx = 0
        while idx < arg2.length:
            require address(cd[((32 * idx) + arg2 + 36)])
            require idx < arg2.length
            require address(cd[((32 * idx) + arg2 + 36)]) != 0xffffffffffffffffffffffffffffffffffffffff
            require idx < arg2.length
            if address(cd[((32 * idx) + arg2 + 36)]) == 0xffffffffffffffffffffffffffffffffffffffff:
                if idx:
                    require idx - 1 < arg2.length
                    require idx < arg2.length
                    if idx != arg2.length - 1:
                        _947 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                        _948 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _950 = mem[_948]
                        t = _948 + 32
                        u = _947 + 66
                        s = mem[_948]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_947 + floor32(mem[_948]) + 66] = 256^(-(mem[_948] % 32) + 32) - 1 and mem[_947 + floor32(mem[_948]) + 66] or mem[_948 + floor32(mem[_948]) + 32] and !(256^(-(mem[_948] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_947 + 66 len _950])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        _951 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                        _952 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _954 = mem[_952]
                        t = _952 + 32
                        u = _951 + 66
                        s = mem[_952]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_951 + floor32(mem[_952]) + 66] = 256^(-(mem[_952] % 32) + 32) - 1 and mem[_951 + floor32(mem[_952]) + 66] or mem[_952 + floor32(mem[_952]) + 32] and !(256^(-(mem[_952] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_951 + 66 len _954])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        require idx < arg2.length
                        mem[_951 + 98] = 'validatorsList'
                        mem[_951 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_951 + 66] = 34
                        mem[64] = _951 + 132
                        t = _951 + 98
                        u = _951 + 132
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_951 + 164] = mem[_951 + 166 len 30] or Mask(16, 240, mem[_951 + 130])
                        mem[0] = sha3(mem[_951 + 132 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                else:
                    require idx < arg2.length
                    _893 = mem[64]
                    mem[mem[64] + 32] = 'validatorsList'
                    mem[mem[64] + 46] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                    _894 = mem[64]
                    mem[mem[64]] = 34
                    mem[64] = mem[64] + 66
                    _896 = mem[_894]
                    t = _894 + 32
                    u = mem[64]
                    s = mem[_894]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_894])] = 256^(-(mem[_894] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_894])] or mem[_894 + floor32(mem[_894]) + 32] and !(256^(-(mem[_894] % 32) + 32) - 1)
                    mem[0] = sha3(mem[mem[64] len _893 + _896 + -mem[64] + 66])
                    mem[32] = 2
                    nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    if arg2.length == 1:
                        require idx < arg2.length
                        _1777 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                        _1778 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _1780 = mem[_1778]
                        t = _1778 + 32
                        u = _1777 + 66
                        s = mem[_1778]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1777 + floor32(mem[_1778]) + 66] = 256^(-(mem[_1778] % 32) + 32) - 1 and mem[_1777 + floor32(mem[_1778]) + 66] or mem[_1778 + floor32(mem[_1778]) + 32] and !(256^(-(mem[_1778] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_1777 + 66 len _1780])
                        mem[32] = 2
                        nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
            else:
                _833 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                _834 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _836 = mem[_834]
                t = _834 + 32
                u = _833 + 66
                s = mem[_834]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_833 + floor32(mem[_834]) + 66] = 256^(-(mem[_834] % 32) + 32) - 1 and mem[_833 + floor32(mem[_834]) + 66] or mem[_834 + floor32(mem[_834]) + 32] and !(256^(-(mem[_834] % 32) + 32) - 1)
                mem[0] = sha3(mem[_833 + 66 len _836])
                mem[32] = 2
                require not nextValidator[mem[0]]
                if not idx:
                    require idx < arg2.length
                    mem[_833 + 98] = 'validatorsList'
                    mem[_833 + 112] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                    mem[_833 + 66] = 34
                    mem[64] = _833 + 132
                    t = _833 + 98
                    u = _833 + 132
                    s = 34
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_833 + 164] = mem[_833 + 166 len 30] or Mask(16, 240, mem[_833 + 130])
                    mem[0] = sha3(mem[_833 + 132 len 34])
                    mem[32] = 2
                    nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    require idx < arg2.length
                    if arg2.length != 1:
                        emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
                        idx = idx + 1
                        continue 
                    mem[_833 + 164] = 'validatorsList'
                    mem[_833 + 178] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[_833 + 132] = 34
                    mem[64] = _833 + 198
                    t = _833 + 164
                    u = _833 + 198
                    s = 34
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_833 + 230] = mem[_833 + 232 len 30] or Mask(16, 240, mem[_833 + 196])
                    mem[0] = sha3(mem[_833 + 198 len 34])
                    mem[32] = 2
                    nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                    require _833 + 196 < arg2.length
                    emit ValidatorAdded(address(cd[((32 * _833 + 196) + arg2 + 36)]));
                    t = _833 + 197
                    continue 
                require idx - 1 < arg2.length
                require idx < arg2.length
                mem[_833 + 98] = 'validatorsList'
                mem[_833 + 112] = address(cd[((32 * idx - 1) + arg2 + 36)])
                mem[_833 + 66] = 34
                mem[64] = _833 + 132
                if idx != arg2.length - 1:
                    t = _833 + 98
                    u = _833 + 132
                    s = 34
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_833 + 164] = mem[_833 + 166 len 30] or Mask(16, 240, mem[_833 + 130])
                    mem[0] = sha3(mem[_833 + 132 len 34])
                    mem[32] = 2
                    nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                else:
                    t = _833 + 98
                    u = _833 + 132
                    s = 34
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_833 + 164] = mem[_833 + 166 len 30] or Mask(16, 240, mem[_833 + 130])
                    mem[0] = sha3(mem[_833 + 132 len 34])
                    mem[32] = 2
                    nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    require idx < arg2.length
                    mem[_833 + 164] = 'validatorsList'
                    mem[_833 + 178] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[_833 + 132] = 34
                    mem[64] = _833 + 198
                    t = _833 + 164
                    u = _833 + 198
                    s = 34
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_833 + 230] = mem[_833 + 232 len 30] or Mask(16, 240, mem[_833 + 196])
                    mem[0] = sha3(mem[_833 + 198 len 34])
                    mem[32] = 2
                    nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
            require idx < arg2.length
            emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
            idx = idx + 1
            continue 
    else:
        require ext_code.size(this.address)
        call this.address.0x6fde8202 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.sender == address(ext_call.return_data[0]):
            require not isInitialized
            require arg3
            mem[132] = owner
            mem[164] = arg3
            emit OwnershipTransferred(owner, arg3);
            mem[0] = 0x2016836a56b71f0d02689e69e326f4f4c1b9057164ef592671cf0d37c8040c0
            mem[32] = 2
            owner = arg3
            require arg1
            require arg2.length >= arg1
            idx = 0
            while idx < arg2.length:
                require address(cd[((32 * idx) + arg2 + 36)])
                require idx < arg2.length
                require address(cd[((32 * idx) + arg2 + 36)]) != 0xffffffffffffffffffffffffffffffffffffffff
                require idx < arg2.length
                if address(cd[((32 * idx) + arg2 + 36)]) == 0xffffffffffffffffffffffffffffffffffffffff:
                    if not idx:
                        require idx < arg2.length
                        _897 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                        _898 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _900 = mem[_898]
                        t = _898 + 32
                        u = _897 + 66
                        s = mem[_898]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_897 + floor32(mem[_898]) + 66] = 256^(-(mem[_898] % 32) + 32) - 1 and mem[_897 + floor32(mem[_898]) + 66] or mem[_898 + floor32(mem[_898]) + 32] and !(256^(-(mem[_898] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_897 + 66 len _900])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        if arg2.length == 1:
                            require idx < arg2.length
                            mem[_897 + 98] = 'validatorsList'
                            mem[_897 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_897 + 66] = 34
                            mem[64] = _897 + 132
                            t = _897 + 98
                            u = _897 + 132
                            s = 34
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_897 + 164] = mem[_897 + 166 len 30] or Mask(16, 240, mem[_897 + 130])
                            mem[0] = sha3(mem[_897 + 132 len 34])
                            mem[32] = 2
                            nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                    else:
                        require idx - 1 < arg2.length
                        require idx < arg2.length
                        if idx != arg2.length - 1:
                            _961 = mem[64]
                            mem[mem[64] + 32] = 'validatorsList'
                            mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                            _962 = mem[64]
                            mem[mem[64]] = 34
                            mem[64] = mem[64] + 66
                            _964 = mem[_962]
                            t = _962 + 32
                            u = _961 + 66
                            s = mem[_962]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_961 + floor32(mem[_962]) + 66] = 256^(-(mem[_962] % 32) + 32) - 1 and mem[_961 + floor32(mem[_962]) + 66] or mem[_962 + floor32(mem[_962]) + 32] and !(256^(-(mem[_962] % 32) + 32) - 1)
                            mem[0] = sha3(mem[_961 + 66 len _964])
                            mem[32] = 2
                            nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            _965 = mem[64]
                            mem[mem[64] + 32] = 'validatorsList'
                            mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                            _966 = mem[64]
                            mem[mem[64]] = 34
                            mem[64] = mem[64] + 66
                            _968 = mem[_966]
                            t = _966 + 32
                            u = _965 + 66
                            s = mem[_966]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_965 + floor32(mem[_966]) + 66] = 256^(-(mem[_966] % 32) + 32) - 1 and mem[_965 + floor32(mem[_966]) + 66] or mem[_966 + floor32(mem[_966]) + 32] and !(256^(-(mem[_966] % 32) + 32) - 1)
                            mem[0] = sha3(mem[_965 + 66 len _968])
                            mem[32] = 2
                            nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                            require idx < arg2.length
                            mem[_965 + 98] = 'validatorsList'
                            mem[_965 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_965 + 66] = 34
                            mem[64] = _965 + 132
                            t = _965 + 98
                            u = _965 + 132
                            s = 34
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_965 + 164] = mem[_965 + 166 len 30] or Mask(16, 240, mem[_965 + 130])
                            mem[0] = sha3(mem[_965 + 132 len 34])
                            mem[32] = 2
                            nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                else:
                    _837 = mem[64]
                    mem[mem[64] + 32] = 'validatorsList'
                    mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                    _838 = mem[64]
                    mem[mem[64]] = 34
                    mem[64] = mem[64] + 66
                    _840 = mem[_838]
                    t = _838 + 32
                    u = mem[64]
                    s = mem[_838]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_838])] = 256^(-(mem[_838] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_838])] or mem[_838 + floor32(mem[_838]) + 32] and !(256^(-(mem[_838] % 32) + 32) - 1)
                    mem[0] = sha3(mem[mem[64] len _837 + _840 + -mem[64] + 66])
                    mem[32] = 2
                    require not nextValidator[mem[0]]
                    if not idx:
                        require idx < arg2.length
                        _1881 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                        _1882 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _1884 = mem[_1882]
                        t = _1882 + 32
                        u = _1881 + 66
                        s = mem[_1882]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1881 + floor32(mem[_1882]) + 66] = 256^(-(mem[_1882] % 32) + 32) - 1 and mem[_1881 + floor32(mem[_1882]) + 66] or mem[_1882 + floor32(mem[_1882]) + 32] and !(256^(-(mem[_1882] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_1881 + 66 len _1884])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        require idx < arg2.length
                        if arg2.length != 1:
                            emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
                            idx = idx + 1
                            continue 
                        mem[_1881 + 98] = 'validatorsList'
                        mem[_1881 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_1881 + 66] = 34
                        mem[64] = _1881 + 132
                        t = _1881 + 98
                        u = _1881 + 132
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1881 + 164] = mem[_1881 + 166 len 30] or Mask(16, 240, mem[_1881 + 130])
                        mem[0] = sha3(mem[_1881 + 132 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                        require _1881 + 130 < arg2.length
                        emit ValidatorAdded(address(cd[((32 * _1881 + 130) + arg2 + 36)]));
                        t = _1881 + 131
                        continue 
                    require idx - 1 < arg2.length
                    require idx < arg2.length
                    if idx != arg2.length - 1:
                        _1967 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                        _1968 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _1970 = mem[_1968]
                        t = _1968 + 32
                        u = _1967 + 66
                        s = mem[_1968]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1967 + floor32(mem[_1968]) + 66] = 256^(-(mem[_1968] % 32) + 32) - 1 and mem[_1967 + floor32(mem[_1968]) + 66] or mem[_1968 + floor32(mem[_1968]) + 32] and !(256^(-(mem[_1968] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_1967 + 66 len _1970])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        _1971 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                        _1972 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _1974 = mem[_1972]
                        t = _1972 + 32
                        u = _1971 + 66
                        s = mem[_1972]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1971 + floor32(mem[_1972]) + 66] = 256^(-(mem[_1972] % 32) + 32) - 1 and mem[_1971 + floor32(mem[_1972]) + 66] or mem[_1972 + floor32(mem[_1972]) + 32] and !(256^(-(mem[_1972] % 32) + 32) - 1)
                        mem[0] = sha3(mem[_1971 + 66 len _1974])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        require idx < arg2.length
                        mem[_1971 + 98] = 'validatorsList'
                        mem[_1971 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_1971 + 66] = 34
                        mem[64] = _1971 + 132
                        t = _1971 + 98
                        u = _1971 + 132
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1971 + 164] = mem[_1971 + 166 len 30] or Mask(16, 240, mem[_1971 + 130])
                        mem[0] = sha3(mem[_1971 + 132 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                require idx < arg2.length
                emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
                idx = idx + 1
                continue 
        else:
            require this.address == msg.sender
            require not isInitialized
            require arg3
            mem[132] = owner
            mem[164] = arg3
            emit OwnershipTransferred(owner, arg3);
            mem[0] = 0x2016836a56b71f0d02689e69e326f4f4c1b9057164ef592671cf0d37c8040c0
            mem[32] = 2
            owner = arg3
            require arg1
            require arg2.length >= arg1
            idx = 0
            while idx < arg2.length:
                require address(cd[((32 * idx) + arg2 + 36)])
                require idx < arg2.length
                require address(cd[((32 * idx) + arg2 + 36)]) != 0xffffffffffffffffffffffffffffffffffffffff
                require idx < arg2.length
                if address(cd[((32 * idx) + arg2 + 36)]) == 0xffffffffffffffffffffffffffffffffffffffff:
                    if idx:
                        require idx - 1 < arg2.length
                        require idx < arg2.length
                        if idx != arg2.length - 1:
                            _975 = mem[64]
                            mem[mem[64] + 32] = 'validatorsList'
                            mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                            _976 = mem[64]
                            mem[mem[64]] = 34
                            mem[64] = mem[64] + 66
                            _978 = mem[_976]
                            t = _976 + 32
                            u = _975 + 66
                            s = mem[_976]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_975 + floor32(mem[_976]) + 66] = 256^(-(mem[_976] % 32) + 32) - 1 and mem[_975 + floor32(mem[_976]) + 66] or mem[_976 + floor32(mem[_976]) + 32] and !(256^(-(mem[_976] % 32) + 32) - 1)
                            mem[0] = sha3(mem[_975 + 66 len _978])
                            mem[32] = 2
                            nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            _979 = mem[64]
                            mem[mem[64] + 32] = 'validatorsList'
                            mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                            _980 = mem[64]
                            mem[mem[64]] = 34
                            mem[64] = mem[64] + 66
                            _982 = mem[_980]
                            t = _980 + 32
                            u = _979 + 66
                            s = mem[_980]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_979 + floor32(mem[_980]) + 66] = 256^(-(mem[_980] % 32) + 32) - 1 and mem[_979 + floor32(mem[_980]) + 66] or mem[_980 + floor32(mem[_980]) + 32] and !(256^(-(mem[_980] % 32) + 32) - 1)
                            mem[0] = sha3(mem[_979 + 66 len _982])
                            mem[32] = 2
                            nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                            require idx < arg2.length
                            mem[_979 + 98] = 'validatorsList'
                            mem[_979 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_979 + 66] = 34
                            mem[64] = _979 + 132
                            t = _979 + 98
                            u = _979 + 132
                            s = 34
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_979 + 164] = mem[_979 + 166 len 30] or Mask(16, 240, mem[_979 + 130])
                            mem[0] = sha3(mem[_979 + 132 len 34])
                            mem[32] = 2
                            nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                    else:
                        require idx < arg2.length
                        _901 = mem[64]
                        mem[mem[64] + 32] = 'validatorsList'
                        mem[mem[64] + 46] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                        _902 = mem[64]
                        mem[mem[64]] = 34
                        mem[64] = mem[64] + 66
                        _904 = mem[_902]
                        t = _902 + 32
                        u = mem[64]
                        s = mem[_902]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_902])] = 256^(-(mem[_902] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_902])] or mem[_902 + floor32(mem[_902]) + 32] and !(256^(-(mem[_902] % 32) + 32) - 1)
                        mem[0] = sha3(mem[mem[64] len _901 + _904 + -mem[64] + 66])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        if arg2.length == 1:
                            require idx < arg2.length
                            _1789 = mem[64]
                            mem[mem[64] + 32] = 'validatorsList'
                            mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                            _1790 = mem[64]
                            mem[mem[64]] = 34
                            mem[64] = mem[64] + 66
                            _1792 = mem[_1790]
                            t = _1790 + 32
                            u = _1789 + 66
                            s = mem[_1790]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1789 + floor32(mem[_1790]) + 66] = 256^(-(mem[_1790] % 32) + 32) - 1 and mem[_1789 + floor32(mem[_1790]) + 66] or mem[_1790 + floor32(mem[_1790]) + 32] and !(256^(-(mem[_1790] % 32) + 32) - 1)
                            mem[0] = sha3(mem[_1789 + 66 len _1792])
                            mem[32] = 2
                            nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                else:
                    _841 = mem[64]
                    mem[mem[64] + 32] = 'validatorsList'
                    mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                    _842 = mem[64]
                    mem[mem[64]] = 34
                    mem[64] = mem[64] + 66
                    _844 = mem[_842]
                    t = _842 + 32
                    u = _841 + 66
                    s = mem[_842]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_841 + floor32(mem[_842]) + 66] = 256^(-(mem[_842] % 32) + 32) - 1 and mem[_841 + floor32(mem[_842]) + 66] or mem[_842 + floor32(mem[_842]) + 32] and !(256^(-(mem[_842] % 32) + 32) - 1)
                    mem[0] = sha3(mem[_841 + 66 len _844])
                    mem[32] = 2
                    require not nextValidator[mem[0]]
                    if not idx:
                        require idx < arg2.length
                        mem[_841 + 98] = 'validatorsList'
                        mem[_841 + 112] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                        mem[_841 + 66] = 34
                        mem[64] = _841 + 132
                        t = _841 + 98
                        u = _841 + 132
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_841 + 164] = mem[_841 + 166 len 30] or Mask(16, 240, mem[_841 + 130])
                        mem[0] = sha3(mem[_841 + 132 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        require idx < arg2.length
                        if arg2.length != 1:
                            emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
                            idx = idx + 1
                            continue 
                        mem[_841 + 164] = 'validatorsList'
                        mem[_841 + 178] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_841 + 132] = 34
                        mem[64] = _841 + 198
                        t = _841 + 164
                        u = _841 + 198
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_841 + 230] = mem[_841 + 232 len 30] or Mask(16, 240, mem[_841 + 196])
                        mem[0] = sha3(mem[_841 + 198 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                        require _841 + 196 < arg2.length
                        emit ValidatorAdded(address(cd[((32 * _841 + 196) + arg2 + 36)]));
                        t = _841 + 197
                        continue 
                    require idx - 1 < arg2.length
                    require idx < arg2.length
                    mem[_841 + 98] = 'validatorsList'
                    mem[_841 + 112] = address(cd[((32 * idx - 1) + arg2 + 36)])
                    mem[_841 + 66] = 34
                    mem[64] = _841 + 132
                    if idx != arg2.length - 1:
                        t = _841 + 98
                        u = _841 + 132
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_841 + 164] = mem[_841 + 166 len 30] or Mask(16, 240, mem[_841 + 130])
                        mem[0] = sha3(mem[_841 + 132 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        t = _841 + 98
                        u = _841 + 132
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_841 + 164] = mem[_841 + 166 len 30] or Mask(16, 240, mem[_841 + 130])
                        mem[0] = sha3(mem[_841 + 132 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                        require idx < arg2.length
                        mem[_841 + 164] = 'validatorsList'
                        mem[_841 + 178] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_841 + 132] = 34
                        mem[64] = _841 + 198
                        t = _841 + 164
                        u = _841 + 198
                        s = 34
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_841 + 230] = mem[_841 + 232 len 30] or Mask(16, 240, mem[_841 + 196])
                        mem[0] = sha3(mem[_841 + 198 len 34])
                        mem[32] = 2
                        nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                require idx < arg2.length
                emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
                idx = idx + 1
                continue 
    require arg2.length <= 50
    validatorCount = arg2.length
    requiredSignatures = arg1
    deployedAtBlock = block.number
    isInitialized = 1
    emit RequiredSignaturesChanged(arg1);
    return bool(isInitialized)
}



}
