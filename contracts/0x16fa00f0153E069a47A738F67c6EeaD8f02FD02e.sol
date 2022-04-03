contract main {




// =====================  Runtime code  =====================


const name = 'Binance Agile Set Dollar Stake', 0

const decimals = 18

const epochTime = (block.timestamp - (446208 * 24 * 3600) / 2 * 3600)

const symbol = '', 0


uint256 epoch;
uint256 totalSupply;
uint256 totalBonded;
uint256 totalStaged;
uint256 totalRedeemable;
uint256 totalDebt;
uint256 totalCoupons;
address dollarAddress;
address oracleAddress;
address poolAddress;
mapping of struct balanceOf;
mapping of struct periodFor;
address implementationAddress;
uint256 stor3608;

function couponsExpiration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_512
}

function periodFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_256
}

function pool() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function totalRedeemable() payable {
    return totalRedeemable
}

function rejectFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_768
}

function isNominated(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(periodFor[address(arg1)].field_0)
}

function recordedVote(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require periodFor[address(arg2)][4][address(arg1)].field_0 < 3
    return periodFor[address(arg2)][4][address(arg1)].field_0
}

function totalBonded() payable {
    return totalBonded
}

function expiringCouponsAtIndex(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < couponsExpiration[arg1].field_768
    return stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'couponsExpiration', 13))) + arg2].field_0
}

function dollar() payable {
    return dollarAddress
}

function implementation() payable {
    return address(implementationAddress)
}

function approveFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_512
}

function expiringCoupons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_768
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_256
}

function oracle() payable {
    return oracleAddress
}

function balanceOfStaged(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function epoch() payable {
    return epoch
}

function totalCoupons() payable {
    return totalCoupons
}

function allowanceCoupons(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balanceOf[address(arg1)][3][address(arg2)].field_0
}

function outstandingCoupons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_256
}

function totalStaged() payable {
    return totalStaged
}

function isInitialized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(periodFor[address(arg1)].field_1280)
}

function startFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_0
}

function totalDebt() payable {
    return totalDebt
}

function totalBondedAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_0
}

function _fallback() payable {
    revert
}

function bootstrappingAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1 <= 150
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 0
}

function statusOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(arg1)].field_1280 > epoch:
        return 2
    if epoch >= balanceOf[address(arg1)].field_1024:
        return 0
    return 1
}

function balanceOfCoupons(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if couponsExpiration[arg2].field_256:
        return balanceOf[address(arg1)][2][arg2].field_0
    else:
        return 0
}

function votesFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512 < periodFor[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512)
}

function totalNet() payable {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalDebt > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[0] - totalDebt)
}

function balanceOfBonded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return 0
    if not totalBonded:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply)
    if balanceOf[address(arg1)].field_256 * totalBonded / totalBonded != balanceOf[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (balanceOf[address(arg1)].field_256 * totalBonded / totalSupply)
}

function implement(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    uint256(stor3608) = arg1
    mem[132] = 0, mem[132 len 28]
    delegate arg1.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, '', 0
        emit Upgraded(arg1);
    if delegate.return_code:
        emit Upgraded(arg1);
    revert with 0, 
                32,
                return_data.size,
                ext_call.return_data[0 len return_data.size],
                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
}

