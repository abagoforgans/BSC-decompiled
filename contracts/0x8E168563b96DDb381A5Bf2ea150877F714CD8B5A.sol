contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint8 stor5;
mapping of struct sub_e136ef76;
array of struct stor7;

function sub_2795f762(?) {
    return stor4.length
}

function sub_50dae4a0(?) {
    return uint8(stor3.length)
}

function sub_e136ef76(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 17
    if sub_e136ef76[arg1 - 1].field_1952 > 1:
        revert with 0, 33
    if sub_e136ef76[arg1 - 1].field_1952 >= 2:
        revert with 0, 33
    return sub_e136ef76[arg1 - 1].field_0, 
           sub_e136ef76[arg1 - 1].field_256,
           sub_e136ef76[arg1 - 1].field_512,
           sub_e136ef76[arg1 - 1].field_768,
           sub_e136ef76[arg1 - 1].field_1024,
           sub_e136ef76[arg1 - 1].field_1280,
           sub_e136ef76[arg1 - 1].field_1536,
           sub_e136ef76[arg1 - 1].field_1792,
           sub_e136ef76[arg1 - 1].field_1952
}

function sub_ef9b8f7e(?) {
    return stor5.length
}

function _fallback() payable {
    revert
}

function FundsInject() payable {
    emit InjectFunds(msg.sender);
}

function sub_b858fc68(?) {
    return uint8(stor3.length), stor4.length, stor5.length
}

function sub_1ad89c44(?) {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return uint8(stor3.length), stor4.length, stor5.length, stor1.length, stor2.length, stor0
}

function sub_56ed0323(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    stor5.length = arg1
    emit 0xa6e374d9: arg1
}

function sub_ea9b8728(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    stor4.length = arg1
    emit 0xa3b2eca4: arg1
}

function sub_9d507a69(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    uint8(stor1.length) = uint8(arg1)
    stor1.length.field_8 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    stor0 = arg1
    emit OwnershipTransferred(stor0, arg1);
}

function sub_ae64c217(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    uint8(stor3.length) = uint8(arg1)
    emit 0xf341791e: uint8(arg1)
}

function WithdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    if eth.balance(this.address) < arg2:
        revert with 0, 'insufficient contract balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xefed6b8d: address(arg1), arg2
}

function sub_beb45a36(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 17
    if sub_e136ef76[arg1 - 1].field_1792 != msg.sender:
        return 0
    if arg1 < 1:
        revert with 0, 17
    if sub_e136ef76[arg1 - 1].field_1952 > 1:
        revert with 0, 33
    if sub_e136ef76[arg1 - 1].field_1952 >= 2:
        revert with 0, 33
    return sub_e136ef76[arg1 - 1].field_0, 
           sub_e136ef76[arg1 - 1].field_256,
           sub_e136ef76[arg1 - 1].field_512,
           sub_e136ef76[arg1 - 1].field_768,
           sub_e136ef76[arg1 - 1].field_1024,
           sub_e136ef76[arg1 - 1].field_1280,
           sub_e136ef76[arg1 - 1].field_1536,
           sub_e136ef76[arg1 - 1].field_1792,
           sub_e136ef76[arg1 - 1].field_1952
}

