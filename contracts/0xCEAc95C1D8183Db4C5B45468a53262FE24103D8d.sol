contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function test() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.totalAddresses() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.totalAmount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.lastTimestamp() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.maxNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], uint8(ext_call.return_data[0])
}

function test3() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0x1959a00200000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[_6 + 128 len 32 * _7]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len 32 * _7] = mem[ceil32(return_data.size) + 128 len 32 * _7]
    return Array(len=_7, data=mem[mem[64] + 64 len 32 * _7])
}

function getWinningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96 len 128] = call.data[calldata.size len 128]
    require ext_code.size(stor1)
    staticcall stor1.maxNumber() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    staticcall stor1.totalAddresses() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.lastTimestamp() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.totalAmount() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 224] = 0x1959a00200000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(stor1)
    staticcall stor1.userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _21 = mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64
    require mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
    _22 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 224]
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 224] <= test266151307()
    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 224]) + 256 <= test266151307()
    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 224]) + 256
    mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], address(this.address) << 64 + 224]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _22] = mem[(6 * ceil32(return_data.size)) + _21 + 256 len 32 * _22]
    if _22:
        _66 = mem[64]
        mem[64] = mem[64] + 128
        mem[_66 len 128] = call.data[calldata.size len 128]
        _67 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - 1)
        mem[mem[64] + 64] = ext_call.return_data[0]
        _70 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[_66] = uint8((sha3(mem[_70 + 32 len mem[_70]]) % ext_call.return_data[0]) + 1)
        mem[_67 + 128] = block.hash(block.number - 1)
        mem[_67 + 160] = arg1 + ext_call.return_data[0]
        mem[_67 + 96] = 64
        mem[_66 + 32] = uint8((sha3(block.hash(block.number - 1), arg1 + ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_67 + 224] = block.hash(block.number - 1)
        mem[_67 + 256] = ext_call.return_data[0]
        mem[_67 + 192] = 64
        mem[64] = _67 + 288
        mem[_66 + 64] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_67 + 320] = block.hash(block.number - 1)
        mem[_67 + 352] = block.difficulty
        mem[_67 + 288] = 64
        mem[64] = _67 + 384
        mem[_66 + 96] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
        idx = 0
        s = _66
        t = _67 + 384
        while idx < 4:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from _67 + 384
           len 128
    _68 = mem[64]
    mem[64] = mem[64] + 128
    mem[_68 len 128] = call.data[calldata.size len 128]
    _69 = mem[64]
    mem[mem[64] + 32] = block.hash(block.number - 1)
    mem[mem[64] + 64] = ext_call.return_data[0] + 1
    _74 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    mem[_68] = uint8((sha3(mem[_74 + 32 len mem[_74]]) % ext_call.return_data[0]) + 1)
    mem[_69 + 128] = block.hash(block.number - 1)
    mem[_69 + 160] = arg1 + ext_call.return_data[0]
    mem[_69 + 96] = 64
    mem[_68 + 32] = uint8((sha3(block.hash(block.number - 1), arg1 + ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
    mem[_69 + 224] = block.hash(block.number - 1)
    mem[_69 + 256] = ext_call.return_data[0]
    mem[_69 + 192] = 64
    mem[64] = _69 + 288
    mem[_68 + 64] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
    mem[_69 + 320] = block.hash(block.number - 1)
    mem[_69 + 352] = block.difficulty
    mem[_69 + 288] = 64
    mem[64] = _69 + 384
    mem[_68 + 96] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
    idx = 0
    s = _68
    t = _69 + 384
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from _69 + 384
       len 128
}

function test2() payable {
    mem[96 len 128] = call.data[calldata.size len 128]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[224 len 128] = call.data[calldata.size len 128]
    require ext_code.size(stor1)
    staticcall stor1.maxNumber() with:
            gas gas_remaining wei
    mem[352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    staticcall stor1.totalAddresses() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.lastTimestamp() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.totalAmount() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 352] = 0x1959a00200000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 356] = this.address
    require ext_code.size(stor1)
    staticcall stor1.userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _24 = mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64
    require mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 383 < (6 * ceil32(return_data.size)) + return_data.size + 352
    _25 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352] <= test266151307()
    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]) + 384 <= test266151307()
    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]) + 384
    mem[(7 * ceil32(return_data.size)) + 352] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(7 * ceil32(return_data.size)) + 384 len 32 * _25] = mem[(6 * ceil32(return_data.size)) + _24 + 384 len 32 * _25]
    if _25:
        _69 = mem[64]
        mem[64] = mem[64] + 128
        mem[_69 len 128] = call.data[calldata.size len 128]
        _70 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - 1)
        mem[mem[64] + 64] = ext_call.return_data[0]
        _73 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[_69] = uint8((sha3(mem[_73 + 32 len mem[_73]]) % ext_call.return_data[0]) + 1)
        mem[_70 + 128] = block.hash(block.number - 1)
        mem[_70 + 160] = ext_call.return_data[0] + 10 * 10^18
        mem[_70 + 96] = 64
        mem[_69 + 32] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0] + 10 * 10^18) % ext_call.return_data[0]) + 1)
        mem[_70 + 224] = block.hash(block.number - 1)
        mem[_70 + 256] = ext_call.return_data[0]
        mem[_70 + 192] = 64
        mem[64] = _70 + 288
        mem[_69 + 64] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_70 + 320] = block.hash(block.number - 1)
        mem[_70 + 352] = block.difficulty
        mem[_70 + 288] = 64
        mem[64] = _70 + 384
        mem[_69 + 96] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
        idx = 0
        s = _69
        t = _70 + 384
        while idx < 4:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from _70 + 384
           len 128
    _71 = mem[64]
    mem[64] = mem[64] + 128
    mem[_71 len 128] = call.data[calldata.size len 128]
    _72 = mem[64]
    mem[mem[64] + 32] = block.hash(block.number - 1)
    mem[mem[64] + 64] = ext_call.return_data[0] + 1
    _77 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    mem[_71] = uint8((sha3(mem[_77 + 32 len mem[_77]]) % ext_call.return_data[0]) + 1)
    mem[_72 + 128] = block.hash(block.number - 1)
    mem[_72 + 160] = ext_call.return_data[0] + 10 * 10^18
    mem[_72 + 96] = 64
    mem[_71 + 32] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0] + 10 * 10^18) % ext_call.return_data[0]) + 1)
    mem[_72 + 224] = block.hash(block.number - 1)
    mem[_72 + 256] = ext_call.return_data[0]
    mem[_72 + 192] = 64
    mem[64] = _72 + 288
    mem[_71 + 64] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
    mem[_72 + 320] = block.hash(block.number - 1)
    mem[_72 + 352] = block.difficulty
    mem[_72 + 288] = 64
    mem[64] = _72 + 384
    mem[_71 + 96] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
    idx = 0
    s = _71
    t = _72 + 384
    while idx < 4:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from _72 + 384
       len 128
}

