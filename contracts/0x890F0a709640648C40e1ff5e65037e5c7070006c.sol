contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 listingPrice;
mapping of struct stor5;

function getListingPrice() {
    return listingPrice
}

function _fallback() payable {
    revert
}

function sub_05ae31e4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg3:
        revert with 0, 'Price must be at least 1 wei'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    stor1++
    stor5[stor1].field_0 = stor1
    stor5[stor1].field_256 = address(arg1)
    stor5[stor1].field_512 = arg2
    stor5[stor1].field_768 = msg.sender
    stor5[stor1].field_1024 = 0
    stor5[stor1].field_1280 = arg3
    stor5[stor1].field_1536 = 0
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x77c31315: msg.sender, 0, arg3, 0, stor1, address(arg1), arg2
    stor0 = 1
}

function sub_bf4892bb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor5[arg2].field_1280 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    call stor5[arg2].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, stor5[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5[arg2].field_1024 = msg.sender or Mask(96, 160, stor5[arg2].field_1024)
    stor5[arg2].field_1536 = 1
    stor2++
    call stor3 with:
       value listingPrice wei
         gas 2300 * is_zero(value) wei
    stor0 = 1
}

function sub_01ae591a(?) {
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
            mem[32] = 5
            if stor5[idx + 1].field_1024:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 5
            _48 = mem[64]
            mem[64] = mem[64] + 224
            mem[_48] = stor5[idx + 1].field_0
            mem[_48 + 32] = stor5[idx + 1].field_256
            mem[_48 + 64] = stor5[idx + 1].field_512
            mem[_48 + 96] = stor5[idx + 1].field_768
            mem[_48 + 128] = stor5[idx + 1].field_1024
            mem[_48 + 160] = stor5[idx + 1].field_1280
            mem[_48 + 192] = bool(stor5[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _48
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
    mem[var14001] = (32 * stor1 - stor2) + 128
    s = var14001
    idx = var14002
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
        mem[32] = 5
        if stor5[idx + 1].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        _102 = mem[64]
        mem[64] = mem[64] + 224
        mem[_102] = stor5[idx + 1].field_0
        mem[_102 + 32] = stor5[idx + 1].field_256
        mem[_102 + 64] = stor5[idx + 1].field_512
        mem[_102 + 96] = stor5[idx + 1].field_768
        mem[_102 + 128] = stor5[idx + 1].field_1024
        mem[_102 + 160] = stor5[idx + 1].field_1280
        mem[_102 + 192] = bool(stor5[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _102
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
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

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor1:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor1:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 5
            if stor5[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 5
            _66 = mem[64]
            mem[64] = mem[64] + 224
            mem[_66] = stor5[idx + 1].field_0
            mem[_66 + 32] = stor5[idx + 1].field_256
            mem[_66 + 64] = stor5[idx + 1].field_512
            mem[_66 + 96] = stor5[idx + 1].field_768
            mem[_66 + 128] = stor5[idx + 1].field_1024
            mem[_66 + 160] = stor5[idx + 1].field_1280
            mem[_66 + 192] = bool(stor5[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _66
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _53 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _53:
            _83 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_83 + 44 len 20]
            mem[t + 64] = mem[_83 + 64]
            mem[t + 96] = mem[_83 + 108 len 20]
            mem[t + 128] = mem[_83 + 140 len 20]
            mem[t + 160] = mem[_83 + 160]
            mem[t + 192] = bool(mem[_83 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _52 + (224 * _53) + -mem[64] + 64
    mem[64] = (32 * s) + 352
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[var13001] = (32 * s) + 128
    t = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        _120 = mem[64]
        mem[64] = mem[64] + 224
        mem[_120] = stor5[idx + 1].field_0
        mem[_120 + 32] = stor5[idx + 1].field_256
        mem[_120 + 64] = stor5[idx + 1].field_512
        mem[_120 + 96] = stor5[idx + 1].field_768
        mem[_120 + 128] = stor5[idx + 1].field_1024
        mem[_120 + 160] = stor5[idx + 1].field_1280
        mem[_120 + 192] = bool(stor5[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _120
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _107 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _108:
        _122 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_122 + 44 len 20]
        mem[t + 64] = mem[_122 + 64]
        mem[t + 96] = mem[_122 + 108 len 20]
        mem[t + 128] = mem[_122 + 140 len 20]
        mem[t + 160] = mem[_122 + 160]
        mem[t + 192] = bool(mem[_122 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _107 + (224 * _108) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor1:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor1:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 5
            if stor5[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 5
            _66 = mem[64]
            mem[64] = mem[64] + 224
            mem[_66] = stor5[idx + 1].field_0
            mem[_66 + 32] = stor5[idx + 1].field_256
            mem[_66 + 64] = stor5[idx + 1].field_512
            mem[_66 + 96] = stor5[idx + 1].field_768
            mem[_66 + 128] = stor5[idx + 1].field_1024
            mem[_66 + 160] = stor5[idx + 1].field_1280
            mem[_66 + 192] = bool(stor5[idx + 1].field_1536)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _66
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _53 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _53:
            _83 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_83 + 44 len 20]
            mem[t + 64] = mem[_83 + 64]
            mem[t + 96] = mem[_83 + 108 len 20]
            mem[t + 128] = mem[_83 + 140 len 20]
            mem[t + 160] = mem[_83 + 160]
            mem[t + 192] = bool(mem[_83 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _52 + (224 * _53) + -mem[64] + 64
    mem[64] = (32 * s) + 352
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[var13001] = (32 * s) + 128
    t = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 5
        _120 = mem[64]
        mem[64] = mem[64] + 224
        mem[_120] = stor5[idx + 1].field_0
        mem[_120 + 32] = stor5[idx + 1].field_256
        mem[_120 + 64] = stor5[idx + 1].field_512
        mem[_120 + 96] = stor5[idx + 1].field_768
        mem[_120 + 128] = stor5[idx + 1].field_1024
        mem[_120 + 160] = stor5[idx + 1].field_1280
        mem[_120 + 192] = bool(stor5[idx + 1].field_1536)
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _120
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _107 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _108:
        _122 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_122 + 44 len 20]
        mem[t + 64] = mem[_122 + 64]
        mem[t + 96] = mem[_122 + 108 len 20]
        mem[t + 128] = mem[_122 + 140 len 20]
        mem[t + 160] = mem[_122 + 160]
        mem[t + 192] = bool(mem[_122 + 192])
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _107 + (224 * _108) + -mem[64] + 64
}



}
