contract main {




// =====================  Runtime code  =====================


#
#  - removeValidator(address arg1)
#
const getBridgeValidatorsInterfacesVersion = 2, 2, 0

const F_ADDR = 0xffffffffffffffffffffffffffffffffffffffff


mapping of uint256 validatorCount;
mapping of address nextValidator;
mapping of uint8 stor4;

function validatorCount() {
    return validatorCount[Mask(112, 0, 'validatorCount', 0)]
}

function isInitialized() {
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function requiredSignatures() {
    return validatorCount['requiredSignatures']
}

function getNextValidator(address arg1) {
    return nextValidator['validatorsList'][arg1]
}

function owner() {
    return nextValidator['owner', 0 % 1099511627776]
}

function deployedAtBlock() {
    return validatorCount['deployedAtBlock']
}

function _fallback() payable {
    revert
}

function isValidator(address arg1) {
    if arg1 == 0xffffffffffffffffffffffffffffffffffffffff:
        return arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    return not not nextValidator['validatorsList'][arg1]
}

function transferOwnership(address arg1) {
    require msg.sender == nextValidator['owner', 0 % 1099511627776]
    require arg1
    emit OwnershipTransferred(nextValidator['owner', 0 % 1099511627776], arg1);
    nextValidator['owner', 0 % 1099511627776] = arg1
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == nextValidator['owner', 0 % 1099511627776]
    require validatorCount[Mask(112, 0, 'validatorCount', 0)] >= arg1
    require arg1
    validatorCount[Mask(144, 0, 'requiredSignatures', 0)] = arg1
    emit RequiredSignaturesChanged(arg1);
}

function addValidator(address arg1) {
    require msg.sender == nextValidator['owner', 0 % 1099511627776]
    require arg1
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require not nextValidator['validatorsList'][arg1]
    require nextValidator['validatorsList'][test266151307()][65535]
    nextValidator['validatorsList'][arg1] = nextValidator['validatorsList'][test266151307()][65535]
    nextValidator['validatorsList'][test266151307()][65535] = arg1
    require validatorCount[Mask(112, 0, 'validatorCount', 0)] + 1 >= validatorCount[Mask(112, 0, 'validatorCount', 0)]
    validatorCount[Mask(112, 0, 'validatorCount', 0)]++
    emit ValidatorAdded(arg1);
}

function validatorList() {
    mem[128] = 'validatorCount'
    mem[96] = 14
    mem[142 len 0] = None
    mem[156 len 18] = uint32('validatorCount'), mem[160 len 14]
    mem[142 len 14] = Mask(112, 0, 'validatorCount', 0)
    if not validatorCount[Mask(112, 0, 'validatorCount', 0)]:
        mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 206] = 'validatorsList'
        mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 220] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
        mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 174] = 34
        mem[64] = (32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 240
        mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 240] = 'validatorsList', test266151307()
        mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 272 len 2] = 65535
        mem[0] = sha3('validatorsList', test266151307(), 65535)
        mem[32] = 2
        require nextValidator['validatorsList'][test266151307()][65535]
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
            require s < mem[142]
            mem[(32 * s) + 174] = address(idx)
            _175 = mem[64]
            mem[mem[64] + 32] = 'validatorsList'
            mem[mem[64] + 46] = address(idx)
            _176 = mem[64]
            mem[mem[64]] = 34
            mem[64] = mem[64] + 66
            _178 = mem[_176]
            t = _176 + 32
            u = _175 + 66
            idx = mem[_176]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[_175 + floor32(mem[_176]) + 66] = 256^(-(mem[_176] % 32) + 32) - 1 and mem[_175 + floor32(mem[_176]) + 66] or mem[_176 + floor32(mem[_176]) + 32] and !(256^(-(mem[_176] % 32) + 32) - 1)
            mem[0] = sha3(mem[_175 + 66 len _178])
            mem[32] = 2
            require nextValidator[mem[0]]
            idx = nextValidator[mem[0]]
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[142]
        _171 = mem[142]
        mem[mem[64] + 64 len floor32(mem[142])] = mem[174 len floor32(mem[142])]
        return 32, mem[mem[64] + 32 len (32 * _171) + 32]
    mem[174 len 32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]] = code.data[5384 len 32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]]
    mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 206] = 'validatorsList'
    mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 220] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
    mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 174] = 34
    mem[64] = (32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 240
    mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 240] = 'validatorsList', test266151307()
    mem[(32 * validatorCount[Mask(112, 0, 'validatorCount', 0)]) + 272 len 2] = 65535
    mem[0] = sha3('validatorsList', test266151307(), 65535)
    mem[32] = 2
    require nextValidator['validatorsList'][test266151307()][65535]
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
        require s < mem[142]
        mem[(32 * s) + 174] = address(idx)
        _179 = mem[64]
        mem[mem[64] + 32] = 'validatorsList'
        mem[mem[64] + 46] = address(idx)
        _180 = mem[64]
        mem[mem[64]] = 34
        mem[64] = mem[64] + 66
        _182 = mem[_180]
        t = _180 + 32
        u = mem[64]
        idx = mem[_180]
        while idx >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_180])] = 256^(-(mem[_180] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_180])] or mem[_180 + floor32(mem[_180]) + 32] and !(256^(-(mem[_180] % 32) + 32) - 1)
        mem[0] = sha3(mem[mem[64] len _179 + _182 + -mem[64] + 66])
        mem[32] = 2
        require nextValidator[mem[0]]
        idx = nextValidator[mem[0]]
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[142]
    _174 = mem[142]
    mem[mem[64] + 64 len floor32(mem[142])] = mem[174 len floor32(mem[142])]
    return 32, mem[mem[64] + 32 len (32 * _174) + 32]
}

