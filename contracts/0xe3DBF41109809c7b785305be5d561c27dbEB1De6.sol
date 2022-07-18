contract main {




// =====================  Runtime code  =====================


#
#  - sub_da5beb49(?)
#
array of uint256 stor1;
uint256 stor51;
address owner;
uint256 _itemIds;
uint256 _itemsSold;
uint8 saleIsActive; offset 160
uint128 stor153; offset 160
address sub_cb3e1eb8Address;
mapping of struct stor154;
uint256 sub_9e3f4778;
mapping of struct sub_a0eb18f5;

function _itemIds() {
    return _itemIds
}

function _itemsSold() {
    return _itemsSold
}

function owner() {
    return owner
}

function sub_9e3f4778(?) {
    return sub_9e3f4778
}

function sub_a0eb18f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sub_a0eb18f5[arg1].field_0), bool(uint8(sub_a0eb18f5[arg1].field_160))
}

function sub_cb3e1eb8(?) {
    return sub_cb3e1eb8Address
}

function saleIsActive() {
    return bool(saleIsActive)
}

function _fallback() payable {
    revert
}

function reverseSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor153 = Mask(96, 0, not bool(saleIsActive))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1490a174(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Assets cannot be the zero address'
    sub_cb3e1eb8Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_6229938a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Excluded cannot be the zero address'
    idx = 0
    while idx < sub_9e3f4778:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 157
        if address(sub_a0eb18f5[idx + 1].field_0) != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if bool(uint8(sub_a0eb18f5[idx + 1].field_160)) == bool(arg2):
            revert with 0, 'Address is already excluded'
        if idx + 1:
            Mask(96, 0, sub_a0eb18f5[idx + 1].field_160) = Mask(96, 0, bool(arg2))
        else:
            sub_9e3f4778++
            address(sub_a0eb18f5[stor156].field_0) = address(arg1)
            Mask(96, 0, sub_a0eb18f5[stor156].field_160) = Mask(96, 0, bool(arg2))
        emit ExcludeFromFees(bool(arg2), address(arg1));
    if bool(uint8(sub_a0eb18f5[0].field_160)) == bool(arg2):
        revert with 0, 'Address is already excluded'
    sub_9e3f4778++
    address(sub_a0eb18f5[stor156].field_0) = address(arg1)
    Mask(96, 0, sub_a0eb18f5[stor156].field_160) = Mask(96, 0, bool(arg2))
    emit ExcludeFromFees(bool(arg2), address(arg1));
}

