contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 sub_1115c24d;
mapping of struct offers;
mapping of uint256 userFunds;
mapping of struct sellers;
address stor5;

function sub_1115c24d(?) {
    return sub_1115c24d
}

function userFunds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userFunds[arg1]
}

function offers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           bool(offers[arg1].field_1024),
           bool(offers[arg1].field_1032)
}

function sellers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sellers[arg1].field_0, sellers[arg1].field_256
}

function _fallback() {
    revert
}

function claimFunds() {
    if userFunds[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This user has no funds to be claimed'
    call msg.sender with:
       value userFunds[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4f055419: msg.sender, userFunds[address(msg.sender)]
    userFunds[address(msg.sender)] = 0
}

function makeOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_1115c24d == -1:
        revert with 'NH{q', 17
    sub_1115c24d++
    offers[stor1].field_0 = sub_1115c24d
    offers[stor1].field_256 = arg1
    offers[stor1].field_512 = msg.sender
    offers[stor1].field_768 = arg2
    offers[stor1].field_1024 = 0
    offers[stor1].field_1032 = 0
    emit 0x93e71189: sub_1115c24d, arg1, msg.sender, arg2, 0, 0
}

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if offers[arg1].field_0 != arg1:
        revert with 0, 'The offer must exist'
    if offers[arg1].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The offer can only be canceled by the owner'
    if offers[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'A fulfilled offer cannot be cancelled'
    if offers[arg1].field_1032:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'An offer cannot be cancelled twice'
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, offers[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    offers[arg1].field_1032 = 1
    emit 0x5b166b4d: arg1, offers[arg1].field_256, msg.sender
}

function getSellers() {
    if stor0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0
    if stor0:
        mem[128 len 32 * stor0] = call.data[calldata.size len 32 * stor0]
    if stor0 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor0) + 128] = stor0
    mem[64] = (64 * stor0) + 160
    if stor0:
        mem[(32 * stor0) + 160 len 32 * stor0] = call.data[calldata.size len 32 * stor0]
    idx = 0
    while idx < stor0:
        if idx >= stor0:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sellers[idx].field_0
        mem[0] = idx
        mem[32] = 4
        if idx >= mem[(32 * stor0) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * stor0) + 160] = sellers[idx].field_256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * stor0) + 160] = 64
    mem[(64 * stor0) + 224] = stor0
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < stor0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stor0) + 192] = (32 * stor0) + 96
    mem[(98 * stor0) + 256] = mem[(32 * stor0) + 128]
    mem[(98 * stor0) + 288 len 32 * mem[(32 * stor0) + 128]] = mem[(32 * stor0) + 160 len 32 * mem[(32 * stor0) + 128]]
    return memory
      from mem[64]
       len (98 * stor0) + (32 * mem[(32 * stor0) + 128]) + -mem[64] + 288
}

function sub_85dba861(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if offers[arg1].field_0 != arg1:
        revert with 0, 'The offer must exist'
    if offers[arg1].field_512 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The owner of the offer cannot fill it'
    if offers[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'An offer cannot be fulfilled twice'
    if offers[arg1].field_1032:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'A cancelled offer cannot be fulfilled'
    if offers[arg1].field_768 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The ETH amount should match with the NFT Price'
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, offers[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    offers[arg1].field_1024 = 1
    if userFunds[stor2[arg1].field_512] > -msg.value - 1:
        revert with 'NH{q', 17
    userFunds[stor2[arg1].field_512] += msg.value
    sellers[stor0].field_0 = offers[arg1].field_512
    sellers[stor0].field_256 = msg.value
    call stor5.0xaf3585fe with:
         gas gas_remaining wei
        args msg.sender, offers[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor0 == -1:
        revert with 'NH{q', 17
    stor0++
    emit 0xd9157c06: arg1, offers[arg1].field_256, msg.sender
}



}
