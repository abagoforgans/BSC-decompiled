contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
address owner;
array of struct stor151;
address sub_54a03b94Address;

function sub_54a03b94(?) payable {
    return sub_54a03b94Address
}

function owner() payable {
    return owner
}

function transactionsSize() payable {
    return stor151.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTransactionEnabled(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor151.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'index must be in range of stored tx list'
    uint8(stor151[arg1].field_0) = uint8(arg2)
}

function addTransaction(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor151.length++
    uint8(stor151[stor151.length].field_0) = 1
    address(stor151[stor151.length].field_8) = arg1
    Mask(88, 0, stor151[stor151.length].field_168) = 0
    stor[sha3((2 * stor151.length) + ('name', 'stor151', 151) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor151.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'stor151', 151) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'stor151', 151) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'stor151', 151) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(stor151[arg1].field_0)), 
           address(stor151[arg1].field_0),
           Array(len=stor[(2 * arg1) + ('name', 'stor151', 151) + 1].length, data=mem[128 len ceil32(stor[(2 * arg1) + ('name', 'stor151', 151) + 1].length)])
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
    sub_54a03b94Address = arg1
}

function rebase() payable {
    mem[64] = 96
    require tx.origin == msg.sender
    mem[96] = 0xaf14052c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_54a03b94Address)
    call sub_54a03b94Address.0xaf14052c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < stor151.length:
        mem[0] = 151
        if not uint8(stor151[idx].field_0):
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'stor151', 151) + 1].length) + 32
        mem[_46] = stor[(2 * idx) + ('name', 'stor151', 151) + 1].length
        mem[0] = (2 * idx) + sha3(151) + 1
        mem[_46 + 32] = stor[sha3((2 * idx) + ('name', 'stor151', 151) + 1)].field_0
        s = _46 + 32
        t = sha3(mem[0])
        while _46 + stor[(2 * idx) + ('name', 'stor151', 151) + 1].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        call address(stor151[idx].field_8).mem[_46 + 32 len 4] with:
             gas gas_remaining - 34710 wei
            args mem[_46 + 36 len mem[_46] - 4]
        if ext_call.success:
            idx = idx + 1
            continue 
        _94 = mem[64]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = 64
        if not bool(stor151[idx].field_256):
            emit TransactionFailed(idx, Array(len=stor151[idx].field_256 % 128, data=Mask(248, 8, stor151[idx].field_256)), address(stor151[idx].field_8));
        else:
            if bool(stor151[idx].field_256) != 1:
                emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                       mem[mem[64] len -mem[64]],
                                       address(stor151[idx].field_8),
            else:
                mem[mem[64] + 64] = uint255(stor151[idx].field_257)
                s = 0
                t = sha3((2 * idx) + sha3(151) + 1)
                while s < uint255(stor151[idx].field_257):
                    mem[s + mem[64] + 96] = stor[t]
                    s = s + 32
                    t = t + 1
                    continue 
                emit TransactionFailed(address rg1, uint256 rg2, bytes rg3):
                                       mem[mem[64] len s + _94 + -mem[64] + 96],
                                       address(stor151[idx].field_8),
        revert with 0, 'Transaction Failed'
}

function removeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor151.length:
        revert with 0, 'index out of bounds'
    if arg1 >= stor151.length - 1:
        if stor151.length - 1 < stor151.length:
    else:
        if stor151.length - 1 < stor151.length:
            if arg1 < stor151.length:
                uint8(stor151[arg1].field_0) = uint8(bool(uint8(stor151[stor151.length - 1].field_0)))
                uint8(stor151[arg1].field_0) = uint8(bool(uint8(stor151[stor151.length - 1].field_0)))
                Mask(248, 0, stor151[arg1].field_8) = address(stor151[stor151.length - 1].field_8)
                Mask(88, 0, stor151[arg1].field_168) = Mask(88, 168, bool(uint8(stor151[stor151.length - 1].field_0))) >> 168
                if 31 >= stor[(2 * stor151.length - 1) + ('name', 'stor151', 151) + 1].length:
                    stor151[arg1].field_256 = stor151[stor151.length - 1].field_256
                    idx = 0
                    while stor[('name', 'stor151', 151) + (2 * arg1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3(('name', 'stor151', 151) + (2 * arg1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor151[arg1].field_256 = Mask(255, 1, stor151[stor151.length - 1].field_256 and (256 * not bool(stor151[stor151.length - 1].field_256)) - 1) + 1
                    if not Mask(255, 1, stor151[stor151.length - 1].field_256 and (256 * not bool(stor151[stor151.length - 1].field_256)) - 1):
                        idx = 0
                        while stor[('name', 'stor151', 151) + (2 * arg1) + 1].length + 31 / 32 > idx:
                            stor[idx + sha3(('name', 'stor151', 151) + (2 * arg1) + 1)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor[(2 * stor151.length - 1) + ('name', 'stor151', 151) + 1].length + 31 / 32 > idx:
                            stor[s + sha3(('name', 'stor151', 151) + (2 * arg1) + 1)].field_0 = stor[idx + sha3((2 * stor151.length - 1) + ('name', 'stor151', 151) + 1)].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor[(2 * stor151.length - 1) + ('name', 'stor151', 151) + 1].length + 31 / 32
                        while stor[('name', 'stor151', 151) + (2 * arg1) + 1].length + 31 / 32 > idx:
                            stor[idx + sha3(('name', 'stor151', 151) + (2 * arg1) + 1)].field_0 = 0
                            idx = idx + 1
                            continue 
                if stor151.length - 1 < stor151.length:
    revert
}



}
