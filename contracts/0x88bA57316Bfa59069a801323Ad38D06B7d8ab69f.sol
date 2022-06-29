contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address owner;
mapping of struct stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function createMarketItem(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg3:
        revert with 0, 'Price must be greater than 0'
    stor1++
    stor4[stor1].field_0 = stor1
    stor4[stor1].field_256 = arg1
    stor4[stor1].field_512 = arg2
    stor4[stor1].field_768 = msg.sender
    stor4[stor1].field_1024 = 0
    stor4[stor1].field_1280 = 0
    stor4[stor1].field_1280 = arg3
    stor4[stor1].field_1536 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MarketItemCreated(msg.sender, 0, arg3, 0, stor1, arg1, arg2);
    stor0 = 1
}

function createMarketSale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor4[arg2].field_1280 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    if bool(stor4[arg2].field_1536) == 1:
        revert with 0, 'This Sale has alredy finnished'
    emit 0x2073b270: msg.sender, arg2
    call stor4[arg2].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, stor4[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[arg2].field_1024 = msg.sender or Mask(96, 160, stor4[arg2].field_1024)
    stor2++
    stor4[arg2].field_1536 = 1
    stor0 = 1
}

function fetchMarketItems() {
    if stor1 < stor2:
        revert with 0, 17
    if stor1 - stor2 > test266151307():
        revert with 0, 65
    mem[96] = stor1 - stor2
    mem[64] = (32 * stor1 - stor2) + 128
    if not stor1 - stor2:
        idx = 0
        s = 0
        while idx < stor1:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 4
            if stor4[idx + 1].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 4
            _50 = mem[64]
            mem[64] = mem[64] + 224
            mem[_50] = stor4[idx + 1].field_0
            mem[_50 + 32] = stor4[idx + 1].field_256
            mem[_50 + 64] = stor4[idx + 1].field_512
            mem[_50 + 96] = stor4[idx + 1].field_768
            mem[_50 + 128] = stor4[idx + 1].field_1024
            mem[_50 + 160] = stor4[idx + 1].field_1280
            mem[_50 + 192] = bool(stor4[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _50
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _35:
            _64 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_64 + 44 len 20]
            mem[t + 64] = mem[_64 + 64]
            mem[t + 96] = mem[_64 + 108 len 20]
            mem[t + 128] = mem[_64 + 140 len 20]
            mem[t + 160] = mem[_64 + 160]
            mem[t + 192] = bool(mem[_64 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _34 + (224 * _35) + -mem[64] + 64
    mem[64] = (32 * stor1 - stor2) + 352
    mem[(32 * stor1 - stor2) + 128] = 0
    mem[(32 * stor1 - stor2) + 160] = 0
    mem[(32 * stor1 - stor2) + 192] = 0
    mem[(32 * stor1 - stor2) + 224] = 0
    mem[(32 * stor1 - stor2) + 256] = 0
    mem[(32 * stor1 - stor2) + 288] = 0
    mem[(32 * stor1 - stor2) + 320] = 0
    mem[128] = (32 * stor1 - stor2) + 128
    s = 128
    idx = stor1 - stor2
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * stor1 - stor2) + 128] = 0
        mem[(32 * stor1 - stor2) + 160] = 0
        mem[(32 * stor1 - stor2) + 192] = 0
        mem[(32 * stor1 - stor2) + 224] = 0
        mem[(32 * stor1 - stor2) + 256] = 0
        mem[(32 * stor1 - stor2) + 288] = 0
        mem[(32 * stor1 - stor2) + 320] = 0
        mem[s + 32] = (32 * stor1 - stor2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 4
        if stor4[idx + 1].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 4
        _86 = mem[64]
        mem[64] = mem[64] + 224
        mem[_86] = stor4[idx + 1].field_0
        mem[_86 + 32] = stor4[idx + 1].field_256
        mem[_86 + 64] = stor4[idx + 1].field_512
        mem[_86 + 96] = stor4[idx + 1].field_768
        mem[_86 + 128] = stor4[idx + 1].field_1024
        mem[_86 + 160] = stor4[idx + 1].field_1280
        mem[_86 + 192] = bool(stor4[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _86
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _73 = mem[64]
    mem[mem[64]] = 32
    _74 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _74:
        _88 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_88 + 44 len 20]
        mem[t + 64] = mem[_88 + 64]
        mem[t + 96] = mem[_88 + 108 len 20]
        mem[t + 128] = mem[_88 + 140 len 20]
        mem[t + 160] = mem[_88 + 160]
        mem[t + 192] = bool(mem[_88 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _73 + (224 * _74) + -mem[64] + 64
}



}