function initialize() payable {
    mem[0] = address(implementationAddress)
    mem[32] = 14
    if not periodFor[address(stor3608)].field_1280:
        periodFor[address(stor3608)].field_1280 = 1
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.pair() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        create contract with 0 wei
                        code: code.data[5536 len 8431], dollarAddress, address(ext_call.return_data[0])
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        poolAddress = address(create.new_address)
    mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 0x416c726561647920696e697469616c697a656400000000000000000000000000
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
                _230 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _337 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _230 + idx + 258
                    mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_230 + idx + 262] = 32
                    _353 = mem[_337]
                    mem[_230 + idx + 294] = mem[_337]
                    s = 0
                    while s < _353:
                        mem[s + _230 + idx + 326] = mem[s + _337 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_353) > _353:
                        mem[_230 + idx + _353 + 326] = 0
                    revert with 0, 32, mem[_230 + idx + 294 len ceil32(_353) + 32]
                mem[idx + mem[160] + 258] = 0
                _345 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _230 + idx + 258
                mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_230 + idx + 262] = 32
                _361 = mem[_345]
                mem[_230 + idx + 294] = mem[_345]
                s = 0
                while s < _361:
                    mem[s + _230 + idx + 326] = mem[s + _345 + 32]
                    s = s + 32
                    continue 
                if ceil32(_361) > _361:
                    mem[_230 + idx + _361 + 326] = 0
                revert with 0, 32, mem[_230 + idx + 294 len ceil32(_361) + 32]
            _234 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _338 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _234 + idx + 258
                mem[_234 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_234 + idx + 262] = 32
                _354 = mem[_338]
                mem[_234 + idx + 294] = mem[_338]
                s = 0
                while s < _354:
                    mem[s + _234 + idx + 326] = mem[s + _338 + 32]
                    s = s + 32
                    continue 
                if ceil32(_354) > _354:
                    mem[_234 + idx + _354 + 326] = 0
                revert with 0, 32, mem[_234 + idx + 294 len ceil32(_354) + 32]
            mem[idx + mem[160] + 258] = 0
            _346 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _234 + idx + 258
            mem[_234 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_234 + idx + 262] = 32
            _362 = mem[_346]
            mem[_234 + idx + 294] = mem[_346]
            s = 0
            while s < _362:
                mem[s + _234 + idx + 326] = mem[s + _346 + 32]
                s = s + 32
                continue 
            if ceil32(_362) > _362:
                mem[_234 + idx + _362 + 326] = 0
            revert with 0, 32, mem[_234 + idx + 294 len ceil32(_362) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _229 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _335 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _229 + idx + 290
                mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_229 + idx + 294] = 32
                _351 = mem[_335]
                mem[_229 + idx + 326] = mem[_335]
                s = 0
                while s < _351:
                    mem[s + _229 + idx + 358] = mem[s + _335 + 32]
                    s = s + 32
                    continue 
                if ceil32(_351) > _351:
                    mem[_229 + idx + _351 + 358] = 0
                revert with 0, 32, mem[_229 + idx + 326 len ceil32(_351) + 32]
            mem[idx + mem[224] + 290] = 0
            _343 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _229 + idx + 290
            mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_229 + idx + 294] = 32
            _359 = mem[_343]
            mem[_229 + idx + 326] = mem[_343]
            s = 0
            while s < _359:
                mem[s + _229 + idx + 358] = mem[s + _343 + 32]
                s = s + 32
                continue 
            if ceil32(_359) > _359:
                mem[_229 + idx + _359 + 358] = 0
            revert with 0, 32, mem[_229 + idx + 326 len ceil32(_359) + 32]
        _233 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _336 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _233 + idx + 290
            mem[_233 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_233 + idx + 294] = 32
            _352 = mem[_336]
            mem[_233 + idx + 326] = mem[_336]
            s = 0
            while s < _352:
                mem[s + _233 + idx + 358] = mem[s + _336 + 32]
                s = s + 32
                continue 
            if ceil32(_352) > _352:
                mem[_233 + idx + _352 + 358] = 0
            revert with 0, 32, mem[_233 + idx + 326 len ceil32(_352) + 32]
        mem[idx + mem[224] + 290] = 0
        _344 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _233 + idx + 290
        mem[_233 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_233 + idx + 294] = 32
        _360 = mem[_344]
        mem[_233 + idx + 326] = mem[_344]
        s = 0
        while s < _360:
            mem[s + _233 + idx + 358] = mem[s + _344 + 32]
            s = s + 32
            continue 
        if ceil32(_360) > _360:
            mem[_233 + idx + _360 + 358] = 0
        revert with 0, 32, mem[_233 + idx + 326 len ceil32(_360) + 32]
    mem[160] = 0
    mem[224] = 0x416c726561647920696e697469616c697a656400000000000000000000000000
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



}
