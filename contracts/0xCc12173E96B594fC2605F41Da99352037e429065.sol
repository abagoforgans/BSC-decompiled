contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 listingPrice;
mapping of struct stor6;

function getListingPrice() {
    return listingPrice
}

function _fallback() payable {
    revert
}

function getItemCount() {
    if this.address != msg.sender:
        return 0
    return stor2
}

function setListingPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == this.address:
        listingPrice = arg1
    return listingPrice
}

function list(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 <= 0:
        revert with 0, 'Price must be above zero'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor6[arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[arg2].field_1792 = arg3
    stor6[arg2].field_1280 = msg.sender
    stor6[arg2].field_1536 = 0
    stor6[arg2].field_2048 = 0
    stor1++
    if stor3 <= 0:
        revert with 0, 'Counter: decrement overflow'
    stor3--
    call stor4 with:
       value listingPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createMarketSale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor6[arg2].field_1792 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete purchase'
    call stor6[arg2].field_1280 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor6[arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[arg2].field_1184 = 1
    stor6[arg2].field_1536 = msg.sender
    stor6[arg2].field_2048 = 1
    stor3++
    if stor1 <= 0:
        revert with 0, 'Counter: decrement overflow'
    stor1--
    stor0 = 1
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
        revert with 0, 'Price must be above zero'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    stor2++
    stor6[stor2].field_0 = 1
    stor6[stor2].field_256 = stor2
    stor6[stor2].field_512 = arg1
    stor6[stor2].field_768 = arg2
    stor6[stor2].field_1024 = msg.sender
    stor6[stor2].field_1184 = 0
    stor6[stor2].field_1280 = msg.sender
    stor6[stor2].field_1536 = 0
    stor6[stor2].field_1792 = 0
    stor6[stor2].field_1792 = arg3
    stor6[stor2].field_2048 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1++
    emit 0x2a6d5db6: 1, msg.sender, 0, msg.sender, 0, arg3, 0, stor2, arg1, arg2
    call stor4 with:
       value listingPrice wei
         gas 2300 * is_zero(value) wei
    stor0 = 1
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1536 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if stor6[idx + 1].field_1536 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_256
            mem[32] = 6
            _75 = mem[64]
            mem[64] = mem[64] + 320
            mem[_75] = bool(stor6[stor6[idx + 1].field_256].field_0)
            mem[_75 + 32] = stor6[stor6[idx + 1].field_256].field_256
            mem[_75 + 64] = stor6[stor6[idx + 1].field_256].field_512
            mem[_75 + 96] = stor6[stor6[idx + 1].field_256].field_768
            mem[_75 + 128] = stor6[stor6[idx + 1].field_256].field_1024
            mem[_75 + 160] = bool(stor6[stor6[idx + 1].field_256].field_1184)
            mem[_75 + 192] = stor6[stor6[idx + 1].field_256].field_1280
            mem[_75 + 224] = stor6[stor6[idx + 1].field_256].field_1536
            mem[_75 + 256] = stor6[stor6[idx + 1].field_256].field_1792
            mem[_75 + 288] = bool(stor6[stor6[idx + 1].field_256].field_2048)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _75
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _65 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _65:
            _103 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_103 + 32]
            mem[t + 64] = mem[_103 + 76 len 20]
            mem[t + 96] = mem[_103 + 96]
            mem[t + 128] = mem[_103 + 140 len 20]
            mem[t + 160] = bool(mem[_103 + 160])
            mem[t + 192] = mem[_103 + 204 len 20]
            mem[t + 224] = mem[_103 + 236 len 20]
            mem[t + 256] = mem[_103 + 256]
            mem[t + 288] = bool(mem[_103 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _64 + (320 * _65) + -mem[64] + 64
    mem[64] = (32 * s) + 448
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
        mem[(32 * s) + 416] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1536 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_256
        mem[32] = 6
        _142 = mem[64]
        mem[64] = mem[64] + 320
        mem[_142] = bool(stor6[stor6[idx + 1].field_256].field_0)
        mem[_142 + 32] = stor6[stor6[idx + 1].field_256].field_256
        mem[_142 + 64] = stor6[stor6[idx + 1].field_256].field_512
        mem[_142 + 96] = stor6[stor6[idx + 1].field_256].field_768
        mem[_142 + 128] = stor6[stor6[idx + 1].field_256].field_1024
        mem[_142 + 160] = bool(stor6[stor6[idx + 1].field_256].field_1184)
        mem[_142 + 192] = stor6[stor6[idx + 1].field_256].field_1280
        mem[_142 + 224] = stor6[stor6[idx + 1].field_256].field_1536
        mem[_142 + 256] = stor6[stor6[idx + 1].field_256].field_1792
        mem[_142 + 288] = bool(stor6[stor6[idx + 1].field_256].field_2048)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _142
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _134 = mem[64]
    mem[mem[64]] = 32
    _135 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _135:
        _153 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_153 + 32]
        mem[t + 64] = mem[_153 + 76 len 20]
        mem[t + 96] = mem[_153 + 96]
        mem[t + 128] = mem[_153 + 140 len 20]
        mem[t + 160] = bool(mem[_153 + 160])
        mem[t + 192] = mem[_153 + 204 len 20]
        mem[t + 224] = mem[_153 + 236 len 20]
        mem[t + 256] = mem[_153 + 256]
        mem[t + 288] = bool(mem[_153 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _134 + (320 * _135) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if stor6[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_256
            mem[32] = 6
            _75 = mem[64]
            mem[64] = mem[64] + 320
            mem[_75] = bool(stor6[stor6[idx + 1].field_256].field_0)
            mem[_75 + 32] = stor6[stor6[idx + 1].field_256].field_256
            mem[_75 + 64] = stor6[stor6[idx + 1].field_256].field_512
            mem[_75 + 96] = stor6[stor6[idx + 1].field_256].field_768
            mem[_75 + 128] = stor6[stor6[idx + 1].field_256].field_1024
            mem[_75 + 160] = bool(stor6[stor6[idx + 1].field_256].field_1184)
            mem[_75 + 192] = stor6[stor6[idx + 1].field_256].field_1280
            mem[_75 + 224] = stor6[stor6[idx + 1].field_256].field_1536
            mem[_75 + 256] = stor6[stor6[idx + 1].field_256].field_1792
            mem[_75 + 288] = bool(stor6[stor6[idx + 1].field_256].field_2048)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _75
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _65 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _65:
            _103 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_103 + 32]
            mem[t + 64] = mem[_103 + 76 len 20]
            mem[t + 96] = mem[_103 + 96]
            mem[t + 128] = mem[_103 + 140 len 20]
            mem[t + 160] = bool(mem[_103 + 160])
            mem[t + 192] = mem[_103 + 204 len 20]
            mem[t + 224] = mem[_103 + 236 len 20]
            mem[t + 256] = mem[_103 + 256]
            mem[t + 288] = bool(mem[_103 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _64 + (320 * _65) + -mem[64] + 64
    mem[64] = (32 * s) + 448
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
        mem[(32 * s) + 416] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_256
        mem[32] = 6
        _142 = mem[64]
        mem[64] = mem[64] + 320
        mem[_142] = bool(stor6[stor6[idx + 1].field_256].field_0)
        mem[_142 + 32] = stor6[stor6[idx + 1].field_256].field_256
        mem[_142 + 64] = stor6[stor6[idx + 1].field_256].field_512
        mem[_142 + 96] = stor6[stor6[idx + 1].field_256].field_768
        mem[_142 + 128] = stor6[stor6[idx + 1].field_256].field_1024
        mem[_142 + 160] = bool(stor6[stor6[idx + 1].field_256].field_1184)
        mem[_142 + 192] = stor6[stor6[idx + 1].field_256].field_1280
        mem[_142 + 224] = stor6[stor6[idx + 1].field_256].field_1536
        mem[_142 + 256] = stor6[stor6[idx + 1].field_256].field_1792
        mem[_142 + 288] = bool(stor6[stor6[idx + 1].field_256].field_2048)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _142
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _134 = mem[64]
    mem[mem[64]] = 32
    _135 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _135:
        _153 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_153 + 32]
        mem[t + 64] = mem[_153 + 76 len 20]
        mem[t + 96] = mem[_153 + 96]
        mem[t + 128] = mem[_153 + 140 len 20]
        mem[t + 160] = bool(mem[_153 + 160])
        mem[t + 192] = mem[_153 + 204 len 20]
        mem[t + 224] = mem[_153 + 236 len 20]
        mem[t + 256] = mem[_153 + 256]
        mem[t + 288] = bool(mem[_153 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _134 + (320 * _135) + -mem[64] + 64
}

function fetchMarketItems() {
    if stor1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor1
    mem[64] = (32 * stor1) + 128
    if not stor1:
        idx = 0
        s = 0
        while idx < stor2:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if stor6[idx + 1].field_1536:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if bool(stor6[idx + 1].field_0) != 1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_256
            mem[32] = 6
            _63 = mem[64]
            mem[64] = mem[64] + 320
            mem[_63] = bool(stor6[stor6[idx + 1].field_256].field_0)
            mem[_63 + 32] = stor6[stor6[idx + 1].field_256].field_256
            mem[_63 + 64] = stor6[stor6[idx + 1].field_256].field_512
            mem[_63 + 96] = stor6[stor6[idx + 1].field_256].field_768
            mem[_63 + 128] = stor6[stor6[idx + 1].field_256].field_1024
            mem[_63 + 160] = bool(stor6[stor6[idx + 1].field_256].field_1184)
            mem[_63 + 192] = stor6[stor6[idx + 1].field_256].field_1280
            mem[_63 + 224] = stor6[stor6[idx + 1].field_256].field_1536
            mem[_63 + 256] = stor6[stor6[idx + 1].field_256].field_1792
            mem[_63 + 288] = bool(stor6[stor6[idx + 1].field_256].field_2048)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _63
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _44 = mem[64]
        mem[mem[64]] = 32
        _45 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _45:
            _85 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_85 + 32]
            mem[t + 64] = mem[_85 + 76 len 20]
            mem[t + 96] = mem[_85 + 96]
            mem[t + 128] = mem[_85 + 140 len 20]
            mem[t + 160] = bool(mem[_85 + 160])
            mem[t + 192] = mem[_85 + 204 len 20]
            mem[t + 224] = mem[_85 + 236 len 20]
            mem[t + 256] = mem[_85 + 256]
            mem[t + 288] = bool(mem[_85 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _44 + (320 * _45) + -mem[64] + 64
    mem[64] = (32 * stor1) + 448
    mem[(32 * stor1) + 128] = 0
    mem[(32 * stor1) + 160] = 0
    mem[(32 * stor1) + 192] = 0
    mem[(32 * stor1) + 224] = 0
    mem[(32 * stor1) + 256] = 0
    mem[(32 * stor1) + 288] = 0
    mem[(32 * stor1) + 320] = 0
    mem[(32 * stor1) + 352] = 0
    mem[(32 * stor1) + 384] = 0
    mem[(32 * stor1) + 416] = 0
    mem[var13001] = (32 * stor1) + 128
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[(32 * stor1) + 128] = 0
        mem[(32 * stor1) + 160] = 0
        mem[(32 * stor1) + 192] = 0
        mem[(32 * stor1) + 224] = 0
        mem[(32 * stor1) + 256] = 0
        mem[(32 * stor1) + 288] = 0
        mem[(32 * stor1) + 320] = 0
        mem[(32 * stor1) + 352] = 0
        mem[(32 * stor1) + 384] = 0
        mem[(32 * stor1) + 416] = 0
        mem[s + 32] = (32 * stor1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1536:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if bool(stor6[idx + 1].field_0) != 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_256
        mem[32] = 6
        _128 = mem[64]
        mem[64] = mem[64] + 320
        mem[_128] = bool(stor6[stor6[idx + 1].field_256].field_0)
        mem[_128 + 32] = stor6[stor6[idx + 1].field_256].field_256
        mem[_128 + 64] = stor6[stor6[idx + 1].field_256].field_512
        mem[_128 + 96] = stor6[stor6[idx + 1].field_256].field_768
        mem[_128 + 128] = stor6[stor6[idx + 1].field_256].field_1024
        mem[_128 + 160] = bool(stor6[stor6[idx + 1].field_256].field_1184)
        mem[_128 + 192] = stor6[stor6[idx + 1].field_256].field_1280
        mem[_128 + 224] = stor6[stor6[idx + 1].field_256].field_1536
        mem[_128 + 256] = stor6[stor6[idx + 1].field_256].field_1792
        mem[_128 + 288] = bool(stor6[stor6[idx + 1].field_256].field_2048)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _128
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _117 = mem[64]
    mem[mem[64]] = 32
    _118 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _118:
        _137 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_137 + 32]
        mem[t + 64] = mem[_137 + 76 len 20]
        mem[t + 96] = mem[_137 + 96]
        mem[t + 128] = mem[_137 + 140 len 20]
        mem[t + 160] = bool(mem[_137 + 160])
        mem[t + 192] = mem[_137 + 204 len 20]
        mem[t + 224] = mem[_137 + 236 len 20]
        mem[t + 256] = mem[_137 + 256]
        mem[t + 288] = bool(mem[_137 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _117 + (320 * _118) + -mem[64] + 64
}



}