function initialize(uint256 arg1, address[] arg2, address arg3) {
    mem[128] = 'isInitialized'
    mem[96] = 13
    mem[141 len 0] = None
    require not stor4[Mask(104, 0, 'isInitialized', 0)]
    require arg3
    mem[173] = 'owner'
    mem[141] = 5
    mem[178 len 0] = None
    emit OwnershipTransferred(nextValidator['owner', 0 % 1099511627776], address(arg3));
    mem[210] = 'owner'
    mem[178] = 5
    mem[64] = 215
    mem[215 len 0] = None
    mem[220 len 27] = Mask(176, 0, 'owner'), mem[242 len 5]
    mem[215 len 5] = 'owner', 0 % 1099511627776
    mem[0] = sha3('owner', 0 % 1099511627776)
    mem[32] = 2
    nextValidator['owner', 0 % 1099511627776] = arg3
    require arg1
    require arg2.length >= arg1
    require arg2.length <= 100
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
                    _594 = mem[64]
                    mem[mem[64] + 32] = 'validatorsList'
                    mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                    _595 = mem[64]
                    mem[mem[64]] = 34
                    mem[64] = mem[64] + 66
                    _597 = mem[_595]
                    t = _595 + 32
                    u = _594 + 66
                    s = mem[_595]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_594 + floor32(mem[_595]) + 66] = 256^(-(mem[_595] % 32) + 32) - 1 and mem[_594 + floor32(mem[_595]) + 66] or mem[_595 + floor32(mem[_595]) + 32] and !(256^(-(mem[_595] % 32) + 32) - 1)
                    mem[0] = sha3(mem[_594 + 66 len _597])
                    mem[32] = 2
                    nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                else:
                    _598 = mem[64]
                    mem[mem[64] + 32] = 'validatorsList'
                    mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                    _599 = mem[64]
                    mem[mem[64]] = 34
                    mem[64] = mem[64] + 66
                    _601 = mem[_599]
                    t = _599 + 32
                    u = _598 + 66
                    s = mem[_599]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_598 + floor32(mem[_599]) + 66] = 256^(-(mem[_599] % 32) + 32) - 1 and mem[_598 + floor32(mem[_599]) + 66] or mem[_599 + floor32(mem[_599]) + 32] and !(256^(-(mem[_599] % 32) + 32) - 1)
                    mem[0] = sha3(mem[_598 + 66 len _601])
                    mem[32] = 2
                    nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                    require idx < arg2.length
                    mem[_598 + 98] = 'validatorsList'
                    mem[_598 + 112] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[_598 + 66] = 34
                    mem[64] = _598 + 132
                    t = _598 + 98
                    u = _598 + 132
                    s = 34
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_598 + 164] = mem[_598 + 166 len 30] or Mask(16, 240, mem[_598 + 130])
                    mem[0] = sha3(mem[_598 + 132 len 34])
                    mem[32] = 2
                    nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
            else:
                require idx < arg2.length
                _584 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                _585 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _587 = mem[_585]
                t = _585 + 32
                u = mem[64]
                s = mem[_585]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_585])] = 256^(-(mem[_585] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_585])] or mem[_585 + floor32(mem[_585]) + 32] and !(256^(-(mem[_585] % 32) + 32) - 1)
                mem[0] = sha3(mem[mem[64] len _584 + _587 + -mem[64] + 66])
                mem[32] = 2
                nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                if arg2.length == 1:
                    require idx < arg2.length
                    _759 = mem[64]
                    mem[mem[64] + 32] = 'validatorsList'
                    mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                    _760 = mem[64]
                    mem[mem[64]] = 34
                    mem[64] = mem[64] + 66
                    _762 = mem[_760]
                    t = _760 + 32
                    u = mem[64]
                    s = mem[_760]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_760])] = 256^(-(mem[_760] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_760])] or mem[_760 + floor32(mem[_760]) + 32] and !(256^(-(mem[_760] % 32) + 32) - 1)
                    mem[0] = sha3(mem[mem[64] len _759 + _762 + -mem[64] + 66])
                    mem[32] = 2
                    nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
        else:
            _562 = mem[64]
            mem[mem[64] + 32] = 'validatorsList'
            mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
            _563 = mem[64]
            mem[mem[64]] = 34
            mem[64] = mem[64] + 66
            _565 = mem[_563]
            t = _563 + 32
            u = mem[64]
            s = mem[_563]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_563])] = 256^(-(mem[_563] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_563])] or mem[_563 + floor32(mem[_563]) + 32] and !(256^(-(mem[_563] % 32) + 32) - 1)
            mem[0] = sha3(mem[mem[64] len _562 + _565 + -mem[64] + 66])
            mem[32] = 2
            require not nextValidator[mem[0]]
            if not idx:
                require idx < arg2.length
                _785 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                _786 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _788 = mem[_786]
                t = _786 + 32
                u = mem[64]
                s = mem[_786]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_786])] = 256^(-(mem[_786] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_786])] or mem[_786 + floor32(mem[_786]) + 32] and !(256^(-(mem[_786] % 32) + 32) - 1)
                mem[0] = sha3(mem[mem[64] len _785 + _788 + -mem[64] + 66])
                mem[32] = 2
                nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                require idx < arg2.length
                if arg2.length != 1:
                    emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
                    idx = idx + 1
                    continue 
                _928 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                _929 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _931 = mem[_929]
                t = _929 + 32
                u = mem[64]
                s = mem[_929]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_929])] = 256^(-(mem[_929] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_929])] or mem[_929 + floor32(mem[_929]) + 32] and !(256^(-(mem[_929] % 32) + 32) - 1)
                mem[0] = sha3(mem[mem[64] len _928 + _931 + -mem[64] + 66])
                mem[32] = 2
                nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
                require t < arg2.length
                emit ValidatorAdded(address(cd[((32 * t) + arg2 + 36)]));
                t = t + 1
                continue 
            require idx - 1 < arg2.length
            require idx < arg2.length
            if idx != arg2.length - 1:
                _801 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                _802 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _804 = mem[_802]
                t = _802 + 32
                u = _801 + 66
                s = mem[_802]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_801 + floor32(mem[_802]) + 66] = 256^(-(mem[_802] % 32) + 32) - 1 and mem[_801 + floor32(mem[_802]) + 66] or mem[_802 + floor32(mem[_802]) + 32] and !(256^(-(mem[_802] % 32) + 32) - 1)
                mem[0] = sha3(mem[_801 + 66 len _804])
                mem[32] = 2
                nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
            else:
                _805 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = address(cd[((32 * idx - 1) + arg2 + 36)])
                _806 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _808 = mem[_806]
                t = _806 + 32
                u = mem[64]
                s = mem[_806]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_806])] = 256^(-(mem[_806] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_806])] or mem[_806 + floor32(mem[_806]) + 32] and !(256^(-(mem[_806] % 32) + 32) - 1)
                mem[0] = sha3(mem[mem[64] len _805 + _808 + -mem[64] + 66])
                mem[32] = 2
                nextValidator[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
                require idx < arg2.length
                _922 = mem[64]
                mem[mem[64] + 32] = 'validatorsList'
                mem[mem[64] + 46] = address(cd[((32 * idx) + arg2 + 36)])
                _923 = mem[64]
                mem[mem[64]] = 34
                mem[64] = mem[64] + 66
                _925 = mem[_923]
                t = _923 + 32
                u = mem[64]
                s = mem[_923]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_923])] = 256^(-(mem[_923] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_923])] or mem[_923 + floor32(mem[_923]) + 32] and !(256^(-(mem[_923] % 32) + 32) - 1)
                mem[0] = sha3(mem[mem[64] len _922 + _925 + -mem[64] + 66])
                mem[32] = 2
                nextValidator[mem[0]] = 0xffffffffffffffffffffffffffffffffffffffff
        require idx < arg2.length
        emit ValidatorAdded(address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
    _529 = mem[64]
    mem[mem[64] + 32] = 'validatorCount'
    _530 = mem[64]
    mem[mem[64]] = 14
    mem[64] = mem[64] + 46
    _532 = mem[_530]
    mem[_529 + 46 len floor32(mem[_530])] = mem[_530 + 32 len floor32(mem[_530])]
    mem[_529 + floor32(mem[_530]) + 46] = 256^(-(mem[_530] % 32) + 32) - 1 and mem[_529 + floor32(mem[_530]) + 46] or mem[_530 + floor32(mem[_530]) + 32] and !(256^(-(mem[_530] % 32) + 32) - 1)
    mem[0] = sha3(mem[_529 + 46 len _532])
    validatorCount[mem[0]] = arg2.length
    validatorCount[Mask(144, 0, 'requiredSignatures', 0)] = arg1
    validatorCount[Mask(120, 0, 'deployedAtBlock', 0)] = block.number
    stor4[Mask(104, 0, 'isInitialized', 0)] = 1
    emit RequiredSignaturesChanged(arg1);
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}



}
