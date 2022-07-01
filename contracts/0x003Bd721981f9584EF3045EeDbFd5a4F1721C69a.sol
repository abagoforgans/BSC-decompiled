contract main {




// =====================  Runtime code  =====================


const decimals = 18

const sub_557cf477(?) = 0xa4eed63db85311e22df4473f87ccfc3dadcfa3e3

const sub_edc2e2af(?) = 0x5b38da6a701c568545dcfcb03fcb875f56beddc4


address owner;
array of struct sub_4607ecc6;
address USDCAddress;
address sub_88a153d7Address;
array of struct sub_21f51688;
mapping of uint256 rate;
array of struct sub_0d828fe0;
mapping of address tokenApprovals;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 startTime;
uint256 endTime;
uint256 sub_0002f4b0;
uint256 sub_1455f353;
uint256 sub_49496e06;
uint256 sub_f0890dd5;
uint256 maxPoolSize;
uint256 sub_8f89348d;

function sub_0002f4b0(?) payable {
    return sub_0002f4b0
}

function sub_0d828fe0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0d828fe0[arg1].field_0
    return sub_0d828fe0[arg1][arg2].field_0
}

function sub_1455f353(?) payable {
    return sub_1455f353
}

function withdrawRequest(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor8[arg1][arg2])
}

function sub_21f51688(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_21f51688.length
    return sub_21f51688[arg1].field_0, sub_21f51688[arg1].field_256, sub_21f51688[arg1].field_512, sub_21f51688[arg1].field_768
}

function endTime() payable {
    return endTime
}

function sub_4607ecc6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4607ecc6.length
    return sub_4607ecc6[arg1].field_0
}

function sub_49496e06(?) payable {
    return sub_49496e06
}

function sub_66d969c4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)][arg2])
}

function startTime() payable {
    return startTime
}

function sub_8252c44f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function sub_88a153d7(?) payable {
    return sub_88a153d7Address
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function sub_8f89348d(?) payable {
    return sub_8f89348d
}

function tokenApprovals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenApprovals[arg1]
}

function maxPoolSize() payable {
    return maxPoolSize
}

function rate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return rate[arg1]
}

function sub_f0890dd5(?) payable {
    return sub_f0890dd5
}

function _fallback() payable {
    revert
}

function sub_48a4565d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPoolSize = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_2753d3c9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_8f89348d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Min USDC amount must be lower than max USDC amount'
    sub_f0890dd5 = arg1
}

function sub_9d8688e0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= sub_f0890dd5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max USDC amount must be greater than min USDC amount'
    sub_8f89348d = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setTime(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time you set already passed'
    if arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End time must be greater or equals start time'
    startTime = arg1
    endTime = arg2
}

function sub_19c67eb0(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_49496e06 < sub_21f51688[arg1].field_768:
        revert with 0, 17
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_21f51688[arg1].field_0 and sub_49496e06 - sub_21f51688[arg1].field_768 > -1 / sub_21f51688[arg1].field_0:
        revert with 0, 17
    return ((sub_49496e06 * sub_21f51688[arg1].field_0) - (sub_21f51688[arg1].field_768 * sub_21f51688[arg1].field_0))
}

function addRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_49496e06 > !arg1:
        revert with 0, 17
    if not sub_0002f4b0:
        revert with 0, 18
    sub_49496e06 = sub_49496e06 + arg1 / sub_0002f4b0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_0d828fe0[address(msg.sender)].field_0:
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(msg.sender)].field_0:
        mem[32] = 6
        if idx >= sub_0d828fe0[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 6)
        if idx == -1:
            revert with 0, 17
        if sub_0d828fe0[msg.sender][idx].field_0 != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'You need to be an owner'
    tokenApprovals[arg2] = arg1
}

function getTokensByOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_0d828fe0[address(arg1)].field_0:
        mem[128] = sub_0d828fe0[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_0d828fe0[address(arg1)].field_0, data=mem[128 len 32 * sub_0d828fe0[address(arg1)].field_0])
    mem[(32 * sub_0d828fe0[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_0d828fe0[address(arg1)].field_0) + 160] = sub_0d828fe0[address(arg1)].field_0
    mem[(32 * sub_0d828fe0[address(arg1)].field_0) + 192 len 32 * sub_0d828fe0[address(arg1)].field_0] = mem[128 len 32 * sub_0d828fe0[address(arg1)].field_0]
    return memory
      from (32 * sub_0d828fe0[address(arg1)].field_0) + 128
       len (96 * sub_0d828fe0[address(arg1)].field_0) + 64
}

function sub_de3c8a53(?) payable {
    mem[64] = (32 * sub_4607ecc6.length) + 128
    mem[96] = sub_4607ecc6.length
    if not sub_4607ecc6.length:
        mem[(32 * sub_4607ecc6.length) + 128] = 32
        mem[(32 * sub_4607ecc6.length) + 160] = sub_4607ecc6.length
        idx = 0
        s = (32 * sub_4607ecc6.length) + 192
        t = 128
        while idx < sub_4607ecc6.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_4607ecc6.length) + 128
           len (96 * sub_4607ecc6.length) + 64
    mem[128] = address(sub_4607ecc6.field_0)
    idx = 128
    s = 0
    while (32 * sub_4607ecc6.length) + 96 > idx:
        mem[idx + 32] = sub_4607ecc6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_4607ecc6.length) + 128] = 32
    mem[(32 * sub_4607ecc6.length) + 160] = sub_4607ecc6.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_4607ecc6.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_4607ecc6.length) + -mem[64] + 192
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_0d828fe0[address(msg.sender)].field_0:
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(msg.sender)].field_0:
        mem[32] = 6
        if idx >= sub_0d828fe0[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 6)
        if idx == -1:
            revert with 0, 17
        if sub_0d828fe0[msg.sender][idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'You need to be an owner'
    if tokenApprovals[arg1] != msg.sender:
        revert with 0, 'You must have approval to move your stake'
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_49496e06 < sub_21f51688[arg1].field_768:
        revert with 0, 17
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_21f51688[arg1].field_0 and sub_49496e06 - sub_21f51688[arg1].field_768 > -1 / sub_21f51688[arg1].field_0:
        revert with 0, 17
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, (sub_49496e06 * sub_21f51688[arg1].field_0) - (sub_21f51688[arg1].field_768 * sub_21f51688[arg1].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function requestWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_0d828fe0[address(msg.sender)].field_0:
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(msg.sender)].field_0:
        mem[32] = 6
        if idx >= sub_0d828fe0[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 6)
        if idx == -1:
            revert with 0, 17
        if sub_0d828fe0[msg.sender][idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'You need to be an owner'
    if tokenApprovals[arg1] != msg.sender:
        revert with 0, 'You must have approval to move your stake'
    if stor8[msg.sender][arg1]:
        revert with 0, 'You request is already sent'
    stor8[msg.sender][arg1] = 1
    sub_4607ecc6.length++
    sub_4607ecc6[sub_4607ecc6.length].field_0 = msg.sender or Mask(96, 160, sub_4607ecc6[sub_4607ecc6.length].field_0)
    if block.timestamp < 24 * 3600:
        revert with 0, 17
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_21f51688[arg1].field_512 < block.timestamp - (24 * 3600):
        if arg1 >= sub_21f51688.length:
            revert with 0, 50
        if sub_21f51688[arg1].field_0 > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if arg1 >= sub_21f51688.length:
            revert with 0, 50
        sub_21f51688[arg1].field_0 = 90 * sub_21f51688[arg1].field_0 / 100
}

function sub_89a26611(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Arrays length mismath'
    if ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if address(cd[((32 * idx) + cd[4] + 36)]) == 0x5b38da6a701c568545dcfcb03fcb875f56beddc4:
                revert with 0, 'You can't withdraw user's BRBC'
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(cd[68])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
            call address(cd[((32 * idx) + cd[4] + 36)]).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(cd[68]), cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == bool(mem[_15])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_0d828fe0[address(msg.sender)].field_0:
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(msg.sender)].field_0:
        mem[32] = 6
        if idx >= sub_0d828fe0[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 6)
        if idx == -1:
            revert with 0, 17
        if sub_0d828fe0[msg.sender][idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'You need to be an owner'
    if tokenApprovals[arg1] != msg.sender:
        revert with 0, 'You must have approval to move your stake'
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 'Your must send withdraw request first, or your request hasn't been approved'
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    call USDCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_21f51688[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    call sub_88a153d7Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_21f51688[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_0002f4b0 < sub_21f51688[arg1].field_0:
        revert with 0, 17
    sub_0002f4b0 -= sub_21f51688[arg1].field_0
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    if sub_1455f353 < sub_21f51688[arg1].field_256:
        revert with 0, 17
    sub_1455f353 -= sub_21f51688[arg1].field_256
    if arg1 >= sub_21f51688.length:
        revert with 0, 50
    sub_21f51688[arg1].field_0 = 0
    sub_21f51688[arg1].field_256 = 0
    sub_21f51688[arg1].field_512 = 0
    sub_21f51688[arg1].field_768 = 0
    if arg1 >= sub_0d828fe0[msg.sender].field_0:
        revert with 0, 50
    sub_0d828fe0[msg.sender][arg1].field_0 = 0
    tokenApprovals[arg1] = 0
}

function sub_8103ee2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_0d828fe0[address(arg1)].field_0:
        mem[128] = sub_0d828fe0[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(arg1)].field_0:
        if idx >= sub_0d828fe0[address(arg1)].field_0:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_21f51688.length:
            revert with 0, 50
        mem[0] = 4
        if s > !sub_21f51688[mem[(32 * idx) + 128]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_21f51688[mem[(32 * idx) + 128]].field_0
        continue 
    return (s * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0)
}

function sub_c83aa5c2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Arrays length mismath'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if bool(stor8[address(cd[((32 * idx) + cd[4] + 36)])][cd[((32 * idx) + cd[36] + 36)]]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address doesn't make request to withdraw'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] >= sub_21f51688.length:
            revert with 0, 50
        if s > !sub_21f51688[cd[((32 * idx) + cd[36] + 36)]].field_0:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor9[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx >= sub_4607ecc6.length:
            revert with 0, 50
        sub_4607ecc6[idx].field_0 = 0
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 8)
        stor8[address(cd[((32 * idx) + cd[4] + 36)])][cd[((32 * idx) + cd[36] + 36)]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_21f51688[cd[((32 * idx) + cd[36] + 36)]].field_0
        continue 
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_0d828fe0[address(msg.sender)].field_0:
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(msg.sender)].field_0:
        mem[32] = 6
        if idx >= sub_0d828fe0[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 6)
        if idx == -1:
            revert with 0, 17
        if sub_0d828fe0[msg.sender][idx].field_0 != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'You need to be an owner'
    if tokenApprovals[arg2] != msg.sender:
        revert with 0, 'You must have approval to move your stake'
    if sub_0d828fe0[address(arg1)].field_0:
        mem[(32 * sub_0d828fe0[address(msg.sender)].field_0) + 160] = sub_0d828fe0[address(arg1)].field_0
        idx = (32 * sub_0d828fe0[address(msg.sender)].field_0) + 160
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + (32 * sub_0d828fe0[address(arg1)].field_0) + 128 > idx:
            mem[idx + 32] = sub_0d828fe0[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(arg1)].field_0:
        if idx >= sub_0d828fe0[address(arg1)].field_0:
            revert with 0, 50
        if mem[(32 * idx) + (32 * sub_0d828fe0[address(msg.sender)].field_0) + 160] >= sub_21f51688.length:
            revert with 0, 50
        mem[0] = 4
        if s > !sub_21f51688[mem[(32 * idx) + (32 * stor6[address(msg.sender)].field_0) + 160]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_21f51688[mem[(32 * idx) + (32 * stor6[address(msg.sender)].field_0) + 160]].field_0
        continue 
    if s * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 * sub_0d828fe0[address(arg1)].field_0 > sub_8f89348d:
        revert with 0, 'Maximum amount for stake for one user is 100000 USDC'
    if arg2 >= sub_0d828fe0[msg.sender].field_0:
        revert with 0, 50
    sub_0d828fe0[msg.sender][arg2].field_0 = 0
    sub_0d828fe0[address(arg1)].field_0++
    sub_0d828fe0[address(arg1)][sub_0d828fe0[address(arg1)].field_0].field_0 = arg2
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_0d828fe0[address(msg.sender)].field_0:
        mem[128] = sub_0d828fe0[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_0d828fe0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_0d828fe0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < sub_0d828fe0[address(msg.sender)].field_0:
        if idx >= sub_0d828fe0[address(msg.sender)].field_0:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= sub_21f51688.length:
            revert with 0, 50
        mem[0] = 4
        if s > !sub_21f51688[mem[(32 * idx) + 128]].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_21f51688[mem[(32 * idx) + 128]].field_0
        continue 
    if s * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 * sub_0d828fe0[address(msg.sender)].field_0 > sub_8f89348d:
        revert with 0, 'Maximum amount for stake for one user is 100000 USDC'
    if block.timestamp < startTime:
        revert with 0, 'Staking period hasn't started'
    if block.timestamp > endTime:
        revert with 0, 'Staking period has ended'
    if 720 * 24 * 3600 == arg2:
        if 2160 * 24 * 3600 == arg2:
            if 4320 * 24 * 3600 == arg2:
                revert with 0, 'Invalid period'
            if block.timestamp > !arg2:
                revert with 0, 17
            if block.timestamp + arg2 > endTime:
                revert with 0, 'Invalid period'
    if arg1 < sub_f0890dd5:
        revert with 0, 'Minimum amount for stake is 10000 USDC'
    if sub_0002f4b0 > !arg1:
        revert with 0, 17
    if sub_0002f4b0 + arg1 > maxPoolSize:
        revert with 0, 'Max pool size is 3kk USDC or 3kk BRBC'
    if arg1 and rate[arg2] > -1 / arg1:
        revert with 0, 17
    if sub_1455f353 > !(arg1 * rate[arg2] / 100):
        revert with 0, 17
    if sub_1455f353 + (arg1 * rate[arg2] / 100) > maxPoolSize:
        revert with 0, 'Max pool size is 3kk USDC or 3kk BRBC'
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xa4eed63db85311e22df4473f87ccfc3dadcfa3e3, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and rate[arg2] > -1 / arg1:
        revert with 0, 17
    call sub_88a153d7Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * rate[arg2] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and rate[arg2] > -1 / arg1:
        revert with 0, 17
    if block.timestamp > !arg2:
        revert with 0, 17
    sub_21f51688.length++
    sub_21f51688[sub_21f51688.length].field_0 = arg1
    sub_21f51688[sub_21f51688.length].field_256 = arg1 * rate[arg2] / 100
    sub_21f51688[sub_21f51688.length].field_512 = block.timestamp + arg2
    sub_21f51688[sub_21f51688.length].field_768 = sub_49496e06
    if sub_0002f4b0 > !arg1:
        revert with 0, 17
    sub_0002f4b0 += arg1
    if sub_1455f353 > !(arg1 * rate[arg2] / 100):
        revert with 0, 17
    sub_1455f353 += arg1 * rate[arg2] / 100
    sub_0d828fe0[msg.sender].field_0++
    sub_0d828fe0[msg.sender][sub_0d828fe0[msg.sender].field_0].field_0 = sub_21f51688.length
}



}