function sub_78ab3629(?) payable {
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    if msg.value < stor4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spin amount must be greater than minimum amount'
    if msg.value > stor5.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spin amount must be less than maximum amount'
    if stor7[address(msg.sender)].field_0:
        mem[128] = stor7[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * stor7[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = stor7[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor7[address(msg.sender)].field_0:
        if idx >= stor7[address(msg.sender)].field_0:
            revert with 0, 50
        if mem[(32 * idx) + 128] < 1:
            revert with 0, 17
        mem[0] = mem[(32 * idx) + 128] - 1
        mem[32] = 6
        if sub_e136ef76[mem[(32 * idx) + 128] - 1].field_1952 > 1:
            revert with 0, 33
        if not sub_e136ef76[mem[(32 * idx) + 128] - 1].field_1952:
            revert with 0, 'You already purchase a spin'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.value / 100 and stor1.length > -1 / msg.value / 100:
        revert with 0, 17
    if msg.value < msg.value / 100 * stor1.length:
        revert with 0, 17
    if msg.value - (msg.value / 100 * stor1.length) and uint8(stor3.length) > -1 / msg.value - (msg.value / 100 * stor1.length):
        revert with 0, 17
    if eth.balance(this.address) <= (msg.value * uint8(stor3.length)) - (msg.value / 100 * stor1.length * uint8(stor3.length)):
        revert with 0, 'Spin prize is bigger than contract balance, try small amount'
    if stor2.length == -1:
        revert with 0, 17
    stor2.length++
    if stor2.length < 1:
        revert with 0, 17
    sub_e136ef76[stor2.length - 1].field_0 = stor2.length
    sub_e136ef76[stor2.length - 1].field_256 = msg.value
    sub_e136ef76[stor2.length - 1].field_512 = block.timestamp
    sub_e136ef76[stor2.length - 1].field_768 = 0
    sub_e136ef76[stor2.length - 1].field_1024 = stor1.length
    sub_e136ef76[stor2.length - 1].field_1280 = uint8(stor3.length)
    sub_e136ef76[stor2.length - 1].field_1536 = 0
    sub_e136ef76[stor2.length - 1].field_1792 = msg.sender
    sub_e136ef76[stor2.length - 1].field_1792 = msg.sender
    sub_e136ef76[stor2.length - 1].field_1952 = 0
    sub_e136ef76[stor2.length - 1].field_2048 = 0
    stor7[msg.sender].field_0++
    stor7[msg.sender][stor7[msg.sender].field_0].field_0 = stor2.length
    emit 0x7441e490: stor2.length, msg.sender, msg.value, block.timestamp, uint8(stor3.length)
}

function sub_fb08f53e(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    if arg2 < 1:
        revert with 0, 17
    if sub_e136ef76[arg2 - 1].field_1952 > 1:
        revert with 0, 33
    if sub_e136ef76[arg2 - 1].field_1952 > 1:
        revert with 0, 33
    if sub_e136ef76[arg2 - 1].field_1952:
        revert with 0, 'Spin is spinned before'
    if address(arg3) != sub_e136ef76[arg2 - 1].field_1792:
        revert with 0, 'Spin belongs to other user'
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    if block.number < 1:
        revert with 0, 17
    if 1000 > !(sha3(arg1, block.number, block.coinbase, block.gas_limit, block.timestamp, block.hash(block.number - 1)) % 1000):
        revert with 0, 17
    if arg2 < 1:
        revert with 0, 17
    sub_e136ef76[arg2 - 1].field_768 = block.timestamp
    sub_e136ef76[arg2 - 1].field_1536 = (sha3(arg1, block.number, block.coinbase, block.gas_limit, block.timestamp, block.hash(block.number - 1)) % 1000) + 1000
    sub_e136ef76[arg2 - 1].field_1952 = 1
    if 1666 == (sha3(arg1, block.number, block.coinbase, block.gas_limit, block.timestamp, block.hash(block.number - 1)) % 1000) + 1000:
        if sub_e136ef76[arg2 - 1].field_256 / 100 and stor1.length > -1 / sub_e136ef76[arg2 - 1].field_256 / 100:
            revert with 0, 17
        if sub_e136ef76[arg2 - 1].field_256 < sub_e136ef76[arg2 - 1].field_256 / 100 * stor1.length:
            revert with 0, 17
        if sub_e136ef76[arg2 - 1].field_256 - (sub_e136ef76[arg2 - 1].field_256 / 100 * stor1.length) and uint8(stor3.length) > -1 / sub_e136ef76[arg2 - 1].field_256 - (sub_e136ef76[arg2 - 1].field_256 / 100 * stor1.length):
            revert with 0, 17
        if stor0 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if tx.origin != msg.sender:
            revert with 0, 'Contract not allowed'
        if eth.balance(this.address) < (sub_e136ef76[arg2 - 1].field_256 * uint8(stor3.length)) - (sub_e136ef76[arg2 - 1].field_256 / 100 * stor1.length * uint8(stor3.length)):
            revert with 0, 'insufficient contract balance'
        call sub_e136ef76[arg2 - 1].field_1792 with:
           value (sub_e136ef76[arg2 - 1].field_256 * uint8(stor3.length)) - (sub_e136ef76[arg2 - 1].field_256 / 100 * stor1.length * uint8(stor3.length)) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xefed6b8d: sub_e136ef76[arg2 - 1].field_1792, (sub_e136ef76[arg2 - 1].field_256 * uint8(stor3.length)) - (sub_e136ef76[arg2 - 1].field_256 / 100 * stor1.length * uint8(stor3.length))
    emit 0x3079f931: sub_e136ef76[arg2 - 1].field_0, sub_e136ef76[arg2 - 1].field_1792, sub_e136ef76[arg2 - 1].field_256, (sha3(arg1, block.number, block.coinbase, block.gas_limit, block.timestamp, block.hash(block.number - 1)) % 1000) + 1000, block.timestamp, sub_e136ef76[arg2 - 1].field_1280
    return ((sha3(arg1, block.number, block.coinbase, block.gas_limit, block.timestamp, block.hash(block.number - 1)) % 1000) + 1000)
}

function sub_2d39e7bf(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[0] = msg.sender
    mem[32] = 7
    mem[384] = stor7[msg.sender].field_0
    if not stor7[msg.sender].field_0:
        mem[64] = (32 * stor7[msg.sender].field_0) + 704
        mem[(32 * stor7[msg.sender].field_0) + 416] = 0
        mem[(32 * stor7[msg.sender].field_0) + 448] = 0
        mem[(32 * stor7[msg.sender].field_0) + 480] = 0
        mem[(32 * stor7[msg.sender].field_0) + 512] = 0
        mem[(32 * stor7[msg.sender].field_0) + 544] = 0
        mem[(32 * stor7[msg.sender].field_0) + 576] = 0
        mem[(32 * stor7[msg.sender].field_0) + 608] = 0
        mem[(32 * stor7[msg.sender].field_0) + 640] = 0
        mem[(32 * stor7[msg.sender].field_0) + 672] = 0
        idx = 0
        s = (32 * stor7[msg.sender].field_0) + 416
        while idx < stor7[msg.sender].field_0:
            if idx >= mem[384]:
                revert with 0, 50
            if mem[(32 * idx) + 416] < 1:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 416] - 1
            mem[32] = 6
            if sub_e136ef76[mem[(32 * idx) + 416] - 1].field_1952 > 1:
                revert with 0, 33
            if sub_e136ef76[mem[(32 * idx) + 416] - 1].field_1952:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if mem[(32 * idx) + 416] < 1:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 416] - 1
            mem[32] = 6
            _38 = sha3(mem[(32 * idx) + 416] - 1, 6)
            _39 = mem[64]
            mem[64] = mem[64] + 288
            mem[_39] = sub_e136ef76[mem[(32 * idx) + 416] - 1].field_0
            mem[_39 + 32] = stor1[_38].field_0
            mem[_39 + 64] = stor2[_38]
            mem[_39 + 96] = uint256(stor3[_38])
            mem[_39 + 128] = stor4[_38]
            mem[_39 + 160] = stor5[_38]
            mem[_39 + 192] = sub_e136ef76[_38].field_0
            mem[_39 + 224] = stor7[_38].field_0
            if stor7[_38].field_160 > 1:
                revert with 0, 33
            mem[_39 + 256] = stor7[_38].field_160
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _39
            continue 
    else:
        mem[0] = sha3(msg.sender, 7)
        mem[416] = stor7[msg.sender].field_0
        idx = 416
        s = 0
        while (32 * stor7[msg.sender].field_0) + 384 > idx:
            mem[idx + 32] = stor7[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * stor7[msg.sender].field_0) + 704
        mem[(32 * stor7[msg.sender].field_0) + 416] = 0
        mem[(32 * stor7[msg.sender].field_0) + 448] = 0
        mem[(32 * stor7[msg.sender].field_0) + 480] = 0
        mem[(32 * stor7[msg.sender].field_0) + 512] = 0
        mem[(32 * stor7[msg.sender].field_0) + 544] = 0
        mem[(32 * stor7[msg.sender].field_0) + 576] = 0
        mem[(32 * stor7[msg.sender].field_0) + 608] = 0
        mem[(32 * stor7[msg.sender].field_0) + 640] = 0
        mem[(32 * stor7[msg.sender].field_0) + 672] = 0
        idx = 0
        s = (32 * stor7[msg.sender].field_0) + 416
        while idx < stor7[msg.sender].field_0:
            if idx >= mem[384]:
                revert with 0, 50
            if mem[(32 * idx) + 416] < 1:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 416] - 1
            mem[32] = 6
            if sub_e136ef76[mem[(32 * idx) + 416] - 1].field_1952 > 1:
                revert with 0, 33
            if sub_e136ef76[mem[(32 * idx) + 416] - 1].field_1952:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if mem[(32 * idx) + 416] < 1:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 416] - 1
            mem[32] = 6
            _73 = sha3(mem[(32 * idx) + 416] - 1, 6)
            _74 = mem[64]
            mem[64] = mem[64] + 288
            mem[_74] = sub_e136ef76[mem[(32 * idx) + 416] - 1].field_0
            mem[_74 + 32] = stor1[_73].field_0
            mem[_74 + 64] = stor2[_73]
            mem[_74 + 96] = uint256(stor3[_73])
            mem[_74 + 128] = stor4[_73]
            mem[_74 + 160] = stor5[_73]
            mem[_74 + 192] = sub_e136ef76[_73].field_0
            mem[_74 + 224] = stor7[_73].field_0
            if stor7[_73].field_160 > 1:
                revert with 0, 33
            mem[_74 + 256] = stor7[_73].field_160
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _74
            continue 
    mem[mem[64]] = mem[s]
    mem[mem[64] + 32] = mem[s + 32]
    mem[mem[64] + 64] = mem[s + 64]
    mem[mem[64] + 96] = mem[s + 96]
    mem[mem[64] + 128] = mem[s + 128]
    mem[mem[64] + 160] = mem[s + 191 len 1]
    mem[mem[64] + 192] = mem[s + 192]
    mem[mem[64] + 224] = mem[s + 236 len 20]
    if mem[s + 256] >= 2:
        revert with 0, 33
    mem[mem[64] + 256] = mem[s + 256]
    return memory
      from mem[64]
       len 288
}

