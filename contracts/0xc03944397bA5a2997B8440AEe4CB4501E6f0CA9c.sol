contract main {




// =====================  Runtime code  =====================


const getBridgeValidatorsInterfacesVersion = 2, 0, 0


mapping of uint256 validatorCount;
mapping of address owner;
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

function owner() {
    return owner['owner', 0 % 1099511627776]
}

function deployedAtBlock() {
    return validatorCount['deployedAtBlock']
}

function validators(address arg1) {
    return bool(stor4[Mask(240, 0, 'validators', arg1, 0)])
}

function _fallback() payable {
    revert
}

function isValidator(address arg1) {
    return (1 == bool(stor4[Mask(240, 0, 'validators', arg1, 0)]))
}

function transferOwnership(address arg1) {
    require msg.sender == owner['owner', 0 % 1099511627776]
    require arg1
    emit OwnershipTransferred(owner['owner', 0 % 1099511627776], address(arg1));
    owner['owner', 0 % 1099511627776] = arg1
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == owner['owner', 0 % 1099511627776]
    require validatorCount[Mask(112, 0, 'validatorCount', 0)] >= arg1
    require arg1
    validatorCount[Mask(144, 0, 'requiredSignatures', 0)] = arg1
    emit RequiredSignaturesChanged(arg1);
}

function addValidator(address arg1) {
    require msg.sender == owner['owner', 0 % 1099511627776]
    require arg1
    require bool(stor4[Mask(240, 0, 'validators', arg1, 0)]) != 1
    require validatorCount[Mask(112, 0, 'validatorCount', 0)] + 1 >= validatorCount[Mask(112, 0, 'validatorCount', 0)]
    validatorCount[Mask(112, 0, 'validatorCount', 0)]++
    stor4[Mask(240, 0, 'validators', arg1, 0)] = 1
    emit ValidatorAdded(arg1);
}

function removeValidator(address arg1) {
    require msg.sender == owner['owner', 0 % 1099511627776]
    require validatorCount[Mask(112, 0, 'validatorCount', 0)] > validatorCount['requiredSignatures']
    require 1 == bool(stor4[Mask(240, 0, 'validators', arg1, 0)])
    stor4[Mask(240, 0, 'validators', arg1, 0)] = 0
    require 1 <= validatorCount[Mask(112, 0, 'validatorCount', 0)]
    validatorCount[Mask(112, 0, 'validatorCount', 0)]--
    emit ValidatorRemoved(arg1);
}

function initialize(uint256 arg1, address[] arg2, address arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 160] = 'isInitialized'
    mem[(32 * arg2.length) + 128] = 13
    mem[(32 * arg2.length) + 173 len 0] = None
    require not stor4[Mask(104, 0, 'isInitialized', 0)]
    require arg3
    mem[(32 * arg2.length) + 205] = 'owner'
    mem[(32 * arg2.length) + 173] = 5
    mem[(32 * arg2.length) + 210 len 0] = None
    emit OwnershipTransferred(owner['owner', 0 % 1099511627776], address(arg3));
    mem[(32 * arg2.length) + 242] = 'owner'
    mem[(32 * arg2.length) + 210] = 5
    mem[64] = (32 * arg2.length) + 247
    mem[(32 * arg2.length) + 247 len 0] = None
    mem[(32 * arg2.length) + 252 len 27] = Mask(176, 0, 'owner'), mem[(32 * arg2.length) + 274 len 5]
    mem[(32 * arg2.length) + 247 len 5] = 'owner', 0 % 1099511627776
    mem[0] = sha3('owner', 0 % 1099511627776)
    mem[32] = 2
    owner['owner', 0 % 1099511627776] = arg3
    require arg1
    require arg1 <= arg2.length
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        _468 = mem[(32 * idx) + 128]
        _469 = mem[64]
        mem[mem[64] + 32] = 'validators'
        mem[mem[64] + 42] = address(_468)
        _470 = mem[64]
        mem[mem[64]] = 30
        mem[64] = mem[64] + 62
        _472 = mem[_470]
        t = _470 + 32
        u = mem[64]
        s = mem[_470]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_470])] = 256^(-(mem[_470] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_470])] or mem[_470 + floor32(mem[_470]) + 32] and !(256^(-(mem[_470] % 32) + 32) - 1)
        mem[0] = sha3(mem[mem[64] len _469 + _472 + -mem[64] + 62])
        mem[32] = 4
        require bool(stor4[mem[0]]) != 1
        _561 = mem[64]
        mem[mem[64] + 32] = 'validatorCount'
        _562 = mem[64]
        mem[mem[64]] = 14
        mem[64] = mem[64] + 46
        _564 = mem[_562]
        t = _562 + 32
        u = _561 + 46
        s = mem[_562]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_561 + floor32(mem[_562]) + 46] = 256^(-(mem[_562] % 32) + 32) - 1 and mem[_561 + floor32(mem[_562]) + 46] or mem[_562 + floor32(mem[_562]) + 32] and !(256^(-(mem[_562] % 32) + 32) - 1)
        mem[0] = sha3(mem[_561 + 46 len _564])
        mem[32] = 0
        _621 = sha3(mem[0], 0)
        require validatorCount[mem[0]] + 1 >= validatorCount[mem[0]]
        mem[_561 + 78] = 'validatorCount'
        mem[_561 + 46] = 14
        mem[64] = _561 + 92
        t = _561 + 78
        u = mem[64]
        s = mem[_561 + 46]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_561 + 46])] = 256^(-(mem[_561 + 46] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_561 + 46])] or mem[_561 + floor32(mem[_561 + 46]) + 78] and !(256^(-(mem[_561 + 46] % 32) + 32) - 1)
        mem[0] = sha3(mem[mem[64] len _561 + -mem[64] + 106])
        mem[32] = 0
        validatorCount[mem[0]] = stor[_621] + 1
        require idx < mem[96]
        _678 = mem[(32 * idx) + 128]
        _679 = mem[64]
        mem[mem[64] + 32] = 'validators'
        mem[mem[64] + 42] = address(_678)
        _680 = mem[64]
        mem[mem[64]] = 30
        mem[64] = mem[64] + 62
        _682 = mem[_680]
        t = _680 + 32
        u = mem[64]
        s = mem[_680]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_680])] = 256^(-(mem[_680] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_680])] or mem[_680 + floor32(mem[_680]) + 32] and !(256^(-(mem[_680] % 32) + 32) - 1)
        mem[0] = sha3(mem[mem[64] len _679 + _682 + -mem[64] + 62])
        mem[32] = 4
        stor4[mem[0]] = 1
        require idx < mem[96]
        emit ValidatorAdded(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
    _447 = mem[64]
    mem[mem[64] + 32] = 'requiredSignatures'
    _448 = mem[64]
    mem[mem[64]] = 18
    mem[64] = mem[64] + 50
    _450 = mem[_448]
    mem[_447 + 50 len floor32(mem[_448])] = mem[_448 + 32 len floor32(mem[_448])]
    mem[_447 + floor32(mem[_448]) + 50] = !(256^(-(mem[_448] % 32) + 32) - 1) and mem[_448 + floor32(mem[_448]) + 32] or 256^(-(mem[_448] % 32) + 32) - 1 and mem[_447 + floor32(mem[_448]) + 50]
    mem[0] = sha3(mem[_447 + 50 len _450])
    validatorCount[mem[0]] = arg1
    validatorCount['deployedAtBlock'] = block.number
    stor4[Mask(104, 0, 'isInitialized', 0)] = 1
    emit RequiredSignaturesChanged(arg1);
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}



}
