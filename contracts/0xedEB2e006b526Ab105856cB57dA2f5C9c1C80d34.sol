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
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[arg2].field_512 = arg2
    stor6[arg2].field_1536 = arg3
    stor6[arg2].field_1024 = msg.sender
    stor6[arg2].field_1280 = 0
    stor6[arg2].field_1792 = 0
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
    if stor6[arg2].field_1536 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete purchase'
    call stor6[arg2].field_1024 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor6[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[arg2].field_928 = 1
    stor6[arg2].field_1280 = msg.sender
    stor6[arg2].field_1792 = 1
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
    stor6[stor2].field_0 = stor2
    stor6[stor2].field_256 = arg1
    stor6[stor2].field_512 = arg2
    stor6[stor2].field_768 = msg.sender
    stor6[stor2].field_928 = 0
    stor6[stor2].field_1024 = msg.sender
    stor6[stor2].field_1280 = 0
    stor6[stor2].field_1536 = 0
    stor6[stor2].field_1536 = arg3
    stor6[stor2].field_1792 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1++
    emit 0x1300bc62: msg.sender, 0, msg.sender, 0, arg3, 0, stor2, arg1, arg2
    call stor4 with:
       value listingPrice wei
         gas 2300 * is_zero(value) wei
    stor0 = 1
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
            if stor6[idx + 1].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _51 = mem[64]
            mem[64] = mem[64] + 288
            mem[_51] = stor6[stor6[idx + 1].field_0].field_0
            mem[_51 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_51 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_51 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_51 + 128] = bool(stor6[stor6[idx + 1].field_0].field_928)
            mem[_51 + 160] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_51 + 192] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_51 + 224] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_51 + 256] = bool(stor6[stor6[idx + 1].field_0].field_1792)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _51
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 32
        _41 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _41:
            _77 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_77 + 44 len 20]
            mem[t + 64] = mem[_77 + 64]
            mem[t + 96] = mem[_77 + 108 len 20]
            mem[t + 128] = bool(mem[_77 + 128])
            mem[t + 160] = mem[_77 + 172 len 20]
            mem[t + 192] = mem[_77 + 204 len 20]
            mem[t + 224] = mem[_77 + 224]
            mem[t + 256] = bool(mem[_77 + 256])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _40 + (288 * _41) + -mem[64] + 64
    mem[64] = (32 * stor1) + 416
    mem[(32 * stor1) + 128] = 0
    mem[(32 * stor1) + 160] = 0
    mem[(32 * stor1) + 192] = 0
    mem[(32 * stor1) + 224] = 0
    mem[(32 * stor1) + 256] = 0
    mem[(32 * stor1) + 288] = 0
    mem[(32 * stor1) + 320] = 0
    mem[(32 * stor1) + 352] = 0
    mem[(32 * stor1) + 384] = 0
    mem[var13001] = (32 * stor1) + 128
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * stor1) + 128] = 0
        mem[(32 * stor1) + 160] = 0
        mem[(32 * stor1) + 192] = 0
        mem[(32 * stor1) + 224] = 0
        mem[(32 * stor1) + 256] = 0
        mem[(32 * stor1) + 288] = 0
        mem[(32 * stor1) + 320] = 0
        mem[(32 * stor1) + 352] = 0
        mem[(32 * stor1) + 384] = 0
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
        if stor6[idx + 1].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _114 = mem[64]
        mem[64] = mem[64] + 288
        mem[_114] = stor6[stor6[idx + 1].field_0].field_0
        mem[_114 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_114 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_114 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_114 + 128] = bool(stor6[stor6[idx + 1].field_0].field_928)
        mem[_114 + 160] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_114 + 192] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_114 + 224] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_114 + 256] = bool(stor6[stor6[idx + 1].field_0].field_1792)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _114
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _107 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _107:
        _124 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_124 + 44 len 20]
        mem[t + 64] = mem[_124 + 64]
        mem[t + 96] = mem[_124 + 108 len 20]
        mem[t + 128] = bool(mem[_124 + 128])
        mem[t + 160] = mem[_124 + 172 len 20]
        mem[t + 192] = mem[_124 + 204 len 20]
        mem[t + 224] = mem[_124 + 224]
        mem[t + 256] = bool(mem[_124 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _106 + (288 * _107) + -mem[64] + 64
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1280 != msg.sender:
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
            if stor6[idx + 1].field_1280 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _72 = mem[64]
            mem[64] = mem[64] + 288
            mem[_72] = stor6[stor6[idx + 1].field_0].field_0
            mem[_72 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_72 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_72 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_72 + 128] = bool(stor6[stor6[idx + 1].field_0].field_928)
            mem[_72 + 160] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_72 + 192] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_72 + 224] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_72 + 256] = bool(stor6[stor6[idx + 1].field_0].field_1792)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _72
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _62:
            _98 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_98 + 44 len 20]
            mem[t + 64] = mem[_98 + 64]
            mem[t + 96] = mem[_98 + 108 len 20]
            mem[t + 128] = bool(mem[_98 + 128])
            mem[t + 160] = mem[_98 + 172 len 20]
            mem[t + 192] = mem[_98 + 204 len 20]
            mem[t + 224] = mem[_98 + 224]
            mem[t + 256] = bool(mem[_98 + 256])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _61 + (288 * _62) + -mem[64] + 64
    mem[64] = (32 * s) + 416
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
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
        if stor6[idx + 1].field_1280 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _135 = mem[64]
        mem[64] = mem[64] + 288
        mem[_135] = stor6[stor6[idx + 1].field_0].field_0
        mem[_135 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_135 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_135 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_135 + 128] = bool(stor6[stor6[idx + 1].field_0].field_928)
        mem[_135 + 160] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_135 + 192] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_135 + 224] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_135 + 256] = bool(stor6[stor6[idx + 1].field_0].field_1792)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _135
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _127 = mem[64]
    mem[mem[64]] = 32
    _128 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _128:
        _145 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_145 + 44 len 20]
        mem[t + 64] = mem[_145 + 64]
        mem[t + 96] = mem[_145 + 108 len 20]
        mem[t + 128] = bool(mem[_145 + 128])
        mem[t + 160] = mem[_145 + 172 len 20]
        mem[t + 192] = mem[_145 + 204 len 20]
        mem[t + 224] = mem[_145 + 224]
        mem[t + 256] = bool(mem[_145 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _127 + (288 * _128) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor2:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_768 != msg.sender:
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
            if stor6[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _72 = mem[64]
            mem[64] = mem[64] + 288
            mem[_72] = stor6[stor6[idx + 1].field_0].field_0
            mem[_72 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_72 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_72 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_72 + 128] = bool(stor6[stor6[idx + 1].field_0].field_928)
            mem[_72 + 160] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_72 + 192] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_72 + 224] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_72 + 256] = bool(stor6[stor6[idx + 1].field_0].field_1792)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _72
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _62:
            _98 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_98 + 44 len 20]
            mem[t + 64] = mem[_98 + 64]
            mem[t + 96] = mem[_98 + 108 len 20]
            mem[t + 128] = bool(mem[_98 + 128])
            mem[t + 160] = mem[_98 + 172 len 20]
            mem[t + 192] = mem[_98 + 204 len 20]
            mem[t + 224] = mem[_98 + 224]
            mem[t + 256] = bool(mem[_98 + 256])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _61 + (288 * _62) + -mem[64] + 64
    mem[64] = (32 * s) + 416
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
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
        if stor6[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _135 = mem[64]
        mem[64] = mem[64] + 288
        mem[_135] = stor6[stor6[idx + 1].field_0].field_0
        mem[_135 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_135 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_135 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_135 + 128] = bool(stor6[stor6[idx + 1].field_0].field_928)
        mem[_135 + 160] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_135 + 192] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_135 + 224] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_135 + 256] = bool(stor6[stor6[idx + 1].field_0].field_1792)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _135
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _127 = mem[64]
    mem[mem[64]] = 32
    _128 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _128:
        _145 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_145 + 44 len 20]
        mem[t + 64] = mem[_145 + 64]
        mem[t + 96] = mem[_145 + 108 len 20]
        mem[t + 128] = bool(mem[_145 + 128])
        mem[t + 160] = mem[_145 + 172 len 20]
        mem[t + 192] = mem[_145 + 204 len 20]
        mem[t + 224] = mem[_145 + 224]
        mem[t + 256] = bool(mem[_145 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _127 + (288 * _128) + -mem[64] + 64
}



}