function sub_49e071c0(?) {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = idx
            mem[32] = 6
            _40 = mem[64]
            mem[64] = mem[64] + 288
            mem[_40] = sub_e136ef76[idx].field_0
            mem[_40 + 32] = sub_e136ef76[idx].field_256
            mem[_40 + 64] = sub_e136ef76[idx].field_512
            mem[_40 + 96] = sub_e136ef76[idx].field_768
            mem[_40 + 128] = sub_e136ef76[idx].field_1024
            mem[_40 + 160] = sub_e136ef76[idx].field_1280
            mem[_40 + 192] = sub_e136ef76[idx].field_1536
            mem[_40 + 224] = sub_e136ef76[idx].field_1792
            if sub_e136ef76[idx].field_1952 > 1:
                revert with 0, 33
            mem[_40 + 256] = sub_e136ef76[idx].field_1952
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _40
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _43:
            _73 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_73 + 32]
            mem[s + 64] = mem[_73 + 64]
            mem[s + 96] = mem[_73 + 96]
            mem[s + 128] = mem[_73 + 128]
            mem[s + 160] = mem[_73 + 191 len 1]
            mem[s + 192] = mem[_73 + 192]
            mem[s + 224] = mem[_73 + 236 len 20]
            if mem[_73 + 256] >= 2:
                revert with 0, 33
            mem[s + 256] = mem[_73 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _42 + (288 * _43) + -mem[64] + 64
    mem[64] = (32 * stor2.length) + 416
    mem[(32 * stor2.length) + 128] = 0
    mem[(32 * stor2.length) + 160] = 0
    mem[(32 * stor2.length) + 192] = 0
    mem[(32 * stor2.length) + 224] = 0
    mem[(32 * stor2.length) + 256] = 0
    mem[(32 * stor2.length) + 288] = 0
    mem[(32 * stor2.length) + 320] = 0
    mem[(32 * stor2.length) + 352] = 0
    mem[var16002] = 0
    mem[var18002] = var18001
    if not var18003 - 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = idx
            mem[32] = 6
            _153 = mem[64]
            mem[64] = mem[64] + 288
            mem[_153] = sub_e136ef76[idx].field_0
            mem[_153 + 32] = sub_e136ef76[idx].field_256
            mem[_153 + 64] = sub_e136ef76[idx].field_512
            mem[_153 + 96] = sub_e136ef76[idx].field_768
            mem[_153 + 128] = sub_e136ef76[idx].field_1024
            mem[_153 + 160] = sub_e136ef76[idx].field_1280
            mem[_153 + 192] = sub_e136ef76[idx].field_1536
            mem[_153 + 224] = sub_e136ef76[idx].field_1792
            if sub_e136ef76[idx].field_1952 > 1:
                revert with 0, 33
            mem[_153 + 256] = sub_e136ef76[idx].field_1952
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _153
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _154 = mem[64]
        mem[mem[64]] = 32
        _155 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _155:
            _185 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_185 + 32]
            mem[s + 64] = mem[_185 + 64]
            mem[s + 96] = mem[_185 + 96]
            mem[s + 128] = mem[_185 + 128]
            mem[s + 160] = mem[_185 + 191 len 1]
            mem[s + 192] = mem[_185 + 192]
            mem[s + 224] = mem[_185 + 236 len 20]
            if mem[_185 + 256] >= 2:
                revert with 0, 33
            mem[s + 256] = mem[_185 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _154 + (288 * _155) + -mem[64] + 64
    mem[64] = (32 * stor2.length) + 704
    mem[(32 * stor2.length) + 416] = 0
    mem[(32 * stor2.length) + 448] = 0
    mem[(32 * stor2.length) + 480] = 0
    mem[(32 * stor2.length) + 512] = 0
    mem[(32 * stor2.length) + 544] = 0
    mem[(32 * stor2.length) + 576] = 0
    mem[(32 * stor2.length) + 608] = 0
    mem[(32 * stor2.length) + 640] = 0
    mem[var24002] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = idx
            mem[32] = 6
            _265 = mem[64]
            mem[64] = mem[64] + 288
            mem[_265] = sub_e136ef76[idx].field_0
            mem[_265 + 32] = sub_e136ef76[idx].field_256
            mem[_265 + 64] = sub_e136ef76[idx].field_512
            mem[_265 + 96] = sub_e136ef76[idx].field_768
            mem[_265 + 128] = sub_e136ef76[idx].field_1024
            mem[_265 + 160] = sub_e136ef76[idx].field_1280
            mem[_265 + 192] = sub_e136ef76[idx].field_1536
            mem[_265 + 224] = sub_e136ef76[idx].field_1792
            if sub_e136ef76[idx].field_1952 > 1:
                revert with 0, 33
            mem[_265 + 256] = sub_e136ef76[idx].field_1952
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _265
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _266 = mem[64]
        mem[mem[64]] = 32
        _267 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _267:
            _297 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_297 + 32]
            mem[s + 64] = mem[_297 + 64]
            mem[s + 96] = mem[_297 + 96]
            mem[s + 128] = mem[_297 + 128]
            mem[s + 160] = mem[_297 + 191 len 1]
            mem[s + 192] = mem[_297 + 192]
            mem[s + 224] = mem[_297 + 236 len 20]
            if mem[_297 + 256] >= 2:
                revert with 0, 33
            mem[s + 256] = mem[_297 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _266 + (288 * _267) + -mem[64] + 64
    mem[64] = (32 * stor2.length) + 992
    mem[(32 * stor2.length) + 704] = 0
    mem[(32 * stor2.length) + 736] = 0
    mem[(32 * stor2.length) + 768] = 0
    mem[(32 * stor2.length) + 800] = 0
    mem[(32 * stor2.length) + 832] = 0
    mem[(32 * stor2.length) + 864] = 0
    mem[(32 * stor2.length) + 896] = 0
    mem[(32 * stor2.length) + 928] = 0
    mem[var32002] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = idx
            mem[32] = 6
            _377 = mem[64]
            mem[64] = mem[64] + 288
            mem[_377] = sub_e136ef76[idx].field_0
            mem[_377 + 32] = sub_e136ef76[idx].field_256
            mem[_377 + 64] = sub_e136ef76[idx].field_512
            mem[_377 + 96] = sub_e136ef76[idx].field_768
            mem[_377 + 128] = sub_e136ef76[idx].field_1024
            mem[_377 + 160] = sub_e136ef76[idx].field_1280
            mem[_377 + 192] = sub_e136ef76[idx].field_1536
            mem[_377 + 224] = sub_e136ef76[idx].field_1792
            if sub_e136ef76[idx].field_1952 > 1:
                revert with 0, 33
            mem[_377 + 256] = sub_e136ef76[idx].field_1952
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _377
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _378 = mem[64]
        mem[mem[64]] = 32
        _379 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _379:
            _409 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_409 + 32]
            mem[s + 64] = mem[_409 + 64]
            mem[s + 96] = mem[_409 + 96]
            mem[s + 128] = mem[_409 + 128]
            mem[s + 160] = mem[_409 + 191 len 1]
            mem[s + 192] = mem[_409 + 192]
            mem[s + 224] = mem[_409 + 236 len 20]
            if mem[_409 + 256] >= 2:
                revert with 0, 33
            mem[s + 256] = mem[_409 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _378 + (288 * _379) + -mem[64] + 64
    mem[64] = (32 * stor2.length) + 1280
    mem[(32 * stor2.length) + 992] = 0
    mem[(32 * stor2.length) + 1024] = 0
    mem[(32 * stor2.length) + 1056] = 0
    mem[(32 * stor2.length) + 1088] = 0
    mem[(32 * stor2.length) + 1120] = 0
    mem[(32 * stor2.length) + 1152] = 0
    mem[(32 * stor2.length) + 1184] = 0
    mem[(32 * stor2.length) + 1216] = 0
    mem[var40002] = 0
    mem[var42002] = var42001
    if var42003 - 1:
        # nil
    else:
        idx = 0
        while idx < stor2.length:
            mem[0] = idx
            mem[32] = 6
            _489 = mem[64]
            mem[64] = mem[64] + 288
            mem[_489] = sub_e136ef76[idx].field_0
            mem[_489 + 32] = sub_e136ef76[idx].field_256
            mem[_489 + 64] = sub_e136ef76[idx].field_512
            mem[_489 + 96] = sub_e136ef76[idx].field_768
            mem[_489 + 128] = sub_e136ef76[idx].field_1024
            mem[_489 + 160] = sub_e136ef76[idx].field_1280
            mem[_489 + 192] = sub_e136ef76[idx].field_1536
            mem[_489 + 224] = sub_e136ef76[idx].field_1792
            if sub_e136ef76[idx].field_1952 > 1:
                revert with 0, 33
            mem[_489 + 256] = sub_e136ef76[idx].field_1952
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _489
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _490 = mem[64]
        mem[mem[64]] = 32
        _491 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _491:
            _521 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_521 + 32]
            mem[s + 64] = mem[_521 + 64]
            mem[s + 96] = mem[_521 + 96]
            mem[s + 128] = mem[_521 + 128]
            mem[s + 160] = mem[_521 + 191 len 1]
            mem[s + 192] = mem[_521 + 192]
            mem[s + 224] = mem[_521 + 236 len 20]
            if mem[_521 + 256] >= 2:
                revert with 0, 33
            mem[s + 256] = mem[_521 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _490 + (288 * _491) + -mem[64] + 64
}