function sub_9276fb4a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.drawed() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Lottery is in drawed state.'
    require ext_code.size(stor1)
    staticcall stor1.minPrice() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96 len 128] = call.data[calldata.size len 128]
    mem[(2 * ceil32(return_data.size)) + 224 len 128] = call.data[calldata.size len 128]
    require ext_code.size(stor1)
    staticcall stor1.maxNumber() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor1)
    staticcall stor1.totalAddresses() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.lastTimestamp() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.totalAmount() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 352] = 0x1959a00200000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 356] = this.address
    require ext_code.size(stor1)
    staticcall stor1.userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _34 = mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64
    require mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 383 < (8 * ceil32(return_data.size)) + return_data.size + 352
    _35 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]
    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352] <= test266151307()
    require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]) + 384 <= test266151307()
    mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]) + 384
    mem[(10 * ceil32(return_data.size)) + 352] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 352 len 4], address(this.address) << 64 + 352]
    require return_data.size >= _34 + (32 * _35) + 32
    mem[(10 * ceil32(return_data.size)) + 384 len 32 * _35] = mem[(8 * ceil32(return_data.size)) + _34 + 384 len 32 * _35]
    if _35:
        _87 = mem[64]
        mem[64] = mem[64] + 128
        mem[_87 len 128] = call.data[calldata.size len 128]
        _88 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - 1)
        mem[mem[64] + 64] = ext_call.return_data[0]
        _91 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[_87] = uint8((sha3(mem[_91 + 32 len mem[_91]]) % ext_call.return_data[0]) + 1)
        mem[_88 + 128] = block.hash(block.number - 1)
        mem[_88 + 160] = 2 * ext_call.return_data[0]
        mem[_88 + 96] = 64
        mem[_87 + 32] = uint8((sha3(block.hash(block.number - 1), 2 * ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_88 + 224] = block.hash(block.number - 1)
        mem[_88 + 256] = ext_call.return_data[0]
        mem[_88 + 192] = 64
        mem[64] = _88 + 288
        mem[_87 + 64] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_88 + 320] = block.hash(block.number - 1)
        mem[_88 + 352] = block.difficulty
        mem[_88 + 288] = 64
        mem[_87 + 96] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
        mem[_88 + 388] = stor1
        mem[_88 + 420] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
        mem[_88 + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _88 + ceil32(return_data.size) + 384
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_88 + ceil32(return_data.size) + 384] = 0x14c20d5700000000000000000000000000000000000000000000000000000000
        mem[_88 + ceil32(return_data.size) + 388] = ext_call.return_data[0]
        idx = 0
        s = _87
        t = _88 + ceil32(return_data.size) + 420
        while idx < 4:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        call stor1.buy(uint256 rg1, uint8[4] rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[_88 + ceil32(return_data.size) + 420 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_88 + ceil32(return_data.size) + 384] = ext_call.return_data[0]
        idx = 0
        s = _87
        t = _88 + ceil32(return_data.size) + 416
        while idx < 4:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x5078effd: ext_call.return_data[0], mem[_88 + ceil32(return_data.size) + 416 len 128]
    else:
        _89 = mem[64]
        mem[64] = mem[64] + 128
        mem[_89 len 128] = call.data[calldata.size len 128]
        _90 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - 1)
        mem[mem[64] + 64] = ext_call.return_data[0] + 1
        _95 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[_89] = uint8((sha3(mem[_95 + 32 len mem[_95]]) % ext_call.return_data[0]) + 1)
        mem[_90 + 128] = block.hash(block.number - 1)
        mem[_90 + 160] = 2 * ext_call.return_data[0]
        mem[_90 + 96] = 64
        mem[_89 + 32] = uint8((sha3(block.hash(block.number - 1), 2 * ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_90 + 224] = block.hash(block.number - 1)
        mem[_90 + 256] = ext_call.return_data[0]
        mem[_90 + 192] = 64
        mem[64] = _90 + 288
        mem[_89 + 64] = uint8((sha3(block.hash(block.number - 1), ext_call.return_data[0]) % ext_call.return_data[0]) + 1)
        mem[_90 + 320] = block.hash(block.number - 1)
        mem[_90 + 352] = block.difficulty
        mem[_90 + 288] = 64
        mem[_89 + 96] = uint8((sha3(block.hash(block.number - 1), block.difficulty) % ext_call.return_data[0]) + 1)
        mem[_90 + 388] = stor1
        mem[_90 + 420] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
        mem[_90 + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _90 + ceil32(return_data.size) + 384
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_90 + ceil32(return_data.size) + 384] = 0x14c20d5700000000000000000000000000000000000000000000000000000000
        mem[_90 + ceil32(return_data.size) + 388] = ext_call.return_data[0]
        idx = 0
        s = _89
        t = _90 + ceil32(return_data.size) + 420
        while idx < 4:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        call stor1.buy(uint256 rg1, uint8[4] rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[_90 + ceil32(return_data.size) + 420 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_90 + ceil32(return_data.size) + 384] = ext_call.return_data[0]
        idx = 0
        s = _89
        t = _90 + ceil32(return_data.size) + 416
        while idx < 4:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x5078effd: ext_call.return_data[0], mem[_90 + ceil32(return_data.size) + 416 len 128]
}



}
