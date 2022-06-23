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
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg3 <= 0:
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
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MarketItemCreated(msg.sender, 0, arg3, 0, stor1, arg1, arg2);
    stor0 = 1
}

function createMarketSale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
        args address(this.address), msg.sender, stor4[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[arg2].field_1024 = msg.sender
    stor2++
    stor4[arg2].field_1536 = 1
    stor0 = 1
}

function fetchMarketItems() {
    if stor1 < stor2:
        revert with 'NH{q', 17
    if stor1 - stor2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor1 - stor2
    mem[64] = (32 * stor1 - stor2) + 128
    if not stor1 - stor2:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 4
            if stor4[idx + 1].field_1024:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 4
            _44 = mem[64]
            mem[64] = mem[64] + 224
            mem[_44] = stor4[idx + 1].field_0
            mem[_44 + 32] = stor4[idx + 1].field_256
            mem[_44 + 64] = stor4[idx + 1].field_512
            mem[_44 + 96] = stor4[idx + 1].field_768
            mem[_44 + 128] = stor4[idx + 1].field_1024
            mem[_44 + 160] = stor4[idx + 1].field_1280
            mem[_44 + 192] = bool(stor4[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _44
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
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
            _65 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_65 + 44 len 20]
            mem[t + 64] = mem[_65 + 64]
            mem[t + 96] = mem[_65 + 108 len 20]
            mem[t + 128] = mem[_65 + 140 len 20]
            mem[t + 160] = mem[_65 + 160]
            mem[t + 192] = bool(mem[_65 + 192])
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
    mem[var22001] = (32 * stor1 - stor2) + 128
    s = var22001
    idx = var22002
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
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 4
        if stor4[idx + 1].field_1024:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 4
        _96 = mem[64]
        mem[64] = mem[64] + 224
        mem[_96] = stor4[idx + 1].field_0
        mem[_96 + 32] = stor4[idx + 1].field_256
        mem[_96 + 64] = stor4[idx + 1].field_512
        mem[_96 + 96] = stor4[idx + 1].field_768
        mem[_96 + 128] = stor4[idx + 1].field_1024
        mem[_96 + 160] = stor4[idx + 1].field_1280
        mem[_96 + 192] = bool(stor4[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _96
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    _90 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _90:
        _104 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_104 + 44 len 20]
        mem[t + 64] = mem[_104 + 64]
        mem[t + 96] = mem[_104 + 108 len 20]
        mem[t + 128] = mem[_104 + 140 len 20]
        mem[t + 160] = mem[_104 + 160]
        mem[t + 192] = bool(mem[_104 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _89 + (224 * _90) + -mem[64] + 64
}



}