function sub_20745d66(?) {
    mem[0] = msg.sender
    mem[32] = 7
    mem[96] = stor7[msg.sender].field_0
    if stor7[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 7)
        mem[128] = stor7[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * stor7[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = stor7[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor7[msg.sender].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor7[msg.sender].field_0) + 128] = stor7[msg.sender].field_0
        mem[64] = (64 * stor7[msg.sender].field_0) + 160
        if not stor7[msg.sender].field_0:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _158 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _159 = mem[64]
                mem[64] = mem[64] + 288
                mem[_159] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_159 + 32] = stor1[_158].field_0
                mem[_159 + 64] = stor2[_158]
                mem[_159 + 96] = uint256(stor3[_158])
                mem[_159 + 128] = stor4[_158]
                mem[_159 + 160] = stor5[_158]
                mem[_159 + 192] = sub_e136ef76[_158].field_0
                mem[_159 + 224] = stor7[_158].field_0
                if stor7[_158].field_160 > 1:
                    revert with 0, 33
                mem[_159 + 256] = stor7[_158].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _159
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _155 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _155:
                _207 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_207 + 32]
                mem[s + 64] = mem[_207 + 64]
                mem[s + 96] = mem[_207 + 96]
                mem[s + 128] = mem[_207 + 128]
                mem[s + 160] = mem[_207 + 191 len 1]
                mem[s + 192] = mem[_207 + 192]
                mem[s + 224] = mem[_207 + 236 len 20]
                if mem[_207 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_207 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 448
        mem[(64 * stor7[msg.sender].field_0) + 160] = 0
        mem[(64 * stor7[msg.sender].field_0) + 192] = 0
        mem[(64 * stor7[msg.sender].field_0) + 224] = 0
        mem[(64 * stor7[msg.sender].field_0) + 256] = 0
        mem[(64 * stor7[msg.sender].field_0) + 288] = 0
        mem[(64 * stor7[msg.sender].field_0) + 320] = 0
        mem[(64 * stor7[msg.sender].field_0) + 352] = 0
        mem[(64 * stor7[msg.sender].field_0) + 384] = 0
        mem[var19002] = 0
        mem[var21002] = var21001
        if not var21003 - 1:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _406 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _407 = mem[64]
                mem[64] = mem[64] + 288
                mem[_407] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_407 + 32] = stor1[_406].field_0
                mem[_407 + 64] = stor2[_406]
                mem[_407 + 96] = uint256(stor3[_406])
                mem[_407 + 128] = stor4[_406]
                mem[_407 + 160] = stor5[_406]
                mem[_407 + 192] = sub_e136ef76[_406].field_0
                mem[_407 + 224] = stor7[_406].field_0
                if stor7[_406].field_160 > 1:
                    revert with 0, 33
                mem[_407 + 256] = stor7[_406].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _407
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _403 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _403:
                _455 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_455 + 32]
                mem[s + 64] = mem[_455 + 64]
                mem[s + 96] = mem[_455 + 96]
                mem[s + 128] = mem[_455 + 128]
                mem[s + 160] = mem[_455 + 191 len 1]
                mem[s + 192] = mem[_455 + 192]
                mem[s + 224] = mem[_455 + 236 len 20]
                if mem[_455 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_455 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 736
        mem[(64 * stor7[msg.sender].field_0) + 448] = 0
        mem[(64 * stor7[msg.sender].field_0) + 480] = 0
        mem[(64 * stor7[msg.sender].field_0) + 512] = 0
        mem[(64 * stor7[msg.sender].field_0) + 544] = 0
        mem[(64 * stor7[msg.sender].field_0) + 576] = 0
        mem[(64 * stor7[msg.sender].field_0) + 608] = 0
        mem[(64 * stor7[msg.sender].field_0) + 640] = 0
        mem[(64 * stor7[msg.sender].field_0) + 672] = 0
        mem[var27002] = 0
        mem[var29002] = var29001
        if not var29003 - 1:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _654 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _655 = mem[64]
                mem[64] = mem[64] + 288
                mem[_655] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_655 + 32] = stor1[_654].field_0
                mem[_655 + 64] = stor2[_654]
                mem[_655 + 96] = uint256(stor3[_654])
                mem[_655 + 128] = stor4[_654]
                mem[_655 + 160] = stor5[_654]
                mem[_655 + 192] = sub_e136ef76[_654].field_0
                mem[_655 + 224] = stor7[_654].field_0
                if stor7[_654].field_160 > 1:
                    revert with 0, 33
                mem[_655 + 256] = stor7[_654].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _655
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _651 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _651:
                _703 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_703 + 32]
                mem[s + 64] = mem[_703 + 64]
                mem[s + 96] = mem[_703 + 96]
                mem[s + 128] = mem[_703 + 128]
                mem[s + 160] = mem[_703 + 191 len 1]
                mem[s + 192] = mem[_703 + 192]
                mem[s + 224] = mem[_703 + 236 len 20]
                if mem[_703 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_703 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 1024
        mem[(64 * stor7[msg.sender].field_0) + 736] = 0
        mem[(64 * stor7[msg.sender].field_0) + 768] = 0
        mem[(64 * stor7[msg.sender].field_0) + 800] = 0
        mem[(64 * stor7[msg.sender].field_0) + 832] = 0
        mem[(64 * stor7[msg.sender].field_0) + 864] = 0
        mem[(64 * stor7[msg.sender].field_0) + 896] = 0
        mem[(64 * stor7[msg.sender].field_0) + 928] = 0
        mem[(64 * stor7[msg.sender].field_0) + 960] = 0
        mem[var35002] = 0
        mem[var37002] = var37001
        if var37003 - 1:
            mem[64] = (64 * stor7[msg.sender].field_0) + 1312
            mem[var43002] = 0
            mem[var45002] = var45001
            if not var45003 - 1:
                idx = 0
                while idx < stor7[msg.sender].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    mem[0] = mem[(32 * idx) + 128] - 1
                    mem[32] = 6
                    _1150 = sha3(mem[(32 * idx) + 128] - 1, 6)
                    _1151 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1151] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                    mem[_1151 + 32] = stor1[_1150].field_0
                    mem[_1151 + 64] = stor2[_1150]
                    mem[_1151 + 96] = uint256(stor3[_1150])
                    mem[_1151 + 128] = stor4[_1150]
                    mem[_1151 + 160] = stor5[_1150]
                    mem[_1151 + 192] = sub_e136ef76[_1150].field_0
                    mem[_1151 + 224] = stor7[_1150].field_0
                    if stor7[_1150].field_160 > 1:
                        revert with 0, 33
                    mem[_1151 + 256] = stor7[_1150].field_160
                    if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _1151
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _902 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _903 = mem[64]
                mem[64] = mem[64] + 288
                mem[_903] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_903 + 32] = stor1[_902].field_0
                mem[_903 + 64] = stor2[_902]
                mem[_903 + 96] = uint256(stor3[_902])
                mem[_903 + 128] = stor4[_902]
                mem[_903 + 160] = stor5[_902]
                mem[_903 + 192] = sub_e136ef76[_902].field_0
                mem[_903 + 224] = stor7[_902].field_0
                if stor7[_902].field_160 > 1:
                    revert with 0, 33
                mem[_903 + 256] = stor7[_902].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _903
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _899 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _899:
                _951 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_951 + 32]
                mem[s + 64] = mem[_951 + 64]
                mem[s + 96] = mem[_951 + 96]
                mem[s + 128] = mem[_951 + 128]
                mem[s + 160] = mem[_951 + 191 len 1]
                mem[s + 192] = mem[_951 + 192]
                mem[s + 224] = mem[_951 + 236 len 20]
                if mem[_951 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_951 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
    else:
        if stor7[msg.sender].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor7[msg.sender].field_0) + 128] = stor7[msg.sender].field_0
        mem[64] = (64 * stor7[msg.sender].field_0) + 160
        if not stor7[msg.sender].field_0:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _49 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _50 = mem[64]
                mem[64] = mem[64] + 288
                mem[_50] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_50 + 32] = stor1[_49].field_0
                mem[_50 + 64] = stor2[_49]
                mem[_50 + 96] = uint256(stor3[_49])
                mem[_50 + 128] = stor4[_49]
                mem[_50 + 160] = stor5[_49]
                mem[_50 + 192] = sub_e136ef76[_49].field_0
                mem[_50 + 224] = stor7[_49].field_0
                if stor7[_49].field_160 > 1:
                    revert with 0, 33
                mem[_50 + 256] = stor7[_49].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _47 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _47:
                _82 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_82 + 32]
                mem[s + 64] = mem[_82 + 64]
                mem[s + 96] = mem[_82 + 96]
                mem[s + 128] = mem[_82 + 128]
                mem[s + 160] = mem[_82 + 191 len 1]
                mem[s + 192] = mem[_82 + 192]
                mem[s + 224] = mem[_82 + 236 len 20]
                if mem[_82 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_82 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 448
        mem[(64 * stor7[msg.sender].field_0) + 160] = 0
        mem[(64 * stor7[msg.sender].field_0) + 192] = 0
        mem[(64 * stor7[msg.sender].field_0) + 224] = 0
        mem[(64 * stor7[msg.sender].field_0) + 256] = 0
        mem[(64 * stor7[msg.sender].field_0) + 288] = 0
        mem[(64 * stor7[msg.sender].field_0) + 320] = 0
        mem[(64 * stor7[msg.sender].field_0) + 352] = 0
        mem[(64 * stor7[msg.sender].field_0) + 384] = 0
        mem[var15002] = 0
        mem[var17002] = var17001
        if not var17003 - 1:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _281 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _282 = mem[64]
                mem[64] = mem[64] + 288
                mem[_282] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_282 + 32] = stor1[_281].field_0
                mem[_282 + 64] = stor2[_281]
                mem[_282 + 96] = uint256(stor3[_281])
                mem[_282 + 128] = stor4[_281]
                mem[_282 + 160] = stor5[_281]
                mem[_282 + 192] = sub_e136ef76[_281].field_0
                mem[_282 + 224] = stor7[_281].field_0
                if stor7[_281].field_160 > 1:
                    revert with 0, 33
                mem[_282 + 256] = stor7[_281].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _282
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _278 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _278:
                _331 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_331 + 32]
                mem[s + 64] = mem[_331 + 64]
                mem[s + 96] = mem[_331 + 96]
                mem[s + 128] = mem[_331 + 128]
                mem[s + 160] = mem[_331 + 191 len 1]
                mem[s + 192] = mem[_331 + 192]
                mem[s + 224] = mem[_331 + 236 len 20]
                if mem[_331 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_331 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 736
        mem[(64 * stor7[msg.sender].field_0) + 448] = 0
        mem[(64 * stor7[msg.sender].field_0) + 480] = 0
        mem[(64 * stor7[msg.sender].field_0) + 512] = 0
        mem[(64 * stor7[msg.sender].field_0) + 544] = 0
        mem[(64 * stor7[msg.sender].field_0) + 576] = 0
        mem[(64 * stor7[msg.sender].field_0) + 608] = 0
        mem[(64 * stor7[msg.sender].field_0) + 640] = 0
        mem[(64 * stor7[msg.sender].field_0) + 672] = 0
        mem[var23002] = 0
        mem[var25002] = var25001
        if not var25003 - 1:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _529 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _530 = mem[64]
                mem[64] = mem[64] + 288
                mem[_530] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_530 + 32] = stor1[_529].field_0
                mem[_530 + 64] = stor2[_529]
                mem[_530 + 96] = uint256(stor3[_529])
                mem[_530 + 128] = stor4[_529]
                mem[_530 + 160] = stor5[_529]
                mem[_530 + 192] = sub_e136ef76[_529].field_0
                mem[_530 + 224] = stor7[_529].field_0
                if stor7[_529].field_160 > 1:
                    revert with 0, 33
                mem[_530 + 256] = stor7[_529].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _530
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _526 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _526:
                _579 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_579 + 32]
                mem[s + 64] = mem[_579 + 64]
                mem[s + 96] = mem[_579 + 96]
                mem[s + 128] = mem[_579 + 128]
                mem[s + 160] = mem[_579 + 191 len 1]
                mem[s + 192] = mem[_579 + 192]
                mem[s + 224] = mem[_579 + 236 len 20]
                if mem[_579 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_579 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 1024
        mem[(64 * stor7[msg.sender].field_0) + 736] = 0
        mem[(64 * stor7[msg.sender].field_0) + 768] = 0
        mem[(64 * stor7[msg.sender].field_0) + 800] = 0
        mem[(64 * stor7[msg.sender].field_0) + 832] = 0
        mem[(64 * stor7[msg.sender].field_0) + 864] = 0
        mem[(64 * stor7[msg.sender].field_0) + 896] = 0
        mem[(64 * stor7[msg.sender].field_0) + 928] = 0
        mem[(64 * stor7[msg.sender].field_0) + 960] = 0
        mem[var31002] = 0
        mem[var33002] = var33001
        if not var33003 - 1:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _777 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _778 = mem[64]
                mem[64] = mem[64] + 288
                mem[_778] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_778 + 32] = stor1[_777].field_0
                mem[_778 + 64] = stor2[_777]
                mem[_778 + 96] = uint256(stor3[_777])
                mem[_778 + 128] = stor4[_777]
                mem[_778 + 160] = stor5[_777]
                mem[_778 + 192] = sub_e136ef76[_777].field_0
                mem[_778 + 224] = stor7[_777].field_0
                if stor7[_777].field_160 > 1:
                    revert with 0, 33
                mem[_778 + 256] = stor7[_777].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _778
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _774 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _774:
                _827 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_827 + 32]
                mem[s + 64] = mem[_827 + 64]
                mem[s + 96] = mem[_827 + 96]
                mem[s + 128] = mem[_827 + 128]
                mem[s + 160] = mem[_827 + 191 len 1]
                mem[s + 192] = mem[_827 + 192]
                mem[s + 224] = mem[_827 + 236 len 20]
                if mem[_827 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_827 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
        mem[64] = (64 * stor7[msg.sender].field_0) + 1312
        mem[(64 * stor7[msg.sender].field_0) + 1024] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1056] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1088] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1120] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1152] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1184] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1216] = 0
        mem[(64 * stor7[msg.sender].field_0) + 1248] = 0
        mem[var39002] = 0
        mem[var41002] = var41001
        if var41003 - 1:
            # nil
        else:
            idx = 0
            while idx < stor7[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _1025 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _1026 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1026] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_1026 + 32] = stor1[_1025].field_0
                mem[_1026 + 64] = stor2[_1025]
                mem[_1026 + 96] = uint256(stor3[_1025])
                mem[_1026 + 128] = stor4[_1025]
                mem[_1026 + 160] = stor5[_1025]
                mem[_1026 + 192] = sub_e136ef76[_1025].field_0
                mem[_1026 + 224] = stor7[_1025].field_0
                if stor7[_1025].field_160 > 1:
                    revert with 0, 33
                mem[_1026 + 256] = stor7[_1025].field_160
                if idx >= mem[(32 * stor7[msg.sender].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[msg.sender].field_0) + 160] = _1026
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1022 = mem[(32 * stor7[msg.sender].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[msg.sender].field_0) + 128]
            s = 0
            s = mem[64] + 64
            t = (32 * stor7[msg.sender].field_0) + 160
            while stor7[msg.sender].field_0 < _1022:
                _1075 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_1075 + 32]
                mem[s + 64] = mem[_1075 + 64]
                mem[s + 96] = mem[_1075 + 96]
                mem[s + 128] = mem[_1075 + 128]
                mem[s + 160] = mem[_1075 + 191 len 1]
                mem[s + 192] = mem[_1075 + 192]
                mem[s + 224] = mem[_1075 + 236 len 20]
                if mem[_1075 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_1075 + 256]
                s = stor7[msg.sender].field_0 + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len s - mem[64]
}

