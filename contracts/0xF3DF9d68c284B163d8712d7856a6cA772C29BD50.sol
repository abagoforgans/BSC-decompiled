contract main {




// =====================  Runtime code  =====================


#
#  - unbond(uint256 arg1)
#  - provide(uint256 arg1)
#
const busd = 0xe9e7cea3dedca5984780bafc599bd69add087d56


uint256 totalStaged;
uint256 totalClaimable;
uint256 totalBonded;
uint256 totalPhantom;
address daoAddress;
address dollarAddress;
address sub_78a4c911Address;
uint8 paused;
mapping of struct balanceOfClaimable;

function balanceOfClaimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOfClaimable[address(arg1)].field_256
}

function balanceOfPhantom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOfClaimable[address(arg1)].field_768
}

function dao() payable {
    return daoAddress
}

function totalBonded() payable {
    return totalBonded
}

function totalClaimable() payable {
    return totalClaimable
}

function dollar() payable {
    return dollarAddress
}

function paused() payable {
    return bool(paused)
}

function sub_78a4c911(?) payable {
    return sub_78a4c911Address
}

function balanceOfBonded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOfClaimable[address(arg1)].field_512
}

function balanceOfStaged(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOfClaimable[address(arg1)].field_0
}

function totalStaged() payable {
    return totalStaged
}

function totalPhantom() payable {
    return totalPhantom
}

function _fallback() payable {
    revert
}

function statusOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(daoAddress)
    staticcall daoAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= balanceOfClaimable[address(arg1)].field_1024:
        return 0
    return 1
}

function totalRewarded() payable {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalClaimable > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[0] - totalClaimable)
}

function balanceOfRewarded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalBonded:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalClaimable > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalPhantom < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not totalPhantom + ext_call.return_data[0] - totalClaimable:
        if not totalBonded:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / totalBonded <= balanceOfClaimable[address(arg1)].field_768:
            return 0
        if balanceOfClaimable[address(arg1)].field_768 > 0 / totalBonded:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / totalBonded) - balanceOfClaimable[address(arg1)].field_768)
    if (totalPhantom * balanceOfClaimable[address(arg1)].field_512) + (ext_call.return_data[0] * balanceOfClaimable[address(arg1)].field_512) - (totalClaimable * balanceOfClaimable[address(arg1)].field_512) / totalPhantom + ext_call.return_data[0] - totalClaimable != balanceOfClaimable[address(arg1)].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalBonded:
        revert with 0, 'SafeMath: division by zero', 0
    if (totalPhantom * balanceOfClaimable[address(arg1)].field_512) + (ext_call.return_data[0] * balanceOfClaimable[address(arg1)].field_512) - (totalClaimable * balanceOfClaimable[address(arg1)].field_512) / totalBonded <= balanceOfClaimable[address(arg1)].field_768:
        return 0
    if balanceOfClaimable[address(arg1)].field_768 > (totalPhantom * balanceOfClaimable[address(arg1)].field_512) + (ext_call.return_data[0] * balanceOfClaimable[address(arg1)].field_512) - (totalClaimable * balanceOfClaimable[address(arg1)].field_512) / totalBonded:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (((totalPhantom * balanceOfClaimable[address(arg1)].field_512) + (ext_call.return_data[0] * balanceOfClaimable[address(arg1)].field_512) - (totalClaimable * balanceOfClaimable[address(arg1)].field_512) / totalBonded) - balanceOfClaimable[address(arg1)].field_768)
}