function sub_2c166ae3(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    if arg3 <= 0:
        revert with 0, 'Tokens quantity must be at least 1 wei'
    if arg3 > 50:
        revert with 0, 'Tokens quantity to mint max 50'
    _itemIds++
    if bool(stor154[stor151].field_0):
        if bool(stor154[stor151].field_0) == uint255(stor154[stor151].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor154[stor151][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor154[stor151].field_0 = 0
            idx = 0
            while uint255(stor154[stor151].field_1) + 31 / 32 > idx:
                stor154[stor151][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor154[stor151].field_0) == stor154[stor151].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor154[stor151][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor154[stor151].field_0 = 0
            idx = 0
            while stor154[stor151].field_1 % 128 + 31 / 32 > idx:
                stor154[stor151][idx].field_0 = 0
                idx = idx + 1
                continue 
    uint8(stor154[stor151].field_256) = uint8(bool(arg4))
    stor154[stor151].field_512 = _itemIds
    stor154[stor151].field_768 = arg2
    stor154[stor151].field_1024 = arg3
    emit 0xd05d11bd: Array(len=arg1.length, data=arg1[all]), bool(arg4), arg2, arg3, _itemIds
}

function sub_2be9ea17(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < sub_9e3f4778:
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_9e3f4778 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_9e3f4778
    mem[64] = (32 * sub_9e3f4778) + 128
    if not sub_9e3f4778:
        idx = 0
        s = 0
        while idx < sub_9e3f4778:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 157
            _38 = mem[64]
            mem[64] = mem[64] + 64
            mem[_38] = address(sub_a0eb18f5[idx + 1].field_0)
            mem[_38 + 32] = bool(uint8(sub_a0eb18f5[idx + 1].field_160))
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _38
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
            _53 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = bool(mem[_53 + 32])
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _34 + (64 * _35) + -mem[64] + 64
    mem[64] = (32 * sub_9e3f4778) + 192
    mem[(32 * sub_9e3f4778) + 128] = 0
    mem[(32 * sub_9e3f4778) + 160] = 0
    mem[var19001] = (32 * sub_9e3f4778) + 128
    s = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_9e3f4778) + 128] = 0
        mem[(32 * sub_9e3f4778) + 160] = 0
        mem[s + 32] = (32 * sub_9e3f4778) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < sub_9e3f4778:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 157
        _69 = mem[64]
        mem[64] = mem[64] + 64
        mem[_69] = address(sub_a0eb18f5[idx + 1].field_0)
        mem[_69 + 32] = bool(uint8(sub_a0eb18f5[idx + 1].field_160))
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _69
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _66 = mem[64]
    mem[mem[64]] = 32
    _67 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _67:
        _75 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = bool(mem[_75 + 32])
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _66 + (64 * _67) + -mem[64] + 64
}

function sub_e61a70c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor154[arg1].field_0):
            if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor154[arg1].field_1):
                if 31 >= uint255(stor154[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor154[arg1].field_8)
                else:
                    mem[128] = stor154[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor154[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor154[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor154[arg1].field_1 % 128:
                if 31 >= stor154[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor154[arg1].field_8)
                else:
                    mem[128] = stor154[arg1].field_0
                    idx = 128
                    s = 0
                    while stor154[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor154[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor154[arg1].field_1)), data=mem[128 len ceil32(uint255(stor154[arg1].field_1))]), 
               bool(uint8(stor154[arg1].field_256)),
               stor154[arg1].field_512,
               stor154[arg1].field_768,
               stor154[arg1].field_1024
    if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor154[arg1].field_1):
            if 31 >= uint255(stor154[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor154[arg1].field_8)
            else:
                mem[128] = stor154[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor154[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor154[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor154[arg1].field_1 % 128:
            if 31 >= stor154[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor154[arg1].field_8)
            else:
                mem[128] = stor154[arg1].field_0
                idx = 128
                s = 0
                while stor154[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor154[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor154[arg1].field_0 % 128, data=mem[128 len ceil32(stor154[arg1].field_1 % 128)]), 
           bool(uint8(stor154[arg1].field_256)),
           stor154[arg1].field_512,
           stor154[arg1].field_768,
           stor154[arg1].field_1024
}

function buyItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 2
    if bool(saleIsActive) != 1:
        revert with 0, 'Sale is not active'
    if stor154[arg1].field_768 != msg.value:
        revert with 0, 'Incorrect item price'
    if bool(uint8(stor154[arg1].field_256)) != 1:
        revert with 0, 'Market item is disabled'
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        mem[228] = uint255(stor154[arg1].field_1)
        if not bool(stor154[arg1].field_0):
            mem[260] = Mask(248, 8, stor154[arg1].field_0)
            require ext_code.size(sub_cb3e1eb8Address)
            call sub_cb3e1eb8Address.0x5fd05767 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), stor154[arg1].field_1024, 128, msg.value, 2 * Mask(256, -1, uint255(stor154[arg1].field_1)), Mask(248, 8, stor154[arg1].field_0)
        else:
            if bool(stor154[arg1].field_0) != 1:
                require ext_code.size(sub_cb3e1eb8Address)
                call sub_cb3e1eb8Address.0x5fd05767 with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor154[arg1].field_1):
                    mem[idx + 260] = stor154[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_cb3e1eb8Address)
                call sub_cb3e1eb8Address.0x5fd05767 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), stor154[arg1].field_1024, 128, msg.value, 2 * Mask(256, -1, uint255(stor154[arg1].field_1)), mem[260 len ceil32(uint255(stor154[arg1].field_1))]
    else:
        if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[228] = stor154[arg1].field_1 % 128
        if not bool(stor154[arg1].field_0):
            mem[260] = Mask(248, 8, stor154[arg1].field_0)
            require ext_code.size(sub_cb3e1eb8Address)
            call sub_cb3e1eb8Address.0x5fd05767 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), stor154[arg1].field_1024, 128, msg.value, stor154[arg1].field_0 % 128, Mask(248, 8, stor154[arg1].field_0)
        else:
            if bool(stor154[arg1].field_0) != 1:
                require ext_code.size(sub_cb3e1eb8Address)
                call sub_cb3e1eb8Address.0x5fd05767 with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor154[arg1].field_1 % 128:
                    mem[idx + 260] = stor154[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_cb3e1eb8Address)
                call sub_cb3e1eb8Address.0x5fd05767 with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), stor154[arg1].field_1024, 128, msg.value, stor154[arg1].field_0 % 128, mem[260 len ceil32(stor154[arg1].field_1 % 128)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _itemsSold++
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor154[arg1].field_0):
            emit 0xba450307: Array(len=2 * Mask(256, -1, uint255(stor154[arg1].field_1)), data=Mask(248, 8, stor154[arg1].field_0)), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
        else:
            if bool(stor154[arg1].field_0) != 1:
                emit 0xba450307: mem[96 len -96], stor154[arg1].field_512
            else:
                idx = 0
                s = 0
                while idx < uint255(stor154[arg1].field_1):
                    mem[idx + 256] = stor154[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xba450307: Array(len=2 * Mask(256, -1, uint255(stor154[arg1].field_1)), data=mem[256 len ceil32(uint255(stor154[arg1].field_1))]), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
    else:
        if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor154[arg1].field_0):
            emit 0xba450307: Array(len=stor154[arg1].field_0 % 128, data=Mask(248, 8, stor154[arg1].field_0)), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
        else:
            if bool(stor154[arg1].field_0) != 1:
                emit 0xba450307: mem[96 len -96], stor154[arg1].field_512
            else:
                idx = 0
                s = 0
                while idx < stor154[arg1].field_1 % 128:
                    mem[idx + 256] = stor154[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xba450307: Array(len=stor154[arg1].field_0 % 128, data=mem[256 len ceil32(stor154[arg1].field_1 % 128)]), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
    stor51 = 1
}

function sub_78b9c1a7(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(uint8(stor154[arg1].field_256)) == bool(arg2):
        revert with 0, 'Item status is currently same as active param value sended'
    uint8(stor154[arg1].field_256) = uint8(bool(arg2))
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor154[arg1].field_0):
            emit 0x224806c3: Array(len=2 * Mask(256, -1, uint255(stor154[arg1].field_1)), data=Mask(248, 8, stor154[arg1].field_0)), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
        else:
            if bool(stor154[arg1].field_0) != 1:
                emit 0x224806c3: mem[256 len -256], stor154[arg1].field_512
            else:
                idx = 0
                s = 0
                while idx < uint255(stor154[arg1].field_1):
                    mem[idx + 416] = stor154[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x224806c3: Array(len=2 * Mask(256, -1, uint255(stor154[arg1].field_1)), data=mem[416 len ceil32(uint255(stor154[arg1].field_1))]), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
    else:
        if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor154[arg1].field_0):
            emit 0x224806c3: Array(len=stor154[arg1].field_0 % 128, data=Mask(248, 8, stor154[arg1].field_0)), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
        else:
            if bool(stor154[arg1].field_0) != 1:
                emit 0x224806c3: mem[256 len -256], stor154[arg1].field_512
            else:
                idx = 0
                s = 0
                while idx < stor154[arg1].field_1 % 128:
                    mem[idx + 416] = stor154[arg1][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x224806c3: Array(len=stor154[arg1].field_0 % 128, data=mem[416 len ceil32(stor154[arg1].field_1 % 128)]), bool(uint8(stor154[arg1].field_256)), stor154[arg1].field_768, stor154[arg1].field_1024, stor154[arg1].field_512
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor154[arg1].field_0):
            if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor154[arg1].field_1):
                if 31 >= uint255(stor154[arg1].field_1):
                    mem[448] = 256 * Mask(248, 0, stor154[arg1].field_8)
                else:
                    mem[448] = stor154[arg1].field_0
                    idx = 448
                    s = 0
                    while uint255(stor154[arg1].field_1) + 416 > idx:
                        mem[idx + 32] = stor154[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor154[arg1].field_1 % 128:
                if 31 >= stor154[arg1].field_1 % 128:
                    mem[448] = 256 * Mask(248, 0, stor154[arg1].field_8)
                else:
                    mem[448] = stor154[arg1].field_0
                    idx = 448
                    s = 0
                    while stor154[arg1].field_1 % 128 + 416 > idx:
                        mem[idx + 32] = stor154[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, 160, 
               bool(uint8(stor154[arg1].field_256)),
               stor154[arg1].field_512,
               stor154[arg1].field_768,
               stor154[arg1].field_1024,
               2 * Mask(256, -1, uint255(stor154[arg1].field_1)),
               mem[448 len ceil32(uint255(stor154[arg1].field_1))]
    if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor154[arg1].field_0):
        if bool(stor154[arg1].field_0) == uint255(stor154[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor154[arg1].field_1):
            if 31 >= uint255(stor154[arg1].field_1):
                mem[448] = 256 * Mask(248, 0, stor154[arg1].field_8)
            else:
                mem[448] = stor154[arg1].field_0
                idx = 448
                s = 0
                while uint255(stor154[arg1].field_1) + 416 > idx:
                    mem[idx + 32] = stor154[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor154[arg1].field_0) == stor154[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor154[arg1].field_1 % 128:
            if 31 >= stor154[arg1].field_1 % 128:
                mem[448] = 256 * Mask(248, 0, stor154[arg1].field_8)
            else:
                mem[448] = stor154[arg1].field_0
                idx = 448
                s = 0
                while stor154[arg1].field_1 % 128 + 416 > idx:
                    mem[idx + 32] = stor154[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, 160, 
           bool(uint8(stor154[arg1].field_256)),
           stor154[arg1].field_512,
           stor154[arg1].field_768,
           stor154[arg1].field_1024,
           stor154[arg1].field_0 % 128,
           mem[448 len ceil32(stor154[arg1].field_1 % 128)]
}

function sub_9ec46018(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if stor51 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 2
    idx = 0
    while idx < sub_9e3f4778:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 157
        if address(sub_a0eb18f5[idx + 1].field_0) != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx + 1 <= 0:
            revert with 0, 'Account not exist'
        if address(sub_a0eb18f5[idx + 1].field_0) != msg.sender:
            revert with 0, 'Account not allowed or excluded from mint'
        if bool(uint8(sub_a0eb18f5[idx + 1].field_160)) != 1:
            revert with 0, 'Account not allowed or excluded from mint'
        if cd[68] <= 0:
            revert with 0, 'Quantity must be greater than zero'
        if ('cd', 4).length <= 0:
            revert with 0, 'Addresses array empty'
        if ('cd', 4).length > 100:
            revert with 0, 'Addresses array length exceed max (100)'
        if bool(uint8(stor154[cd[36]].field_256)) != 1:
            revert with 0, 'Market item is disabled'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'Address zero detected'
            s = 0
            while s < cd[68]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _197 = mem[(32 * idx) + 128]
                mem[0] = cd[36]
                mem[32] = 154
                mem[mem[64]] = 0x5fd0576700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_197)
                mem[mem[64] + 36] = stor154[cd[36]].field_1024
                mem[mem[64] + 68] = 128
                if bool(stor154[cd[36]].field_0):
                    if bool(stor154[cd[36]].field_0) == uint255(stor154[cd[36]].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[mem[64] + 132] = uint255(stor154[cd[36]].field_1)
                    if not bool(stor154[cd[36]].field_0):
                        mem[mem[64] + 164] = Mask(248, 8, stor154[cd[36]].field_0)
                        mem[mem[64] + 100] = 0
                        require ext_code.size(sub_cb3e1eb8Address)
                        call sub_cb3e1eb8Address.0x5fd05767 with:
                             gas gas_remaining wei
                            args address(_197), stor154[cd[36]].field_1024, 128, 0, 2 * Mask(256, -1, uint255(stor154[cd[36]].field_1)), Mask(248, 8, stor154[cd[36]].field_0)
                    else:
                        if bool(stor154[cd[36]].field_0) != 1:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_cb3e1eb8Address)
                            call sub_cb3e1eb8Address.0x5fd05767 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[0] = sha3(cd[36], 154)
                            idx = 0
                            t = sha3(sha3(cd[36], 154))
                            while idx < uint255(stor154[cd[36]].field_1):
                                mem[mem[64] + idx + 164] = stor[t]
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_cb3e1eb8Address)
                            call sub_cb3e1eb8Address.0x5fd05767 with:
                                 gas gas_remaining wei
                                args address(_197), stor154[cd[36]].field_1024, 128, 0, 2 * Mask(256, -1, uint255(stor154[cd[36]].field_1)), mem[mem[64] + 164 len ceil32(uint255(stor154[cd[36]].field_1))]
                else:
                    if bool(stor154[cd[36]].field_0) == stor154[cd[36]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[mem[64] + 132] = stor154[cd[36]].field_1 % 128
                    if not bool(stor154[cd[36]].field_0):
                        mem[mem[64] + 164] = Mask(248, 8, stor154[cd[36]].field_0)
                        mem[mem[64] + 100] = 0
                        require ext_code.size(sub_cb3e1eb8Address)
                        call sub_cb3e1eb8Address.0x5fd05767 with:
                             gas gas_remaining wei
                            args address(_197), stor154[cd[36]].field_1024, 128, 0, stor154[cd[36]].field_0 % 128, Mask(248, 8, stor154[cd[36]].field_0)
                    else:
                        if bool(stor154[cd[36]].field_0) != 1:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_cb3e1eb8Address)
                            call sub_cb3e1eb8Address.0x5fd05767 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[0] = sha3(cd[36], 154)
                            idx = 0
                            t = sha3(sha3(cd[36], 154))
                            while idx < stor154[cd[36]].field_1 % 128:
                                mem[mem[64] + idx + 164] = stor[t]
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = 0
                            require ext_code.size(sub_cb3e1eb8Address)
                            call sub_cb3e1eb8Address.0x5fd05767 with:
                                 gas gas_remaining wei
                                args address(_197), stor154[cd[36]].field_1024, 128, 0, stor154[cd[36]].field_0 % 128, mem[mem[64] + 164 len ceil32(stor154[cd[36]].field_1 % 128)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[32] = 154
        mem[mem[64]] = 128
        if bool(stor154[cd[36]].field_0):
            if bool(stor154[cd[36]].field_0) == uint255(stor154[cd[36]].field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor154[cd[36]].field_0):
                emit 0x997e5d95: Array(len=2 * Mask(256, -1, uint255(stor154[cd[36]].field_1)), data=Mask(248, 8, stor154[cd[36]].field_0)), bool(uint8(stor154[cd[36]].field_256)), stor154[cd[36]].field_768, stor154[cd[36]].field_1024, stor154[cd[36]].field_512
            else:
                if bool(stor154[cd[36]].field_0) != 1:
                    mem[mem[64] + 64] = stor154[cd[36]].field_768
                    mem[mem[64] + 96] = stor154[cd[36]].field_1024
                    emit 0x997e5d95: mem[mem[64] len -mem[64]], stor154[cd[36]].field_512
                else:
                    idx = 0
                    s = sha3(sha3(cd[36], 154))
                    while idx < uint255(stor154[cd[36]].field_1):
                        mem[mem[64] + idx + 160] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[mem[64] + 64] = stor154[cd[36]].field_768
                    mem[mem[64] + 96] = stor154[cd[36]].field_1024
                    emit 0x997e5d95: Array(len=2 * Mask(256, -1, uint255(stor154[cd[36]].field_1)), data=mem[mem[64] + 160 len ceil32(uint255(stor154[cd[36]].field_1))]), bool(uint8(stor154[cd[36]].field_256)), stor154[cd[36]].field_768, stor154[cd[36]].field_1024, stor154[cd[36]].field_512
        else:
            if bool(stor154[cd[36]].field_0) == stor154[cd[36]].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor154[cd[36]].field_0):
                emit 0x997e5d95: Array(len=stor154[cd[36]].field_0 % 128, data=Mask(248, 8, stor154[cd[36]].field_0)), bool(uint8(stor154[cd[36]].field_256)), stor154[cd[36]].field_768, stor154[cd[36]].field_1024, stor154[cd[36]].field_512
            else:
                if bool(stor154[cd[36]].field_0) != 1:
                    mem[mem[64] + 64] = stor154[cd[36]].field_768
                    mem[mem[64] + 96] = stor154[cd[36]].field_1024
                    emit 0x997e5d95: mem[mem[64] len -mem[64]], stor154[cd[36]].field_512
                else:
                    idx = 0
                    s = sha3(sha3(cd[36], 154))
                    while idx < stor154[cd[36]].field_1 % 128:
                        mem[mem[64] + idx + 160] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[mem[64] + 64] = stor154[cd[36]].field_768
                    mem[mem[64] + 96] = stor154[cd[36]].field_1024
                    emit 0x997e5d95: Array(len=stor154[cd[36]].field_0 % 128, data=mem[mem[64] + 160 len ceil32(stor154[cd[36]].field_1 % 128)]), bool(uint8(stor154[cd[36]].field_256)), stor154[cd[36]].field_768, stor154[cd[36]].field_1024, stor154[cd[36]].field_512
        stor51 = 1
    revert with 0, 'Account not exist'
}

function fetchMarketItems() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < sub_9e3f4778:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 157
        if address(sub_a0eb18f5[idx + 1].field_0) != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx + 1 <= 0:
            revert with 0, 'Account not exist'
        if address(sub_a0eb18f5[idx + 1].field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account not allowed or excluded from mint'
        mem[0] = idx + 1
        mem[32] = 157
        if bool(uint8(sub_a0eb18f5[idx + 1].field_160)) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account not allowed or excluded from mint'
        idx = 0
        s = 0
        while idx < _itemIds:
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if _itemIds > test266151307():
            revert with 'NH{q', 65
        mem[96] = _itemIds
        mem[64] = (32 * _itemIds) + 128
        if not _itemIds:
            idx = 0
            s = 0
            while idx < _itemIds:
                if idx > -2:
                    revert with 'NH{q', 17
                mem[0] = idx + 1
                mem[32] = 154
                _170 = mem[64]
                mem[64] = mem[64] + 160
                if bool(stor154[idx + 1].field_0):
                    if bool(stor154[idx + 1].field_0) == uint255(stor154[idx + 1].field_1) < 32:
                        revert with 'NH{q', 34
                    _173 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor154[idx + 1].field_1)) + 32
                    mem[_173] = uint255(stor154[idx + 1].field_1)
                    if bool(stor154[idx + 1].field_0):
                        if bool(stor154[idx + 1].field_0) == uint255(stor154[idx + 1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor154[idx + 1].field_1):
                            if 31 >= uint255(stor154[idx + 1].field_1):
                                mem[_173 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_173 + 32] = stor154[idx + 1].field_0
                                t = _173 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _173 + uint255(stor154[idx + 1].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if bool(stor154[idx + 1].field_0) == stor154[idx + 1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor154[idx + 1].field_1 % 128:
                            if 31 >= stor154[idx + 1].field_1 % 128:
                                mem[_173 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_173 + 32] = stor154[idx + 1].field_0
                                t = _173 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _173 + stor154[idx + 1].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_170] = _173
                else:
                    if bool(stor154[idx + 1].field_0) == stor154[idx + 1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    _174 = mem[64]
                    mem[64] = mem[64] + ceil32(stor154[idx + 1].field_1 % 128) + 32
                    mem[_174] = stor154[idx + 1].field_1 % 128
                    if bool(stor154[idx + 1].field_0):
                        if bool(stor154[idx + 1].field_0) == uint255(stor154[idx + 1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor154[idx + 1].field_1):
                            if 31 >= uint255(stor154[idx + 1].field_1):
                                mem[_174 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_174 + 32] = stor154[idx + 1].field_0
                                t = _174 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _174 + uint255(stor154[idx + 1].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if bool(stor154[idx + 1].field_0) == stor154[idx + 1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor154[idx + 1].field_1 % 128:
                            if 31 >= stor154[idx + 1].field_1 % 128:
                                mem[_174 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_174 + 32] = stor154[idx + 1].field_0
                                t = _174 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _174 + stor154[idx + 1].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_170] = _174
                mem[_170 + 32] = bool(uint8(stor154[idx + 1].field_256))
                mem[_170 + 64] = stor154[idx + 1].field_512
                mem[_170 + 96] = stor154[idx + 1].field_768
                mem[_170 + 128] = stor154[idx + 1].field_1024
                if s >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + 128] = _170
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _166 = mem[64]
            mem[mem[64]] = 32
            _167 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _167:
                mem[u] = t + -_166 - 64
                _237 = mem[s]
                _243 = mem[mem[s]]
                mem[t] = 160
                _244 = mem[_243]
                mem[t + 160] = mem[_243]
                v = 0
                while v < _244:
                    mem[t + v + 192] = mem[_243 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_244) > _244:
                    mem[t + _244 + 192] = 0
                mem[t + 32] = bool(mem[_237 + 32])
                mem[t + 64] = mem[_237 + 64]
                mem[t + 96] = mem[_237 + 96]
                mem[t + 128] = mem[_237 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_244) + 192
                u = u + 32
                continue 
        else:
            mem[64] = (32 * _itemIds) + 288
            mem[(32 * _itemIds) + 128] = 96
            mem[(32 * _itemIds) + 160] = 0
            mem[(32 * _itemIds) + 192] = 0
            mem[(32 * _itemIds) + 224] = 0
            mem[(32 * _itemIds) + 256] = 0
            mem[var34001] = (32 * _itemIds) + 128
            s = var34001
            idx = var34002
            while idx - 1:
                mem[64] = mem[64] + 160
                mem[(32 * _itemIds) + 128] = 96
                mem[(32 * _itemIds) + 160] = 0
                mem[(32 * _itemIds) + 192] = 0
                mem[(32 * _itemIds) + 224] = 0
                mem[(32 * _itemIds) + 256] = 0
                mem[s + 32] = (32 * _itemIds) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0
            while idx < _itemIds:
                if idx > -2:
                    revert with 'NH{q', 17
                mem[0] = idx + 1
                mem[32] = 154
                _295 = mem[64]
                mem[64] = mem[64] + 160
                if bool(stor154[idx + 1].field_0):
                    if bool(stor154[idx + 1].field_0) == uint255(stor154[idx + 1].field_1) < 32:
                        revert with 'NH{q', 34
                    _299 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor154[idx + 1].field_1)) + 32
                    mem[_299] = uint255(stor154[idx + 1].field_1)
                    if bool(stor154[idx + 1].field_0):
                        if bool(stor154[idx + 1].field_0) == uint255(stor154[idx + 1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor154[idx + 1].field_1):
                            if 31 >= uint255(stor154[idx + 1].field_1):
                                mem[_299 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_299 + 32] = stor154[idx + 1].field_0
                                t = _299 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _299 + uint255(stor154[idx + 1].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if bool(stor154[idx + 1].field_0) == stor154[idx + 1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor154[idx + 1].field_1 % 128:
                            if 31 >= stor154[idx + 1].field_1 % 128:
                                mem[_299 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_299 + 32] = stor154[idx + 1].field_0
                                t = _299 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _299 + stor154[idx + 1].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_295] = _299
                else:
                    if bool(stor154[idx + 1].field_0) == stor154[idx + 1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(stor154[idx + 1].field_1 % 128) + 32
                    mem[_300] = stor154[idx + 1].field_1 % 128
                    if bool(stor154[idx + 1].field_0):
                        if bool(stor154[idx + 1].field_0) == uint255(stor154[idx + 1].field_1) < 32:
                            revert with 'NH{q', 34
                        if uint255(stor154[idx + 1].field_1):
                            if 31 >= uint255(stor154[idx + 1].field_1):
                                mem[_300 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_300 + 32] = stor154[idx + 1].field_0
                                t = _300 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _300 + uint255(stor154[idx + 1].field_1) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    else:
                        if bool(stor154[idx + 1].field_0) == stor154[idx + 1].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if stor154[idx + 1].field_1 % 128:
                            if 31 >= stor154[idx + 1].field_1 % 128:
                                mem[_300 + 32] = 256 * Mask(248, 0, stor154[idx + 1].field_8)
                            else:
                                mem[0] = sha3(idx + 1, 154)
                                mem[_300 + 32] = stor154[idx + 1].field_0
                                t = _300 + 32
                                u = sha3(sha3(idx + 1, 154))
                                while _300 + stor154[idx + 1].field_1 % 128 > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                    mem[_295] = _300
                mem[_295 + 32] = bool(uint8(stor154[idx + 1].field_256))
                mem[_295 + 64] = stor154[idx + 1].field_512
                mem[_295 + 96] = stor154[idx + 1].field_768
                mem[_295 + 128] = stor154[idx + 1].field_1024
                if s >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * s) + 128] = _295
                if s > -2:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _290 = mem[64]
            mem[mem[64]] = 32
            _291 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _291:
                mem[u] = t + -_290 - 64
                _333 = mem[s]
                _339 = mem[mem[s]]
                mem[t] = 160
                _340 = mem[_339]
                mem[t + 160] = mem[_339]
                v = 0
                while v < _340:
                    mem[t + v + 192] = mem[_339 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_340) > _340:
                    mem[t + _340 + 192] = 0
                mem[t + 32] = bool(mem[_333 + 32])
                mem[t + 64] = mem[_333 + 64]
                mem[t + 96] = mem[_333 + 96]
                mem[t + 128] = mem[_333 + 128]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_340) + 192
                u = u + 32
                continue 
        return memory
          from mem[64]
           len t - mem[64]
    revert with 0, 'Account not exist'
}



}
