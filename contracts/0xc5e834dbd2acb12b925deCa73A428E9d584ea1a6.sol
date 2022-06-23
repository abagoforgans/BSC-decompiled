contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;
mapping of address stor2;

function _fallback() payable {
    revert
}

function addVerifiedUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only verified user can call this function'
    if stor1[address(arg1)]:
        revert with 0, 'User exist'
    stor1[address(arg1)] = 1
    stor2[stor0] = arg1
    if stor0 == -1:
        revert with 0, 17
    stor0++
    return 1
}

function getCash(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only verified user can call this function'
    if not eth.balance(this.address):
        revert with 0, 'No cash'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getVerifiedUsers() {
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only verified user can call this function'
    if stor0 > test266151307():
        revert with 0, 65
    mem[96] = stor0
    mem[64] = (32 * stor0) + 128
    if stor0:
        mem[128 len 32 * stor0] = call.data[calldata.size len 32 * stor0]
    idx = 0
    while idx < stor0:
        mem[0] = idx
        mem[32] = 2
        if idx >= stor0:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor2[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor0) + 128] = 32
    mem[(32 * stor0) + 160] = stor0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0) + -mem[64] + 192
}

function sub_0044206f(?) payable {
    require calldata.size - 4 >= 96
    emit 0x2e3c50f6: arg1, arg2, arg3, block.timestamp, block.gas_limit, block.number, sha3(block.coinbase)
    if not stor1[msg.sender]:
        revert with 0, 'Only verified user can call this function'
    if not block.number:
        revert with 0, 18
    if arg2 > !(block.timestamp / block.number):
        revert with 0, 17
    if arg2 + (block.timestamp / block.number) > !block.timestamp:
        revert with 0, 17
    if 1 > !arg2:
        revert with 0, 17
    if arg2 + 1 > !block.timestamp:
        revert with 0, 17
    if block.timestamp / 2 > !arg2:
        revert with 0, 17
    if (block.timestamp / 2) + arg2 > !arg3:
        revert with 0, 17
    if 1 > !((block.timestamp / 2) + arg2 + arg3 % 100000):
        revert with 0, 17
    if not block.gas_limit:
        revert with 0, 18
    if arg3 / block.gas_limit > !(arg3 % 10000):
        revert with 0, 17
    if 1 > !((arg3 / block.gas_limit) + (arg3 % 10000)):
        revert with 0, 17
    if arg3 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if block.number > !(2 * arg3):
        revert with 0, 17
    if 2 > !(block.number + (2 * arg3)):
        revert with 0, 17
    if block.number + (2 * arg3) + 2 > !arg2:
        revert with 0, 17
    if 1 > !(block.number + (2 * arg3) + arg2 + 2 % 100000):
        revert with 0, 17
    if 1 > !(sha3(arg2 + block.timestamp + 1) % 100):
        revert with 0, 17
    if 1 > !(sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 1000):
        revert with 0, 17
    if 1 > !(sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 100):
        revert with 0, 17
    if (sha3(arg2 + block.timestamp + 1) % 100) + 1 > 50:
        if (sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 1000) + 1 <= 500:
            if (sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 100) + 1 > 50:
                emit 0xfe68b07b: 44
            else:
                emit 0xfe68b07b: 33
        else:
            if (sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 100) + 1 > 50:
                emit 0xfe68b07b: 22
            else:
                emit 0xfe68b07b: 11
        emit info(7);
        return 0
    if (sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 1000) + 1 <= 500:
        if (sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 100) + 1 <= 50:
            emit 0xfe68b07b: 77
            emit info(7);
            return 0
        emit 0xfe68b07b: 88
        if not (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1:
            revert with 0, 18
        if arg3 > !((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1):
            revert with 0, 17
        if not sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)):
            emit info(7);
            return 0
        if 1 > !(sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6):
            revert with 0, 17
        emit 0x3c546bca: (sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1, (sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1, sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)), arg1
        if (sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1:
            emit info(8);
            if eth.balance(this.address):
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if 1 > !(sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6):
            revert with 0, 17
        emit 0x27c4a701: (sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1, (sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1
        return ((sha3(arg3 + ((arg3 / block.gas_limit) + (arg3 % 10000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1)
    if (sha3(arg2 + (block.timestamp / block.number) + block.timestamp) % 100) + 1 <= 50:
        emit 0xfe68b07b: 55
        emit info(7);
        return 0
    emit 0xfe68b07b: 6
    if not (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1:
        revert with 0, 18
    if arg3 > !(((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1):
        revert with 0, 17
    if not sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)):
        emit info(7);
        return 0
    if 1 > !(sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6):
        revert with 0, 17
    emit 0x3c546bca: (sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1, (sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1, sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)), arg1
    if (sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1:
        emit info(8);
        if eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if 1 > !(sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6):
        revert with 0, 17
    emit 0x27c4a701: (sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1, (sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1
    return ((sha3(arg3 + (((block.timestamp / 2) + arg2 + arg3 % 100000) + 1 / (block.number + (2 * arg3) + arg2 + 2 % 100000) + 1)) % 6) + 1 == arg1)
}



}