function emergencyPause() payable {
    if msg.sender == daoAddress:
        paused = 1
    mem[128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 'Not dao' << 200
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _222 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _329 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _222 + idx + 258
                    mem[_222 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_222 + idx + 262] = 32
                    _345 = mem[_329]
                    mem[_222 + idx + 294] = mem[_329]
                    s = 0
                    while s < _345:
                        mem[s + _222 + idx + 326] = mem[s + _329 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_345) > _345:
                        mem[_222 + idx + _345 + 326] = 0
                    revert with 0, 32, mem[_222 + idx + 294 len ceil32(_345) + 32]
                mem[idx + mem[160] + 258] = 0
                _337 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _222 + idx + 258
                mem[_222 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_222 + idx + 262] = 32
                _353 = mem[_337]
                mem[_222 + idx + 294] = mem[_337]
                s = 0
                while s < _353:
                    mem[s + _222 + idx + 326] = mem[s + _337 + 32]
                    s = s + 32
                    continue 
                if ceil32(_353) > _353:
                    mem[_222 + idx + _353 + 326] = 0
                revert with 0, 32, mem[_222 + idx + 294 len ceil32(_353) + 32]
            _226 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _330 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _226 + idx + 258
                mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_226 + idx + 262] = 32
                _346 = mem[_330]
                mem[_226 + idx + 294] = mem[_330]
                s = 0
                while s < _346:
                    mem[s + _226 + idx + 326] = mem[s + _330 + 32]
                    s = s + 32
                    continue 
                if ceil32(_346) > _346:
                    mem[_226 + idx + _346 + 326] = 0
                revert with 0, 32, mem[_226 + idx + 294 len ceil32(_346) + 32]
            mem[idx + mem[160] + 258] = 0
            _338 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _226 + idx + 258
            mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_226 + idx + 262] = 32
            _354 = mem[_338]
            mem[_226 + idx + 294] = mem[_338]
            s = 0
            while s < _354:
                mem[s + _226 + idx + 326] = mem[s + _338 + 32]
                s = s + 32
                continue 
            if ceil32(_354) > _354:
                mem[_226 + idx + _354 + 326] = 0
            revert with 0, 32, mem[_226 + idx + 294 len ceil32(_354) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _221 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _327 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _221 + idx + 290
                mem[_221 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_221 + idx + 294] = 32
                _343 = mem[_327]
                mem[_221 + idx + 326] = mem[_327]
                s = 0
                while s < _343:
                    mem[s + _221 + idx + 358] = mem[s + _327 + 32]
                    s = s + 32
                    continue 
                if ceil32(_343) > _343:
                    mem[_221 + idx + _343 + 358] = 0
                revert with 0, 32, mem[_221 + idx + 326 len ceil32(_343) + 32]
            mem[idx + mem[224] + 290] = 0
            _335 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _221 + idx + 290
            mem[_221 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_221 + idx + 294] = 32
            _351 = mem[_335]
            mem[_221 + idx + 326] = mem[_335]
            s = 0
            while s < _351:
                mem[s + _221 + idx + 358] = mem[s + _335 + 32]
                s = s + 32
                continue 
            if ceil32(_351) > _351:
                mem[_221 + idx + _351 + 358] = 0
            revert with 0, 32, mem[_221 + idx + 326 len ceil32(_351) + 32]
        _225 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _328 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _225 + idx + 290
            mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_225 + idx + 294] = 32
            _344 = mem[_328]
            mem[_225 + idx + 326] = mem[_328]
            s = 0
            while s < _344:
                mem[s + _225 + idx + 358] = mem[s + _328 + 32]
                s = s + 32
                continue 
            if ceil32(_344) > _344:
                mem[_225 + idx + _344 + 358] = 0
            revert with 0, 32, mem[_225 + idx + 326 len ceil32(_344) + 32]
        mem[idx + mem[224] + 290] = 0
        _336 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _225 + idx + 290
        mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_225 + idx + 294] = 32
        _352 = mem[_336]
        mem[_225 + idx + 326] = mem[_336]
        s = 0
        while s < _352:
            mem[s + _225 + idx + 358] = mem[s + _336 + 32]
            s = s + 32
            continue 
        if ceil32(_352) > _352:
            mem[_225 + idx + _352 + 358] = 0
        revert with 0, 32, mem[_225 + idx + 326 len ceil32(_352) + 32]
    mem[160] = 0
    mem[224] = 'Not dao' << 200
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function emergencyWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == daoAddress:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args daoAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 'Not dao' << 200
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _226 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _333 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _226 + idx + 258
                    mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_226 + idx + 262] = 32
                    _349 = mem[_333]
                    mem[_226 + idx + 294] = mem[_333]
                    s = 0
                    while s < _349:
                        mem[s + _226 + idx + 326] = mem[s + _333 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_349) > _349:
                        mem[_226 + idx + _349 + 326] = 0
                    revert with 0, 32, mem[_226 + idx + 294 len ceil32(_349) + 32]
                mem[idx + mem[160] + 258] = 0
                _341 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _226 + idx + 258
                mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_226 + idx + 262] = 32
                _357 = mem[_341]
                mem[_226 + idx + 294] = mem[_341]
                s = 0
                while s < _357:
                    mem[s + _226 + idx + 326] = mem[s + _341 + 32]
                    s = s + 32
                    continue 
                if ceil32(_357) > _357:
                    mem[_226 + idx + _357 + 326] = 0
                revert with 0, 32, mem[_226 + idx + 294 len ceil32(_357) + 32]
            _230 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _334 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _230 + idx + 258
                mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_230 + idx + 262] = 32
                _350 = mem[_334]
                mem[_230 + idx + 294] = mem[_334]
                s = 0
                while s < _350:
                    mem[s + _230 + idx + 326] = mem[s + _334 + 32]
                    s = s + 32
                    continue 
                if ceil32(_350) > _350:
                    mem[_230 + idx + _350 + 326] = 0
                revert with 0, 32, mem[_230 + idx + 294 len ceil32(_350) + 32]
            mem[idx + mem[160] + 258] = 0
            _342 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _230 + idx + 258
            mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_230 + idx + 262] = 32
            _358 = mem[_342]
            mem[_230 + idx + 294] = mem[_342]
            s = 0
            while s < _358:
                mem[s + _230 + idx + 326] = mem[s + _342 + 32]
                s = s + 32
                continue 
            if ceil32(_358) > _358:
                mem[_230 + idx + _358 + 326] = 0
            revert with 0, 32, mem[_230 + idx + 294 len ceil32(_358) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _225 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _331 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _225 + idx + 290
                mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_225 + idx + 294] = 32
                _347 = mem[_331]
                mem[_225 + idx + 326] = mem[_331]
                s = 0
                while s < _347:
                    mem[s + _225 + idx + 358] = mem[s + _331 + 32]
                    s = s + 32
                    continue 
                if ceil32(_347) > _347:
                    mem[_225 + idx + _347 + 358] = 0
                revert with 0, 32, mem[_225 + idx + 326 len ceil32(_347) + 32]
            mem[idx + mem[224] + 290] = 0
            _339 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _225 + idx + 290
            mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_225 + idx + 294] = 32
            _355 = mem[_339]
            mem[_225 + idx + 326] = mem[_339]
            s = 0
            while s < _355:
                mem[s + _225 + idx + 358] = mem[s + _339 + 32]
                s = s + 32
                continue 
            if ceil32(_355) > _355:
                mem[_225 + idx + _355 + 358] = 0
            revert with 0, 32, mem[_225 + idx + 326 len ceil32(_355) + 32]
        _229 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _332 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _229 + idx + 290
            mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_229 + idx + 294] = 32
            _348 = mem[_332]
            mem[_229 + idx + 326] = mem[_332]
            s = 0
            while s < _348:
                mem[s + _229 + idx + 358] = mem[s + _332 + 32]
                s = s + 32
                continue 
            if ceil32(_348) > _348:
                mem[_229 + idx + _348 + 358] = 0
            revert with 0, 32, mem[_229 + idx + 326 len ceil32(_348) + 32]
        mem[idx + mem[224] + 290] = 0
        _340 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _229 + idx + 290
        mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_229 + idx + 294] = 32
        _356 = mem[_340]
        mem[_229 + idx + 326] = mem[_340]
        s = 0
        while s < _356:
            mem[s + _229 + idx + 358] = mem[s + _340 + 32]
            s = s + 32
            continue 
        if ceil32(_356) > _356:
            mem[_229 + idx + _356 + 358] = 0
        revert with 0, 32, mem[_229 + idx + 326 len ceil32(_356) + 32]
    mem[160] = 0
    mem[224] = 'Not dao' << 200
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(daoAddress)
    staticcall daoAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < balanceOfClaimable[address(msg.sender)].field_1024:
        mem[ceil32(return_data.size) + 128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 96] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 127]):
                idx = idx - 1
                continue 
            mem[ceil32(return_data.size) + 192] = 0x4e6f742066726f7a656e00000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 160] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + ceil32(return_data.size) + 191]):
                    s = s - 1
                    continue 
                mem[ceil32(return_data.size) + 160] = s
                t = 0
                while t < idx:
                    mem[t + ceil32(return_data.size) + 256] = mem[t + ceil32(return_data.size) + 128]
                    t = t + 32
                    continue 
                mem[idx + ceil32(return_data.size) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + ceil32(return_data.size) + 258] = mem[t + ceil32(return_data.size) + 192]
                    t = t + 32
                    continue 
                mem[s + idx + ceil32(return_data.size) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + ceil32(return_data.size) + 262] = 32
                mem[s + idx + ceil32(return_data.size) + 294] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + ceil32(return_data.size) + 326] = mem[t + ceil32(return_data.size) + 256]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + ceil32(return_data.size) + 328] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + ceil32(return_data.size) + 326 len floor32(s + idx + 33)]
            mem[ceil32(return_data.size) + 224] = 0
            s = 0
            while s < idx:
                mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 128]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 256]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + ceil32(return_data.size) + 294] = 32
            mem[idx + ceil32(return_data.size) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
        mem[ceil32(return_data.size) + 224] = 0x4e6f742066726f7a656e00000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 192] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 223]):
                idx = idx - 1
                continue 
            mem[ceil32(return_data.size) + 192] = idx
            s = 0
            while s < 0:
                mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 192]
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 224]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + ceil32(return_data.size) + 294] = 32
            mem[idx + ceil32(return_data.size) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(dollarAddress)
        call dollarAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 36
        mem[(2 * ceil32(return_data.size)) + 128 len 36] = 0xfe506f6f6c3a20696e73756666696369656e7420636c61696d61626c652062616c616e63
        if arg1 > balanceOfClaimable[address(msg.sender)].field_256:
            revert with 0, 
                        32,
                        36,
                        0xfe506f6f6c3a20696e73756666696369656e7420636c61696d61626c652062616c616e63, mem[(2 * ceil32(return_data.size)) + 164 len 28] >> 32,
                        0
        balanceOfClaimable[address(msg.sender)].field_256 -= arg1
        if arg1 > totalClaimable:
            revert with 0, 
                        32,
                        36,
                        0xfe506f6f6c3a20696e73756666696369656e7420636c61696d61626c652062616c616e63, mem[(2 * ceil32(return_data.size)) + 164 len 28] >> 32,
                        0
        totalClaimable -= arg1
        if totalBonded + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(sub_78a4c911Address)
        staticcall sub_78a4c911Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= totalBonded + totalStaged:
            emit Claim(arg1, msg.sender);
        mem[(4 * ceil32(return_data.size)) + 224] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 192] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 223]):
                idx = idx - 1
                continue 
            mem[(4 * ceil32(return_data.size)) + 288] = 'Inconsistent PANCAKE-V2 balances'
            mem[(4 * ceil32(return_data.size)) + 256] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 287]):
                    s = s - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 256] = s
                t = 0
                while t < idx:
                    mem[t + (4 * ceil32(return_data.size)) + 352] = mem[t + (4 * ceil32(return_data.size)) + 224]
                    t = t + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 352] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + (4 * ceil32(return_data.size)) + 354] = mem[t + (4 * ceil32(return_data.size)) + 288]
                    t = t + 32
                    continue 
                mem[s + idx + (4 * ceil32(return_data.size)) + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + (4 * ceil32(return_data.size)) + 358] = 32
                mem[s + idx + (4 * ceil32(return_data.size)) + 390] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + (4 * ceil32(return_data.size)) + 422] = mem[t + (4 * ceil32(return_data.size)) + 352]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 424] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 422 len floor32(s + idx + 33)]
            mem[(4 * ceil32(return_data.size)) + 320] = 0
            s = 0
            while s < idx:
                mem[s + (4 * ceil32(return_data.size)) + 384] = mem[s + (4 * ceil32(return_data.size)) + 224]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 384] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + (4 * ceil32(return_data.size)) + 386] = mem[s + (4 * ceil32(return_data.size)) + 352]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (4 * ceil32(return_data.size)) + 390] = 32
            mem[idx + (4 * ceil32(return_data.size)) + 422] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (4 * ceil32(return_data.size)) + 454] = mem[s + (4 * ceil32(return_data.size)) + 384]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (4 * ceil32(return_data.size)) + 456] = 0
            revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 454 len floor32(idx + 33)]
        mem[(4 * ceil32(return_data.size)) + 320] = 'Inconsistent PANCAKE-V2 balances'
        mem[(4 * ceil32(return_data.size)) + 288] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 319]):
                idx = idx - 1
                continue 
            mem[(4 * ceil32(return_data.size)) + 288] = idx
            s = 0
            while s < 0:
                mem[s + (4 * ceil32(return_data.size)) + 384] = mem[s + (4 * ceil32(return_data.size)) + 288]
                s = s + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 384] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + (4 * ceil32(return_data.size)) + 386] = mem[s + (4 * ceil32(return_data.size)) + 320]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (4 * ceil32(return_data.size)) + 390] = 32
            mem[idx + (4 * ceil32(return_data.size)) + 422] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (4 * ceil32(return_data.size)) + 454] = mem[s + (4 * ceil32(return_data.size)) + 384]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (4 * ceil32(return_data.size)) + 456] = 0
            revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 454 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(daoAddress)
    staticcall daoAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < balanceOfClaimable[address(msg.sender)].field_1024:
        mem[ceil32(return_data.size) + 128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 96] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 127]):
                idx = idx - 1
                continue 
            mem[ceil32(return_data.size) + 192] = 0x4e6f742066726f7a656e00000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 160] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + ceil32(return_data.size) + 191]):
                    s = s - 1
                    continue 
                mem[ceil32(return_data.size) + 160] = s
                t = 0
                while t < idx:
                    mem[t + ceil32(return_data.size) + 256] = mem[t + ceil32(return_data.size) + 128]
                    t = t + 32
                    continue 
                mem[idx + ceil32(return_data.size) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + ceil32(return_data.size) + 258] = mem[t + ceil32(return_data.size) + 192]
                    t = t + 32
                    continue 
                mem[s + idx + ceil32(return_data.size) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + ceil32(return_data.size) + 262] = 32
                mem[s + idx + ceil32(return_data.size) + 294] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + ceil32(return_data.size) + 326] = mem[t + ceil32(return_data.size) + 256]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + ceil32(return_data.size) + 328] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + ceil32(return_data.size) + 326 len floor32(s + idx + 33)]
            mem[ceil32(return_data.size) + 224] = 0
            s = 0
            while s < idx:
                mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 128]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 256]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + ceil32(return_data.size) + 294] = 32
            mem[idx + ceil32(return_data.size) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
        mem[ceil32(return_data.size) + 224] = 0x4e6f742066726f7a656e00000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 192] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 223]):
                idx = idx - 1
                continue 
            mem[ceil32(return_data.size) + 192] = idx
            s = 0
            while s < 0:
                mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 192]
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 224]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + ceil32(return_data.size) + 294] = 32
            mem[idx + ceil32(return_data.size) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(sub_78a4c911Address)
        call sub_78a4c911Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 33
        mem[(2 * ceil32(return_data.size)) + 128 len 33] = 0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63
        if arg1 > balanceOfClaimable[address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        33,
                        0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63, mem[(2 * ceil32(return_data.size)) + 161 len 31] / 0.00390625,
                        0
        balanceOfClaimable[address(msg.sender)].field_0 -= arg1
        if arg1 > totalStaged:
            revert with 0, 
                        32,
                        33,
                        0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63, mem[(2 * ceil32(return_data.size)) + 161 len 31] / 0.00390625,
                        0
        totalStaged -= arg1
        if totalBonded + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(sub_78a4c911Address)
        staticcall sub_78a4c911Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= totalBonded + totalStaged:
            emit Withdraw(arg1, msg.sender);
        mem[(4 * ceil32(return_data.size)) + 224] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 192] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 223]):
                idx = idx - 1
                continue 
            mem[(4 * ceil32(return_data.size)) + 288] = 'Inconsistent PANCAKE-V2 balances'
            mem[(4 * ceil32(return_data.size)) + 256] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 287]):
                    s = s - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 256] = s
                t = 0
                while t < idx:
                    mem[t + (4 * ceil32(return_data.size)) + 352] = mem[t + (4 * ceil32(return_data.size)) + 224]
                    t = t + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 352] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + (4 * ceil32(return_data.size)) + 354] = mem[t + (4 * ceil32(return_data.size)) + 288]
                    t = t + 32
                    continue 
                mem[s + idx + (4 * ceil32(return_data.size)) + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + (4 * ceil32(return_data.size)) + 358] = 32
                mem[s + idx + (4 * ceil32(return_data.size)) + 390] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + (4 * ceil32(return_data.size)) + 422] = mem[t + (4 * ceil32(return_data.size)) + 352]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 424] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 422 len floor32(s + idx + 33)]
            mem[(4 * ceil32(return_data.size)) + 320] = 0
            s = 0
            while s < idx:
                mem[s + (4 * ceil32(return_data.size)) + 384] = mem[s + (4 * ceil32(return_data.size)) + 224]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 384] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + (4 * ceil32(return_data.size)) + 386] = mem[s + (4 * ceil32(return_data.size)) + 352]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (4 * ceil32(return_data.size)) + 390] = 32
            mem[idx + (4 * ceil32(return_data.size)) + 422] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (4 * ceil32(return_data.size)) + 454] = mem[s + (4 * ceil32(return_data.size)) + 384]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (4 * ceil32(return_data.size)) + 456] = 0
            revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 454 len floor32(idx + 33)]
        mem[(4 * ceil32(return_data.size)) + 320] = 'Inconsistent PANCAKE-V2 balances'
        mem[(4 * ceil32(return_data.size)) + 288] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 319]):
                idx = idx - 1
                continue 
            mem[(4 * ceil32(return_data.size)) + 288] = idx
            s = 0
            while s < 0:
                mem[s + (4 * ceil32(return_data.size)) + 384] = mem[s + (4 * ceil32(return_data.size)) + 288]
                s = s + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 384] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + (4 * ceil32(return_data.size)) + 386] = mem[s + (4 * ceil32(return_data.size)) + 320]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (4 * ceil32(return_data.size)) + 390] = 32
            mem[idx + (4 * ceil32(return_data.size)) + 422] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (4 * ceil32(return_data.size)) + 454] = mem[s + (4 * ceil32(return_data.size)) + 384]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (4 * ceil32(return_data.size)) + 456] = 0
            revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 454 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(daoAddress)
    staticcall daoAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < balanceOfClaimable[address(msg.sender)].field_1024:
        mem[ceil32(return_data.size) + 128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 96] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 127]):
                idx = idx - 1
                continue 
            mem[ceil32(return_data.size) + 192] = 0x4e6f742066726f7a656e00000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 160] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + ceil32(return_data.size) + 191]):
                    s = s - 1
                    continue 
                mem[ceil32(return_data.size) + 160] = s
                t = 0
                while t < idx:
                    mem[t + ceil32(return_data.size) + 256] = mem[t + ceil32(return_data.size) + 128]
                    t = t + 32
                    continue 
                mem[idx + ceil32(return_data.size) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + ceil32(return_data.size) + 258] = mem[t + ceil32(return_data.size) + 192]
                    t = t + 32
                    continue 
                mem[s + idx + ceil32(return_data.size) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + ceil32(return_data.size) + 262] = 32
                mem[s + idx + ceil32(return_data.size) + 294] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + ceil32(return_data.size) + 326] = mem[t + ceil32(return_data.size) + 256]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + ceil32(return_data.size) + 328] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + ceil32(return_data.size) + 326 len floor32(s + idx + 33)]
            mem[ceil32(return_data.size) + 224] = 0
            s = 0
            while s < idx:
                mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 128]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 256]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + ceil32(return_data.size) + 294] = 32
            mem[idx + ceil32(return_data.size) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
        mem[ceil32(return_data.size) + 224] = 0x4e6f742066726f7a656e00000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 192] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 223]):
                idx = idx - 1
                continue 
            mem[ceil32(return_data.size) + 192] = idx
            s = 0
            while s < 0:
                mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 192]
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 224]
                s = s + 32
                continue 
            mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + ceil32(return_data.size) + 294] = 32
            mem[idx + ceil32(return_data.size) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
    else:
        if paused:
            mem[ceil32(return_data.size) + 128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 96] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 127]):
                    idx = idx - 1
                    continue 
                mem[ceil32(return_data.size) + 192] = 0x5061757365640000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 160] = 32
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + ceil32(return_data.size) + 191]):
                        s = s - 1
                        continue 
                    mem[ceil32(return_data.size) + 160] = s
                    t = 0
                    while t < idx:
                        mem[t + ceil32(return_data.size) + 256] = mem[t + ceil32(return_data.size) + 128]
                        t = t + 32
                        continue 
                    mem[idx + ceil32(return_data.size) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while t < s:
                        mem[t + idx + ceil32(return_data.size) + 258] = mem[t + ceil32(return_data.size) + 192]
                        t = t + 32
                        continue 
                    mem[s + idx + ceil32(return_data.size) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[s + idx + ceil32(return_data.size) + 262] = 32
                    mem[s + idx + ceil32(return_data.size) + 294] = s + idx + 2
                    t = 0
                    while t < s + idx + 2:
                        mem[t + s + idx + ceil32(return_data.size) + 326] = mem[t + ceil32(return_data.size) + 256]
                        t = t + 32
                        continue 
                    if floor32(s + idx + 33) > s + idx + 2:
                        mem[(2 * s) + (2 * idx) + ceil32(return_data.size) + 328] = 0
                    revert with 0, 32, s + idx + 2, mem[s + idx + ceil32(return_data.size) + 326 len floor32(s + idx + 33)]
                mem[ceil32(return_data.size) + 224] = 0
                s = 0
                while s < idx:
                    mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 128]
                    s = s + 32
                    continue 
                mem[idx + ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 0:
                    mem[s + idx + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 256]
                    s = s + 32
                    continue 
                mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + ceil32(return_data.size) + 294] = 32
                mem[idx + ceil32(return_data.size) + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
            mem[ceil32(return_data.size) + 224] = 0x5061757365640000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 192] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + ceil32(return_data.size) + 223]):
                    idx = idx - 1
                    continue 
                mem[ceil32(return_data.size) + 192] = idx
                s = 0
                while s < 0:
                    mem[s + ceil32(return_data.size) + 288] = mem[s + ceil32(return_data.size) + 192]
                    s = s + 32
                    continue 
                mem[ceil32(return_data.size) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + ceil32(return_data.size) + 290] = mem[s + ceil32(return_data.size) + 224]
                    s = s + 32
                    continue 
                mem[idx + ceil32(return_data.size) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + ceil32(return_data.size) + 294] = 32
                mem[idx + ceil32(return_data.size) + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + ceil32(return_data.size) + 358] = mem[s + ceil32(return_data.size) + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + ceil32(return_data.size) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + ceil32(return_data.size) + 358 len floor32(idx + 33)]
        else:
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = this.address
            mem[ceil32(return_data.size) + 164] = arg1
            require ext_code.size(sub_78a4c911Address)
            call sub_78a4c911Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 + balanceOfClaimable[address(msg.sender)].field_0 < balanceOfClaimable[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_0 += arg1
            if arg1 + totalStaged < totalStaged:
                revert with 0, 'SafeMath: addition overflow'
            totalStaged += arg1
            if totalBonded + totalStaged < totalStaged:
                revert with 0, 'SafeMath: addition overflow'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_78a4c911Address)
            staticcall sub_78a4c911Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= totalBonded + totalStaged:
                emit Deposit(arg1, msg.sender);
            mem[(4 * ceil32(return_data.size)) + 128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 96] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 127]):
                    idx = idx - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 192] = 'Inconsistent PANCAKE-V2 balances'
                mem[(4 * ceil32(return_data.size)) + 160] = 32
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 191]):
                        s = s - 1
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 160] = s
                    t = 0
                    while t < idx:
                        mem[t + (4 * ceil32(return_data.size)) + 256] = mem[t + (4 * ceil32(return_data.size)) + 128]
                        t = t + 32
                        continue 
                    mem[idx + (4 * ceil32(return_data.size)) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while t < s:
                        mem[t + idx + (4 * ceil32(return_data.size)) + 258] = mem[t + (4 * ceil32(return_data.size)) + 192]
                        t = t + 32
                        continue 
                    mem[s + idx + (4 * ceil32(return_data.size)) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[s + idx + (4 * ceil32(return_data.size)) + 262] = 32
                    mem[s + idx + (4 * ceil32(return_data.size)) + 294] = s + idx + 2
                    t = 0
                    while t < s + idx + 2:
                        mem[t + s + idx + (4 * ceil32(return_data.size)) + 326] = mem[t + (4 * ceil32(return_data.size)) + 256]
                        t = t + 32
                        continue 
                    if floor32(s + idx + 33) > s + idx + 2:
                        mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 328] = 0
                    revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 326 len floor32(s + idx + 33)]
                mem[(4 * ceil32(return_data.size)) + 224] = 0
                s = 0
                while s < idx:
                    mem[s + (4 * ceil32(return_data.size)) + 288] = mem[s + (4 * ceil32(return_data.size)) + 128]
                    s = s + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 0:
                    mem[s + idx + (4 * ceil32(return_data.size)) + 290] = mem[s + (4 * ceil32(return_data.size)) + 256]
                    s = s + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (4 * ceil32(return_data.size)) + 294] = 32
                mem[idx + (4 * ceil32(return_data.size)) + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (4 * ceil32(return_data.size)) + 358] = mem[s + (4 * ceil32(return_data.size)) + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (4 * ceil32(return_data.size)) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 358 len floor32(idx + 33)]
            mem[(4 * ceil32(return_data.size)) + 224] = 'Inconsistent PANCAKE-V2 balances'
            mem[(4 * ceil32(return_data.size)) + 192] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 223]):
                    idx = idx - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 192] = idx
                s = 0
                while s < 0:
                    mem[s + (4 * ceil32(return_data.size)) + 288] = mem[s + (4 * ceil32(return_data.size)) + 192]
                    s = s + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + (4 * ceil32(return_data.size)) + 290] = mem[s + (4 * ceil32(return_data.size)) + 224]
                    s = s + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (4 * ceil32(return_data.size)) + 294] = 32
                mem[idx + (4 * ceil32(return_data.size)) + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (4 * ceil32(return_data.size)) + 358] = mem[s + (4 * ceil32(return_data.size)) + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (4 * ceil32(return_data.size)) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function bond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        mem[128] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x5061757365640000000000000000000000000000000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _1249 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _1788 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _1249 + idx + 258
                        mem[_1249 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1249 + idx + 262] = 32
                        _1868 = mem[_1788]
                        mem[_1249 + idx + 294] = mem[_1788]
                        s = 0
                        while s < _1868:
                            mem[s + _1249 + idx + 326] = mem[s + _1788 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1868) > _1868:
                            mem[_1249 + idx + _1868 + 326] = 0
                        revert with 0, 32, mem[_1249 + idx + 294 len ceil32(_1868) + 32]
                    mem[idx + mem[160] + 258] = 0
                    _1828 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _1249 + idx + 258
                    mem[_1249 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1249 + idx + 262] = 32
                    _1908 = mem[_1828]
                    mem[_1249 + idx + 294] = mem[_1828]
                    s = 0
                    while s < _1908:
                        mem[s + _1249 + idx + 326] = mem[s + _1828 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1908) > _1908:
                        mem[_1249 + idx + _1908 + 326] = 0
                    revert with 0, 32, mem[_1249 + idx + 294 len ceil32(_1908) + 32]
                _1269 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _1789 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _1269 + idx + 258
                    mem[_1269 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1269 + idx + 262] = 32
                    _1869 = mem[_1789]
                    mem[_1269 + idx + 294] = mem[_1789]
                    s = 0
                    while s < _1869:
                        mem[s + _1269 + idx + 326] = mem[s + _1789 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1869) > _1869:
                        mem[_1269 + idx + _1869 + 326] = 0
                    revert with 0, 32, mem[_1269 + idx + 294 len ceil32(_1869) + 32]
                mem[idx + mem[160] + 258] = 0
                _1829 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _1269 + idx + 258
                mem[_1269 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1269 + idx + 262] = 32
                _1909 = mem[_1829]
                mem[_1269 + idx + 294] = mem[_1829]
                s = 0
                while s < _1909:
                    mem[s + _1269 + idx + 326] = mem[s + _1829 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1909) > _1909:
                    mem[_1269 + idx + _1909 + 326] = 0
                revert with 0, 32, mem[_1269 + idx + 294 len ceil32(_1909) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _1248 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _1786 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _1248 + idx + 290
                    mem[_1248 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1248 + idx + 294] = 32
                    _1866 = mem[_1786]
                    mem[_1248 + idx + 326] = mem[_1786]
                    s = 0
                    while s < _1866:
                        mem[s + _1248 + idx + 358] = mem[s + _1786 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1866) > _1866:
                        mem[_1248 + idx + _1866 + 358] = 0
                    revert with 0, 32, mem[_1248 + idx + 326 len ceil32(_1866) + 32]
                mem[idx + mem[224] + 290] = 0
                _1826 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _1248 + idx + 290
                mem[_1248 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1248 + idx + 294] = 32
                _1906 = mem[_1826]
                mem[_1248 + idx + 326] = mem[_1826]
                s = 0
                while s < _1906:
                    mem[s + _1248 + idx + 358] = mem[s + _1826 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1906) > _1906:
                    mem[_1248 + idx + _1906 + 358] = 0
                revert with 0, 32, mem[_1248 + idx + 326 len ceil32(_1906) + 32]
            _1268 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _1787 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _1268 + idx + 290
                mem[_1268 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1268 + idx + 294] = 32
                _1867 = mem[_1787]
                mem[_1268 + idx + 326] = mem[_1787]
                s = 0
                while s < _1867:
                    mem[s + _1268 + idx + 358] = mem[s + _1787 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1867) > _1867:
                    mem[_1268 + idx + _1867 + 358] = 0
                revert with 0, 32, mem[_1268 + idx + 326 len ceil32(_1867) + 32]
            mem[idx + mem[224] + 290] = 0
            _1827 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _1268 + idx + 290
            mem[_1268 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1268 + idx + 294] = 32
            _1907 = mem[_1827]
            mem[_1268 + idx + 326] = mem[_1827]
            s = 0
            while s < _1907:
                mem[s + _1268 + idx + 358] = mem[s + _1827 + 32]
                s = s + 32
                continue 
            if ceil32(_1907) > _1907:
                mem[_1268 + idx + _1907 + 358] = 0
            revert with 0, 32, mem[_1268 + idx + 326 len ceil32(_1907) + 32]
        mem[160] = 0
        mem[224] = 0x5061757365640000000000000000000000000000000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    require ext_code.size(daoAddress)
    staticcall daoAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] + 12 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOfClaimable[address(msg.sender)].field_1024 = ext_call.return_data[0] + 12
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 30
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if totalClaimable > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalPhantom < 0:
        revert with 0, 'SafeMath: addition overflow'
    if totalBonded:
        if not totalPhantom + ext_call.return_data[0] - totalClaimable:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not totalBonded:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 + balanceOfClaimable[address(msg.sender)].field_512 < balanceOfClaimable[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_512 += arg1
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if (0 / totalBonded) + balanceOfClaimable[address(msg.sender)].field_768 < balanceOfClaimable[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_768 += 0 / totalBonded
            if (0 / totalBonded) + totalPhantom < totalPhantom:
                revert with 0, 'SafeMath: addition overflow'
            totalPhantom += 0 / totalBonded
        else:
            if (totalPhantom * arg1) + (ext_call.return_data[0] * arg1) - (totalClaimable * arg1) / totalPhantom + ext_call.return_data[0] - totalClaimable != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not totalBonded:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 + balanceOfClaimable[address(msg.sender)].field_512 < balanceOfClaimable[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_512 += arg1
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if ((totalPhantom * arg1) + (ext_call.return_data[0] * arg1) - (totalClaimable * arg1) / totalBonded) + balanceOfClaimable[address(msg.sender)].field_768 < balanceOfClaimable[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_768 += (totalPhantom * arg1) + (ext_call.return_data[0] * arg1) - (totalClaimable * arg1) / totalBonded
            if ((totalPhantom * arg1) + (ext_call.return_data[0] * arg1) - (totalClaimable * arg1) / totalBonded) + totalPhantom < totalPhantom:
                revert with 0, 'SafeMath: addition overflow'
            totalPhantom += (totalPhantom * arg1) + (ext_call.return_data[0] * arg1) - (totalClaimable * arg1) / totalBonded
        mem[(2 * ceil32(return_data.size)) + 224] = 33
        mem[(2 * ceil32(return_data.size)) + 256 len 33] = 0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63
        if arg1 > balanceOfClaimable[address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        33,
                        0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63, mem[(2 * ceil32(return_data.size)) + 289 len 31] / 0.00390625,
                        0
        balanceOfClaimable[address(msg.sender)].field_0 -= arg1
        if arg1 > totalStaged:
            revert with 0, 
                        32,
                        33,
                        0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63, mem[(2 * ceil32(return_data.size)) + 289 len 31] / 0.00390625,
                        0
        totalStaged -= arg1
        if totalBonded + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(sub_78a4c911Address)
        staticcall sub_78a4c911Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < totalBonded + totalStaged:
            mem[(4 * ceil32(return_data.size)) + 352] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 320] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 351]):
                    idx = idx - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 416] = 'Inconsistent PANCAKE-V2 balances'
                mem[(4 * ceil32(return_data.size)) + 384] = 32
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 415]):
                        s = s - 1
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 384] = s
                    t = 0
                    while t < idx:
                        mem[t + (4 * ceil32(return_data.size)) + 480] = mem[t + (4 * ceil32(return_data.size)) + 352]
                        t = t + 32
                        continue 
                    mem[idx + (4 * ceil32(return_data.size)) + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while t < s:
                        mem[t + idx + (4 * ceil32(return_data.size)) + 482] = mem[t + (4 * ceil32(return_data.size)) + 416]
                        t = t + 32
                        continue 
                    mem[s + idx + (4 * ceil32(return_data.size)) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[s + idx + (4 * ceil32(return_data.size)) + 486] = 32
                    mem[s + idx + (4 * ceil32(return_data.size)) + 518] = s + idx + 2
                    t = 0
                    while t < s + idx + 2:
                        mem[t + s + idx + (4 * ceil32(return_data.size)) + 550] = mem[t + (4 * ceil32(return_data.size)) + 480]
                        t = t + 32
                        continue 
                    if floor32(s + idx + 33) > s + idx + 2:
                        mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 552] = 0
                    revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 550 len floor32(s + idx + 33)]
                mem[(4 * ceil32(return_data.size)) + 448] = 0
                s = 0
                while s < idx:
                    mem[s + (4 * ceil32(return_data.size)) + 512] = mem[s + (4 * ceil32(return_data.size)) + 352]
                    s = s + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 0:
                    mem[s + idx + (4 * ceil32(return_data.size)) + 514] = mem[s + (4 * ceil32(return_data.size)) + 480]
                    s = s + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (4 * ceil32(return_data.size)) + 518] = 32
                mem[idx + (4 * ceil32(return_data.size)) + 550] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (4 * ceil32(return_data.size)) + 582] = mem[s + (4 * ceil32(return_data.size)) + 512]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (4 * ceil32(return_data.size)) + 584] = 0
                revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 582 len floor32(idx + 33)]
            mem[(4 * ceil32(return_data.size)) + 448] = 'Inconsistent PANCAKE-V2 balances'
            mem[(4 * ceil32(return_data.size)) + 416] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 447]):
                    idx = idx - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 416] = idx
                s = 0
                while s < 0:
                    mem[s + (4 * ceil32(return_data.size)) + 512] = mem[s + (4 * ceil32(return_data.size)) + 416]
                    s = s + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + (4 * ceil32(return_data.size)) + 514] = mem[s + (4 * ceil32(return_data.size)) + 448]
                    s = s + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (4 * ceil32(return_data.size)) + 518] = 32
                mem[idx + (4 * ceil32(return_data.size)) + 550] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (4 * ceil32(return_data.size)) + 582] = mem[s + (4 * ceil32(return_data.size)) + 512]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (4 * ceil32(return_data.size)) + 584] = 0
                revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 582 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    else:
        require ext_code.size(dollarAddress)
        staticcall dollarAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if totalClaimable > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] - totalClaimable:
            if arg1 + balanceOfClaimable[address(msg.sender)].field_512 < balanceOfClaimable[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_512 += arg1
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if balanceOfClaimable[address(msg.sender)].field_768 < balanceOfClaimable[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if totalPhantom < totalPhantom:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 10^6 * arg1 / 10^6 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + balanceOfClaimable[address(msg.sender)].field_512 < balanceOfClaimable[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_512 += arg1
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if (10^6 * arg1) + balanceOfClaimable[address(msg.sender)].field_768 < balanceOfClaimable[address(msg.sender)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            balanceOfClaimable[address(msg.sender)].field_768 += 10^6 * arg1
            if (10^6 * arg1) + totalPhantom < totalPhantom:
                revert with 0, 'SafeMath: addition overflow'
            totalPhantom += 10^6 * arg1
        if arg1 > balanceOfClaimable[address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        33,
                        0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63, mem[(4 * ceil32(return_data.size)) + 289 len 31] / 0.00390625,
                        0
        balanceOfClaimable[address(msg.sender)].field_0 -= arg1
        if arg1 > totalStaged:
            revert with 0, 
                        32,
                        33,
                        0x65506f6f6c3a20696e73756666696369656e74207374616765642062616c616e63, mem[(4 * ceil32(return_data.size)) + 289 len 31] / 0.00390625,
                        0
        totalStaged -= arg1
        if totalBonded + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        mem[(4 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(sub_78a4c911Address)
        staticcall sub_78a4c911Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < totalBonded + totalStaged:
            mem[(6 * ceil32(return_data.size)) + 352] = 0x506f6f6c00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 320] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 351]):
                    idx = idx - 1
                    continue 
                mem[(6 * ceil32(return_data.size)) + 416] = 'Inconsistent PANCAKE-V2 balances'
                mem[(6 * ceil32(return_data.size)) + 384] = 32
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + (6 * ceil32(return_data.size)) + 415]):
                        s = s - 1
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 384] = s
                    t = 0
                    while t < idx:
                        mem[t + (6 * ceil32(return_data.size)) + 480] = mem[t + (6 * ceil32(return_data.size)) + 352]
                        t = t + 32
                        continue 
                    mem[idx + (6 * ceil32(return_data.size)) + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while t < s:
                        mem[t + idx + (6 * ceil32(return_data.size)) + 482] = mem[t + (6 * ceil32(return_data.size)) + 416]
                        t = t + 32
                        continue 
                    mem[s + idx + (6 * ceil32(return_data.size)) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[s + idx + (6 * ceil32(return_data.size)) + 486] = 32
                    mem[s + idx + (6 * ceil32(return_data.size)) + 518] = s + idx + 2
                    t = 0
                    while t < s + idx + 2:
                        mem[t + s + idx + (6 * ceil32(return_data.size)) + 550] = mem[t + (6 * ceil32(return_data.size)) + 480]
                        t = t + 32
                        continue 
                    if floor32(s + idx + 33) > s + idx + 2:
                        mem[(2 * s) + (2 * idx) + (6 * ceil32(return_data.size)) + 552] = 0
                    revert with 0, 32, s + idx + 2, mem[s + idx + (6 * ceil32(return_data.size)) + 550 len floor32(s + idx + 33)]
                mem[(6 * ceil32(return_data.size)) + 448] = 0
                s = 0
                while s < idx:
                    mem[s + (6 * ceil32(return_data.size)) + 512] = mem[s + (6 * ceil32(return_data.size)) + 352]
                    s = s + 32
                    continue 
                mem[idx + (6 * ceil32(return_data.size)) + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 0:
                    mem[s + idx + (6 * ceil32(return_data.size)) + 514] = mem[s + (6 * ceil32(return_data.size)) + 480]
                    s = s + 32
                    continue 
                mem[idx + (6 * ceil32(return_data.size)) + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (6 * ceil32(return_data.size)) + 518] = 32
                mem[idx + (6 * ceil32(return_data.size)) + 550] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (6 * ceil32(return_data.size)) + 582] = mem[s + (6 * ceil32(return_data.size)) + 512]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (6 * ceil32(return_data.size)) + 584] = 0
                revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 582 len floor32(idx + 33)]
            mem[(6 * ceil32(return_data.size)) + 448] = 'Inconsistent PANCAKE-V2 balances'
            mem[(6 * ceil32(return_data.size)) + 416] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 447]):
                    idx = idx - 1
                    continue 
                mem[(6 * ceil32(return_data.size)) + 416] = idx
                s = 0
                while s < 0:
                    mem[s + (6 * ceil32(return_data.size)) + 512] = mem[s + (6 * ceil32(return_data.size)) + 416]
                    s = s + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + (6 * ceil32(return_data.size)) + 514] = mem[s + (6 * ceil32(return_data.size)) + 448]
                    s = s + 32
                    continue 
                mem[idx + (6 * ceil32(return_data.size)) + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (6 * ceil32(return_data.size)) + 518] = 32
                mem[idx + (6 * ceil32(return_data.size)) + 550] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (6 * ceil32(return_data.size)) + 582] = mem[s + (6 * ceil32(return_data.size)) + 512]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (6 * ceil32(return_data.size)) + 584] = 0
                revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 582 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    ('ge', ('ext_call.return_data', 0, 32), ('add', ('stor', ('name', 'totalBonded', 2)), ('stor', ('name', 'totalStaged', 0))))
    require ext_code.size(daoAddress)
    staticcall daoAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    emit Bond(ext_call.return_data[0] + 1, arg1, msg.sender);
}



}
