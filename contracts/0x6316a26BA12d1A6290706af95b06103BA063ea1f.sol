contract main {




// =====================  Runtime code  =====================


#
#  - sub_776340b5(?)
#
array of struct sub_8108e08e;
address superManagerAddress;
address managerAddress;
array of struct tokenURI;

function manager() payable {
    return managerAddress
}

function sub_8108e08e(?) payable {
    return sub_8108e08e[0 len sub_8108e08e.length].field_0
}

function superManager() payable {
    return superManagerAddress
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length].field_0
}

function destroy() payable {
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function changeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if superManagerAddress != msg.sender:
        revert with 0, 'It's not superManager'
    managerAddress = arg1
}

function sub_58de51d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    sub_8108e08e[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_0822044b(?) payable {
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    tokenURI.length++
    tokenURI[tokenURI.length].field_0 = 0
    tokenURI[tokenURI.length].field_8 = mem[128 len 31]
    idx = 0
    while tokenURI[tokenURI.length].length + 31 / 32 > idx:
        tokenURI[tokenURI.length + idx].field_0 = 0
        idx = idx + 1
        continue 
}

function setURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if managerAddress != msg.sender:
        if superManagerAddress != msg.sender:
            revert with 0, 'Is not manager'
    if arg1 > tokenURI.length:
        revert with 0, 'Array amounts error.'
    require arg1 < tokenURI.length
    tokenURI[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_a31a13b4(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        require arg2 < tokenURI.length
        mem[160] = tokenURI[arg2].length
        mem[192] = tokenURI[arg2].field_0
        idx = 192
        s = 0
        while tokenURI[arg2].length + 160 > idx:
            mem[idx + 32] = tokenURI[arg2 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(tokenURI[arg2].length) + 192] = tokenURI[arg2].length + 1
        if not tokenURI[arg2].length + 1:
            idx = 0
            s = 0
            while idx < tokenURI[arg2].length:
                require idx < tokenURI[arg2].length
                require s < tokenURI[arg2].length + 1
                mem[s + ceil32(tokenURI[arg2].length) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = tokenURI[arg2].length
            while idx < 1:
                require idx < 1
                require s < tokenURI[arg2].length + 1
                mem[s + ceil32(tokenURI[arg2].length) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224] = sub_8108e08e.length
            mem[0] = 0
            mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 256] = uint256(sub_8108e08e.field_0)
            idx = ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 256
            s = 0
            while ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + sub_8108e08e.length + 224 > idx:
                mem[idx + 32] = sub_8108e08e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256] = tokenURI[arg2].length + sub_8108e08e.length + 1
            mem[64] = ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + floor32(tokenURI[arg2].length + sub_8108e08e.length + 32) + 288
            if not tokenURI[arg2].length + sub_8108e08e.length + 1:
                idx = 0
                s = 0
                while idx < tokenURI[arg2].length + 1:
                    require idx < tokenURI[arg2].length + 1
                    require s < tokenURI[arg2].length + sub_8108e08e.length + 1
                    mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                idx = 0
                s = tokenURI[arg2].length + 1
                while idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]:
                    require idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]
                    require s < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
                    mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
                _10324 = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
                mem[mem[64] + 64 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])]
                if not _10324 % 32:
                    return 32, mem[mem[64] + 32 len _10324 + 32]
                mem[floor32(_10324) + mem[64] + 64] = mem[floor32(_10324) + mem[64] + -(_10324 % 32) + 96 len _10324 % 32]
                return 32, mem[mem[64] + 32 len floor32(_10324) + 64]
            mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len tokenURI[arg2].length + sub_8108e08e.length + 1] = code.data[3045 len tokenURI[arg2].length + sub_8108e08e.length + 1]
            idx = 0
            s = 0
            while idx < tokenURI[arg2].length + 1:
                require idx < tokenURI[arg2].length + 1
                require s < tokenURI[arg2].length + sub_8108e08e.length + 1
                mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = tokenURI[arg2].length + 1
            while idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]:
                require idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]
                require s < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
                mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
            _10327 = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
            mem[mem[64] + 64 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])]
            if not _10327 % 32:
                return 32, mem[mem[64] + 32 len _10327 + 32]
            mem[floor32(_10327) + mem[64] + 64] = mem[floor32(_10327) + mem[64] + -(_10327 % 32) + 96 len _10327 % 32]
            return 32, mem[mem[64] + 32 len floor32(_10327) + 64]
        mem[ceil32(tokenURI[arg2].length) + 224 len tokenURI[arg2].length + 1] = code.data[3045 len tokenURI[arg2].length + 1]
        idx = 0
        s = 0
        while idx < tokenURI[arg2].length:
            require idx < tokenURI[arg2].length
            require s < tokenURI[arg2].length + 1
            mem[s + ceil32(tokenURI[arg2].length) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = tokenURI[arg2].length
        while idx < 1:
            require idx < 1
            require s < tokenURI[arg2].length + 1
            mem[s + ceil32(tokenURI[arg2].length) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224] = sub_8108e08e.length
        mem[0] = 0
        mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 256] = uint256(sub_8108e08e.field_0)
        idx = ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 256
        s = 0
        while ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + sub_8108e08e.length + 224 > idx:
            mem[idx + 32] = sub_8108e08e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256] = tokenURI[arg2].length + sub_8108e08e.length + 1
        mem[64] = ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + floor32(tokenURI[arg2].length + sub_8108e08e.length + 32) + 288
        if not tokenURI[arg2].length + sub_8108e08e.length + 1:
            idx = 0
            s = 0
            while idx < tokenURI[arg2].length + 1:
                require idx < tokenURI[arg2].length + 1
                require s < tokenURI[arg2].length + sub_8108e08e.length + 1
                mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            idx = 0
            s = tokenURI[arg2].length + 1
            while idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]:
                require idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]
                require s < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
                mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
            _10330 = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
            mem[mem[64] + 64 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])]
            if not _10330 % 32:
                return 32, mem[mem[64] + 32 len _10330 + 32]
            mem[floor32(_10330) + mem[64] + 64] = mem[floor32(_10330) + mem[64] + -(_10330 % 32) + 96 len _10330 % 32]
            return 32, mem[mem[64] + 32 len floor32(_10330) + 64]
        mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len tokenURI[arg2].length + sub_8108e08e.length + 1] = code.data[3045 len tokenURI[arg2].length + sub_8108e08e.length + 1]
        idx = 0
        s = 0
        while idx < tokenURI[arg2].length + 1:
            require idx < tokenURI[arg2].length + 1
            require s < tokenURI[arg2].length + sub_8108e08e.length + 1
            mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = tokenURI[arg2].length + 1
        while idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]:
            require idx < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + 224]
            require s < mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
            mem[s + ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
        _10333 = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256]
        mem[mem[64] + 64 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])] = mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 288 len ceil32(mem[ceil32(tokenURI[arg2].length) + floor32(tokenURI[arg2].length + 32) + ceil32(sub_8108e08e.length) + 256])]
        if not _10333 % 32:
            return 32, mem[mem[64] + 32 len _10333 + 32]
        mem[floor32(_10333) + mem[64] + 64] = mem[floor32(_10333) + mem[64] + -(_10333 % 32) + 96 len _10333 % 32]
        return 32, mem[mem[64] + 32 len floor32(_10333) + 64]
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        require arg2 < tokenURI.length
        mem[0] = 3
        _2717 = mem[64]
        mem[64] = mem[64] + ceil32(tokenURI[arg2].length) + 32
        mem[_2717] = tokenURI[arg2].length
        mem[0] = sha3(3) + arg2
        mem[_2717 + 32] = tokenURI[arg2].field_0
        idx = _2717 + 32
        s = 0
        while _2717 + tokenURI[arg2].length > idx:
            mem[idx + 32] = tokenURI[arg2 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _4764 = mem[96]
        _4766 = mem[64]
        mem[mem[64]] = tokenURI[arg2].length + mem[96]
        mem[64] = mem[64] + floor32(tokenURI[arg2].length + _4764 + 31) + 32
        if not tokenURI[arg2].length + _4764:
            idx = 0
            s = 0
            while idx < tokenURI[arg2].length:
                require idx < mem[_2717]
                require s < mem[_4766]
                mem[s + _4766 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _8294 = mem[96]
            idx = 0
            s = tokenURI[arg2].length
            while idx < _8294:
                require idx < mem[96]
                require s < mem[_4766]
                mem[s + _4766 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _8294 = mem[96]
                idx = idx + 1
                s = s + 1
                continue 
            _8438 = mem[64]
            mem[64] = mem[64] + ceil32(sub_8108e08e.length) + 32
            mem[_8438] = sub_8108e08e.length
            mem[0] = 0
            mem[_8438 + 32] = uint256(sub_8108e08e.field_0)
            idx = _8438 + 32
            s = 0
            while _8438 + sub_8108e08e.length > idx:
                mem[idx + 32] = sub_8108e08e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _10109 = mem[_4766]
            _10110 = mem[64]
            mem[mem[64]] = mem[_4766] + sub_8108e08e.length
            mem[64] = mem[64] + floor32(_10109 + sub_8108e08e.length + 31) + 32
            if not _10109 + sub_8108e08e.length:
                _10828 = mem[_4766]
                idx = 0
                s = 0
                while idx < _10828:
                    require idx < mem[_4766]
                    require s < mem[_10110]
                    mem[s + _10110 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _10828 = mem[_4766]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _11438 = mem[_8438]
                idx = 0
                s = _10828
                while idx < _11438:
                    require idx < mem[_8438]
                    require s < mem[_10110]
                    mem[s + _10110 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _11438 = mem[_8438]
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[_10110]
                _11600 = mem[_10110]
                mem[mem[64] + 64 len ceil32(mem[_10110])] = mem[_10110 + 32 len ceil32(mem[_10110])]
                if not _11600 % 32:
                    return 32, mem[mem[64] + 32 len _11600 + 32]
                mem[floor32(_11600) + mem[64] + 64] = mem[floor32(_11600) + mem[64] + -(_11600 % 32) + 96 len _11600 % 32]
                return 32, mem[mem[64] + 32 len floor32(_11600) + 64]
            mem[_10110 + 32 len _10109 + sub_8108e08e.length] = code.data[3045 len _10109 + sub_8108e08e.length]
            _10829 = mem[_4766]
            idx = 0
            s = 0
            while idx < _10829:
                require idx < mem[_4766]
                require s < mem[_10110]
                mem[s + _10110 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _10829 = mem[_4766]
                idx = idx + 1
                s = s + 1
                continue 
            _11439 = mem[_8438]
            idx = 0
            s = _10829
            while idx < _11439:
                require idx < mem[_8438]
                require s < mem[_10110]
                mem[s + _10110 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _11439 = mem[_8438]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_10110]
            _11603 = mem[_10110]
            mem[mem[64] + 64 len ceil32(mem[_10110])] = mem[_10110 + 32 len ceil32(mem[_10110])]
            if not _11603 % 32:
                return 32, mem[mem[64] + 32 len _11603 + 32]
            mem[floor32(_11603) + mem[64] + 64] = mem[floor32(_11603) + mem[64] + -(_11603 % 32) + 96 len _11603 % 32]
            return 32, mem[mem[64] + 32 len floor32(_11603) + 64]
        mem[_4766 + 32 len tokenURI[arg2].length + _4764] = code.data[3045 len tokenURI[arg2].length + _4764]
        idx = 0
        s = 0
        while idx < tokenURI[arg2].length:
            require idx < mem[_2717]
            require s < mem[_4766]
            mem[s + _4766 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _8295 = mem[96]
        idx = 0
        s = tokenURI[arg2].length
        while idx < _8295:
            require idx < mem[96]
            require s < mem[_4766]
            mem[s + _4766 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _8295 = mem[96]
            idx = idx + 1
            s = s + 1
            continue 
        _8441 = mem[64]
        mem[64] = mem[64] + ceil32(sub_8108e08e.length) + 32
        mem[_8441] = sub_8108e08e.length
        mem[0] = 0
        mem[_8441 + 32] = uint256(sub_8108e08e.field_0)
        idx = _8441 + 32
        s = 0
        while _8441 + sub_8108e08e.length > idx:
            mem[idx + 32] = sub_8108e08e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _10116 = mem[_4766]
        _10117 = mem[64]
        mem[mem[64]] = mem[_4766] + sub_8108e08e.length
        mem[64] = mem[64] + floor32(_10116 + sub_8108e08e.length + 31) + 32
        if not _10116 + sub_8108e08e.length:
            _10834 = mem[_4766]
            idx = 0
            s = 0
            while idx < _10834:
                require idx < mem[_4766]
                require s < mem[_10117]
                mem[s + _10117 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _10834 = mem[_4766]
                idx = idx + 1
                s = s + 1
                continue 
            _11440 = mem[_8441]
            idx = 0
            s = _10834
            while idx < _11440:
                require idx < mem[_8441]
                require s < mem[_10117]
                mem[s + _10117 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _11440 = mem[_8441]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_10117]
            _11606 = mem[_10117]
            mem[mem[64] + 64 len ceil32(mem[_10117])] = mem[_10117 + 32 len ceil32(mem[_10117])]
            if not _11606 % 32:
                return 32, mem[mem[64] + 32 len _11606 + 32]
            mem[floor32(_11606) + mem[64] + 64] = mem[floor32(_11606) + mem[64] + -(_11606 % 32) + 96 len _11606 % 32]
            return 32, mem[mem[64] + 32 len floor32(_11606) + 64]
        mem[_10117 + 32 len _10116 + sub_8108e08e.length] = code.data[3045 len _10116 + sub_8108e08e.length]
        _10835 = mem[_4766]
        idx = 0
        s = 0
        while idx < _10835:
            require idx < mem[_4766]
            require s < mem[_10117]
            mem[s + _10117 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _10835 = mem[_4766]
            idx = idx + 1
            s = s + 1
            continue 
        _11441 = mem[_8441]
        idx = 0
        s = _10835
        while idx < _11441:
            require idx < mem[_8441]
            require s < mem[_10117]
            mem[s + _10117 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _11441 = mem[_8441]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_10117]
        _11609 = mem[_10117]
        mem[mem[64] + 64 len ceil32(mem[_10117])] = mem[_10117 + 32 len ceil32(mem[_10117])]
        if not _11609 % 32:
            return 32, mem[mem[64] + 32 len _11609 + 32]
        mem[floor32(_11609) + mem[64] + 64] = mem[floor32(_11609) + mem[64] + -(_11609 % 32) + 96 len _11609 % 32]
        return 32, mem[mem[64] + 32 len floor32(_11609) + 64]
    mem[128 len s] = code.data[3045 len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    require arg2 < tokenURI.length
    mem[0] = 3
    _2719 = mem[64]
    mem[64] = mem[64] + ceil32(tokenURI[arg2].length) + 32
    mem[_2719] = tokenURI[arg2].length
    mem[0] = sha3(3) + arg2
    mem[_2719 + 32] = tokenURI[arg2].field_0
    idx = _2719 + 32
    s = 0
    while _2719 + tokenURI[arg2].length > idx:
        mem[idx + 32] = tokenURI[arg2 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _4771 = mem[96]
    _4773 = mem[64]
    mem[mem[64]] = tokenURI[arg2].length + mem[96]
    mem[64] = mem[64] + floor32(tokenURI[arg2].length + _4771 + 31) + 32
    if not tokenURI[arg2].length + _4771:
        idx = 0
        s = 0
        while idx < tokenURI[arg2].length:
            require idx < mem[_2719]
            require s < mem[_4773]
            mem[s + _4773 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _8312 = mem[96]
        idx = 0
        s = tokenURI[arg2].length
        while idx < _8312:
            require idx < mem[96]
            require s < mem[_4773]
            mem[s + _4773 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _8312 = mem[96]
            idx = idx + 1
            s = s + 1
            continue 
        _8492 = mem[64]
        mem[64] = mem[64] + ceil32(sub_8108e08e.length) + 32
        mem[_8492] = sub_8108e08e.length
        mem[0] = 0
        mem[_8492 + 32] = uint256(sub_8108e08e.field_0)
        idx = _8492 + 32
        s = 0
        while _8492 + sub_8108e08e.length > idx:
            mem[idx + 32] = sub_8108e08e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _10131 = mem[_4773]
        _10132 = mem[64]
        mem[mem[64]] = mem[_4773] + sub_8108e08e.length
        mem[64] = mem[64] + floor32(_10131 + sub_8108e08e.length + 31) + 32
        if not _10131 + sub_8108e08e.length:
            _10848 = mem[_4773]
            idx = 0
            s = 0
            while idx < _10848:
                require idx < mem[_4773]
                require s < mem[_10132]
                mem[s + _10132 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _10848 = mem[_4773]
                idx = idx + 1
                s = s + 1
                continue 
            _11442 = mem[_8492]
            idx = 0
            s = _10848
            while idx < _11442:
                require idx < mem[_8492]
                require s < mem[_10132]
                mem[s + _10132 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _11442 = mem[_8492]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_10132]
            _11612 = mem[_10132]
            mem[mem[64] + 64 len ceil32(mem[_10132])] = mem[_10132 + 32 len ceil32(mem[_10132])]
            if not _11612 % 32:
                return 32, mem[mem[64] + 32 len _11612 + 32]
            mem[floor32(_11612) + mem[64] + 64] = mem[floor32(_11612) + mem[64] + -(_11612 % 32) + 96 len _11612 % 32]
            return 32, mem[mem[64] + 32 len floor32(_11612) + 64]
        mem[_10132 + 32 len _10131 + sub_8108e08e.length] = code.data[3045 len _10131 + sub_8108e08e.length]
        _10849 = mem[_4773]
        idx = 0
        s = 0
        while idx < _10849:
            require idx < mem[_4773]
            require s < mem[_10132]
            mem[s + _10132 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _10849 = mem[_4773]
            idx = idx + 1
            s = s + 1
            continue 
        _11443 = mem[_8492]
        idx = 0
        s = _10849
        while idx < _11443:
            require idx < mem[_8492]
            require s < mem[_10132]
            mem[s + _10132 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _11443 = mem[_8492]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_10132]
        _11615 = mem[_10132]
        mem[mem[64] + 64 len ceil32(mem[_10132])] = mem[_10132 + 32 len ceil32(mem[_10132])]
        if not _11615 % 32:
            return 32, mem[mem[64] + 32 len _11615 + 32]
        mem[floor32(_11615) + mem[64] + 64] = mem[floor32(_11615) + mem[64] + -(_11615 % 32) + 96 len _11615 % 32]
        return 32, mem[mem[64] + 32 len floor32(_11615) + 64]
    mem[_4773 + 32 len tokenURI[arg2].length + _4771] = code.data[3045 len tokenURI[arg2].length + _4771]
    idx = 0
    s = 0
    while idx < tokenURI[arg2].length:
        require idx < mem[_2719]
        require s < mem[_4773]
        mem[s + _4773 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _8313 = mem[96]
    idx = 0
    s = tokenURI[arg2].length
    while idx < _8313:
        require idx < mem[96]
        require s < mem[_4773]
        mem[s + _4773 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _8313 = mem[96]
        idx = idx + 1
        s = s + 1
        continue 
    _8495 = mem[64]
    mem[64] = mem[64] + ceil32(sub_8108e08e.length) + 32
    mem[_8495] = sub_8108e08e.length
    mem[0] = 0
    mem[_8495 + 32] = uint256(sub_8108e08e.field_0)
    idx = _8495 + 32
    s = 0
    while _8495 + sub_8108e08e.length > idx:
        mem[idx + 32] = sub_8108e08e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _10138 = mem[_4773]
    _10139 = mem[64]
    mem[mem[64]] = mem[_4773] + sub_8108e08e.length
    mem[64] = mem[64] + floor32(_10138 + sub_8108e08e.length + 31) + 32
    if not _10138 + sub_8108e08e.length:
        _10854 = mem[_4773]
        idx = 0
        s = 0
        while idx < _10854:
            require idx < mem[_4773]
            require s < mem[_10139]
            mem[s + _10139 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _10854 = mem[_4773]
            idx = idx + 1
            s = s + 1
            continue 
        _11444 = mem[_8495]
        idx = 0
        s = _10854
        while idx < _11444:
            require idx < mem[_8495]
            require s < mem[_10139]
            mem[s + _10139 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _11444 = mem[_8495]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_10139]
        _11618 = mem[_10139]
        mem[mem[64] + 64 len ceil32(mem[_10139])] = mem[_10139 + 32 len ceil32(mem[_10139])]
        if not _11618 % 32:
            return 32, mem[mem[64] + 32 len _11618 + 32]
        mem[floor32(_11618) + mem[64] + 64] = mem[floor32(_11618) + mem[64] + -(_11618 % 32) + 96 len _11618 % 32]
        return 32, mem[mem[64] + 32 len floor32(_11618) + 64]
    mem[_10139 + 32 len _10138 + sub_8108e08e.length] = code.data[3045 len _10138 + sub_8108e08e.length]
    _10855 = mem[_4773]
    idx = 0
    s = 0
    while idx < _10855:
        require idx < mem[_4773]
        require s < mem[_10139]
        mem[s + _10139 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _10855 = mem[_4773]
        idx = idx + 1
        s = s + 1
        continue 
    _11445 = mem[_8495]
    idx = 0
    s = _10855
    while idx < _11445:
        require idx < mem[_8495]
        require s < mem[_10139]
        mem[s + _10139 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _11445 = mem[_8495]
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_10139]
    _11621 = mem[_10139]
    mem[mem[64] + 64 len ceil32(mem[_10139])] = mem[_10139 + 32 len ceil32(mem[_10139])]
    if not _11621 % 32:
        return 32, mem[mem[64] + 32 len _11621 + 32]
    mem[floor32(_11621) + mem[64] + 64] = mem[floor32(_11621) + mem[64] + -(_11621 % 32) + 96 len _11621 % 32]
    return 32, mem[mem[64] + 32 len floor32(_11621) + 64]
}



}