function sub_a9f51af3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tx.origin != msg.sender:
        revert with 0, 'Contract not allowed'
    mem[0] = address(arg1)
    mem[32] = 7
    mem[96] = stor7[address(arg1)].field_0
    if stor7[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        mem[128] = stor7[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor7[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor7[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor7[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor7[address(arg1)].field_0) + 128] = stor7[address(arg1)].field_0
        mem[64] = (64 * stor7[address(arg1)].field_0) + 160
        if not stor7[address(arg1)].field_0:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _161 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _162 = mem[64]
                mem[64] = mem[64] + 288
                mem[_162] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_162 + 32] = stor1[_161].field_0
                mem[_162 + 64] = stor2[_161]
                mem[_162 + 96] = uint256(stor3[_161])
                mem[_162 + 128] = stor4[_161]
                mem[_162 + 160] = stor5[_161]
                mem[_162 + 192] = sub_e136ef76[_161].field_0
                mem[_162 + 224] = stor7[_161].field_0
                if stor7[_161].field_160 > 1:
                    revert with 0, 33
                mem[_162 + 256] = stor7[_161].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _162
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _158 = mem[64]
            mem[mem[64]] = 32
            _159 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _159:
                _211 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_211 + 32]
                mem[s + 64] = mem[_211 + 64]
                mem[s + 96] = mem[_211 + 96]
                mem[s + 128] = mem[_211 + 128]
                mem[s + 160] = mem[_211 + 191 len 1]
                mem[s + 192] = mem[_211 + 192]
                mem[s + 224] = mem[_211 + 236 len 20]
                if mem[_211 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_211 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _158 + (288 * _159) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 448
        mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
        mem[var27002] = 0
        mem[var29002] = var29001
        if not var29003 - 1:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _409 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _410 = mem[64]
                mem[64] = mem[64] + 288
                mem[_410] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_410 + 32] = stor1[_409].field_0
                mem[_410 + 64] = stor2[_409]
                mem[_410 + 96] = uint256(stor3[_409])
                mem[_410 + 128] = stor4[_409]
                mem[_410 + 160] = stor5[_409]
                mem[_410 + 192] = sub_e136ef76[_409].field_0
                mem[_410 + 224] = stor7[_409].field_0
                if stor7[_409].field_160 > 1:
                    revert with 0, 33
                mem[_410 + 256] = stor7[_409].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _410
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _406 = mem[64]
            mem[mem[64]] = 32
            _407 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _407:
                _459 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_459 + 32]
                mem[s + 64] = mem[_459 + 64]
                mem[s + 96] = mem[_459 + 96]
                mem[s + 128] = mem[_459 + 128]
                mem[s + 160] = mem[_459 + 191 len 1]
                mem[s + 192] = mem[_459 + 192]
                mem[s + 224] = mem[_459 + 236 len 20]
                if mem[_459 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_459 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _406 + (288 * _407) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 736
        mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 672] = 0
        mem[var35002] = 0
        mem[var37002] = var37001
        if not var37003 - 1:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _657 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _658 = mem[64]
                mem[64] = mem[64] + 288
                mem[_658] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_658 + 32] = stor1[_657].field_0
                mem[_658 + 64] = stor2[_657]
                mem[_658 + 96] = uint256(stor3[_657])
                mem[_658 + 128] = stor4[_657]
                mem[_658 + 160] = stor5[_657]
                mem[_658 + 192] = sub_e136ef76[_657].field_0
                mem[_658 + 224] = stor7[_657].field_0
                if stor7[_657].field_160 > 1:
                    revert with 0, 33
                mem[_658 + 256] = stor7[_657].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _658
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _654 = mem[64]
            mem[mem[64]] = 32
            _655 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _655:
                _707 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_707 + 32]
                mem[s + 64] = mem[_707 + 64]
                mem[s + 96] = mem[_707 + 96]
                mem[s + 128] = mem[_707 + 128]
                mem[s + 160] = mem[_707 + 191 len 1]
                mem[s + 192] = mem[_707 + 192]
                mem[s + 224] = mem[_707 + 236 len 20]
                if mem[_707 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_707 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _654 + (288 * _655) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 1024
        mem[(64 * stor7[address(arg1)].field_0) + 736] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 768] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 800] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 832] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 864] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 896] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 928] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 960] = 0
        mem[var43002] = 0
        mem[var45002] = var45001
        if var45003 - 1:
            mem[64] = (64 * stor7[address(arg1)].field_0) + 1312
            mem[var51002] = 0
            mem[var53002] = var53001
            if not var53003 - 1:
                idx = 0
                while idx < stor7[address(arg1)].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    mem[0] = mem[(32 * idx) + 128] - 1
                    mem[32] = 6
                    _1153 = sha3(mem[(32 * idx) + 128] - 1, 6)
                    _1154 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1154] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                    mem[_1154 + 32] = stor1[_1153].field_0
                    mem[_1154 + 64] = stor2[_1153]
                    mem[_1154 + 96] = uint256(stor3[_1153])
                    mem[_1154 + 128] = stor4[_1153]
                    mem[_1154 + 160] = stor5[_1153]
                    mem[_1154 + 192] = sub_e136ef76[_1153].field_0
                    mem[_1154 + 224] = stor7[_1153].field_0
                    if stor7[_1153].field_160 > 1:
                        revert with 0, 33
                    mem[_1154 + 256] = stor7[_1153].field_160
                    if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _1154
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _905 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _906 = mem[64]
                mem[64] = mem[64] + 288
                mem[_906] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_906 + 32] = stor1[_905].field_0
                mem[_906 + 64] = stor2[_905]
                mem[_906 + 96] = uint256(stor3[_905])
                mem[_906 + 128] = stor4[_905]
                mem[_906 + 160] = stor5[_905]
                mem[_906 + 192] = sub_e136ef76[_905].field_0
                mem[_906 + 224] = stor7[_905].field_0
                if stor7[_905].field_160 > 1:
                    revert with 0, 33
                mem[_906 + 256] = stor7[_905].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _906
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _902 = mem[64]
            mem[mem[64]] = 32
            _903 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _903:
                _955 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_955 + 32]
                mem[s + 64] = mem[_955 + 64]
                mem[s + 96] = mem[_955 + 96]
                mem[s + 128] = mem[_955 + 128]
                mem[s + 160] = mem[_955 + 191 len 1]
                mem[s + 192] = mem[_955 + 192]
                mem[s + 224] = mem[_955 + 236 len 20]
                if mem[_955 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_955 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _902 + (288 * _903) + -mem[64] + 64
    else:
        if stor7[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor7[address(arg1)].field_0) + 128] = stor7[address(arg1)].field_0
        mem[64] = (64 * stor7[address(arg1)].field_0) + 160
        if not stor7[address(arg1)].field_0:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _52 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _53 = mem[64]
                mem[64] = mem[64] + 288
                mem[_53] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_53 + 32] = stor1[_52].field_0
                mem[_53 + 64] = stor2[_52]
                mem[_53 + 96] = uint256(stor3[_52])
                mem[_53 + 128] = stor4[_52]
                mem[_53 + 160] = stor5[_52]
                mem[_53 + 192] = sub_e136ef76[_52].field_0
                mem[_53 + 224] = stor7[_52].field_0
                if stor7[_52].field_160 > 1:
                    revert with 0, 33
                mem[_53 + 256] = stor7[_52].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _53
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _50 = mem[64]
            mem[mem[64]] = 32
            _51 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _51:
                _86 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_86 + 32]
                mem[s + 64] = mem[_86 + 64]
                mem[s + 96] = mem[_86 + 96]
                mem[s + 128] = mem[_86 + 128]
                mem[s + 160] = mem[_86 + 191 len 1]
                mem[s + 192] = mem[_86 + 192]
                mem[s + 224] = mem[_86 + 236 len 20]
                if mem[_86 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_86 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _50 + (288 * _51) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 448
        mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
        mem[var23002] = 0
        mem[var25002] = var25001
        if not var25003 - 1:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _284 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _285 = mem[64]
                mem[64] = mem[64] + 288
                mem[_285] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_285 + 32] = stor1[_284].field_0
                mem[_285 + 64] = stor2[_284]
                mem[_285 + 96] = uint256(stor3[_284])
                mem[_285 + 128] = stor4[_284]
                mem[_285 + 160] = stor5[_284]
                mem[_285 + 192] = sub_e136ef76[_284].field_0
                mem[_285 + 224] = stor7[_284].field_0
                if stor7[_284].field_160 > 1:
                    revert with 0, 33
                mem[_285 + 256] = stor7[_284].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _285
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _281 = mem[64]
            mem[mem[64]] = 32
            _283 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _283:
                _335 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_335 + 32]
                mem[s + 64] = mem[_335 + 64]
                mem[s + 96] = mem[_335 + 96]
                mem[s + 128] = mem[_335 + 128]
                mem[s + 160] = mem[_335 + 191 len 1]
                mem[s + 192] = mem[_335 + 192]
                mem[s + 224] = mem[_335 + 236 len 20]
                if mem[_335 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_335 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _281 + (288 * _283) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 736
        mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 672] = 0
        mem[var31002] = 0
        mem[var33002] = var33001
        if not var33003 - 1:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _532 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _533 = mem[64]
                mem[64] = mem[64] + 288
                mem[_533] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_533 + 32] = stor1[_532].field_0
                mem[_533 + 64] = stor2[_532]
                mem[_533 + 96] = uint256(stor3[_532])
                mem[_533 + 128] = stor4[_532]
                mem[_533 + 160] = stor5[_532]
                mem[_533 + 192] = sub_e136ef76[_532].field_0
                mem[_533 + 224] = stor7[_532].field_0
                if stor7[_532].field_160 > 1:
                    revert with 0, 33
                mem[_533 + 256] = stor7[_532].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _533
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _529 = mem[64]
            mem[mem[64]] = 32
            _531 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _531:
                _583 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_583 + 32]
                mem[s + 64] = mem[_583 + 64]
                mem[s + 96] = mem[_583 + 96]
                mem[s + 128] = mem[_583 + 128]
                mem[s + 160] = mem[_583 + 191 len 1]
                mem[s + 192] = mem[_583 + 192]
                mem[s + 224] = mem[_583 + 236 len 20]
                if mem[_583 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_583 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _529 + (288 * _531) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 1024
        mem[(64 * stor7[address(arg1)].field_0) + 736] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 768] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 800] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 832] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 864] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 896] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 928] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 960] = 0
        mem[var39002] = 0
        mem[var41002] = var41001
        if not var41003 - 1:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _780 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _781 = mem[64]
                mem[64] = mem[64] + 288
                mem[_781] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_781 + 32] = stor1[_780].field_0
                mem[_781 + 64] = stor2[_780]
                mem[_781 + 96] = uint256(stor3[_780])
                mem[_781 + 128] = stor4[_780]
                mem[_781 + 160] = stor5[_780]
                mem[_781 + 192] = sub_e136ef76[_780].field_0
                mem[_781 + 224] = stor7[_780].field_0
                if stor7[_780].field_160 > 1:
                    revert with 0, 33
                mem[_781 + 256] = stor7[_780].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _781
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _777 = mem[64]
            mem[mem[64]] = 32
            _779 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _779:
                _831 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_831 + 32]
                mem[s + 64] = mem[_831 + 64]
                mem[s + 96] = mem[_831 + 96]
                mem[s + 128] = mem[_831 + 128]
                mem[s + 160] = mem[_831 + 191 len 1]
                mem[s + 192] = mem[_831 + 192]
                mem[s + 224] = mem[_831 + 236 len 20]
                if mem[_831 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_831 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _777 + (288 * _779) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 1312
        mem[(64 * stor7[address(arg1)].field_0) + 1024] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1056] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1088] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1120] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1152] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1184] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1216] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 1248] = 0
        mem[var47002] = 0
        mem[var49002] = var49001
        if var49003 - 1:
            # nil
        else:
            idx = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128] - 1
                mem[32] = 6
                _1028 = sha3(mem[(32 * idx) + 128] - 1, 6)
                _1029 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1029] = sub_e136ef76[mem[(32 * idx) + 128] - 1].field_0
                mem[_1029 + 32] = stor1[_1028].field_0
                mem[_1029 + 64] = stor2[_1028]
                mem[_1029 + 96] = uint256(stor3[_1028])
                mem[_1029 + 128] = stor4[_1028]
                mem[_1029 + 160] = stor5[_1028]
                mem[_1029 + 192] = sub_e136ef76[_1028].field_0
                mem[_1029 + 224] = stor7[_1028].field_0
                if stor7[_1028].field_160 > 1:
                    revert with 0, 33
                mem[_1029 + 256] = stor7[_1028].field_160
                if idx >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor7[address(arg1)].field_0) + 160] = _1029
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1025 = mem[64]
            mem[mem[64]] = 32
            _1027 = mem[(32 * stor7[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor7[address(arg1)].field_0) + 128]
            idx = 0
            s = mem[64] + 64
            t = (32 * stor7[address(arg1)].field_0) + 160
            while idx < _1027:
                _1079 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_1079 + 32]
                mem[s + 64] = mem[_1079 + 64]
                mem[s + 96] = mem[_1079 + 96]
                mem[s + 128] = mem[_1079 + 128]
                mem[s + 160] = mem[_1079 + 191 len 1]
                mem[s + 192] = mem[_1079 + 192]
                mem[s + 224] = mem[_1079 + 236 len 20]
                if mem[_1079 + 256] >= 2:
                    revert with 0, 33
                mem[s + 256] = mem[_1079 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1025 + (288 * _1027) + -mem[64] + 64
}



}
