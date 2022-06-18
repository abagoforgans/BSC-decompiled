contract main {




// =====================  Runtime code  =====================


array of uint256 name;
address creatorAddress;
address stor2;
array of struct stor3;
uint256 sub_cefba841;
mapping of uint256 pIDxAddr_;
uint256 sub_e236a827;
uint256 round;
uint256 sub_ff39256a;
uint256 sub_a146457c;
uint256 sub_bcb27c3e;
address stor12;
address stor13;
address bankAddress;
mapping of uint8 stor15;

function creator() {
    return creatorAddress
}

function sub_03bbb427(?) {
    return bool(stor15[arg1])
}

function name() {
    return name[0 len name.length]
}

function pIDxAddr_(address arg1) {
    return pIDxAddr_[arg1]
}

function round() {
    return round
}

function sub_41fc2d61(?) {
    return sub_41fc2d61[arg1].field_0, 
           sub_41fc2d61[arg1].field_512,
           sub_41fc2d61[arg1].field_768,
           sub_41fc2d61[arg1].field_1024,
           sub_41fc2d61[arg1].field_1280,
           sub_41fc2d61[arg1].field_1536,
           sub_41fc2d61[arg1].field_1792,
           sub_41fc2d61[arg1].field_2048,
           sub_41fc2d61[arg1].field_2304,
           sub_41fc2d61[arg1].field_2560
}

function bank() {
    return bankAddress
}

function sub_a146457c(?) {
    return sub_a146457c
}

function sub_bcb27c3e(?) {
    return sub_bcb27c3e
}

function sub_cefba841(?) {
    return sub_cefba841
}

function sub_e236a827(?) {
    return sub_e236a827
}

function sub_ff39256a(?) {
    return sub_ff39256a
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_f61679a2(?) {
    require msg.sender == creatorAddress
    stor13 = arg1
}

function sub_bac34b0c(?) {
    require msg.sender == creatorAddress
    sub_ff39256a = arg1
}

function setUSDTAddr(address arg1) {
    require msg.sender == creatorAddress
    stor12 = arg1
}

function setTotal(uint256 arg1) {
    require msg.sender == creatorAddress
    sub_e236a827 = arg1
}

function withdraw() {
    require bool(stor15[address(msg.sender)]) == 1
    require ext_code.size(stor13)
    call stor13.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_41fc2d61[stor5[address(msg.sender)]].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_41fc2d61[stor5[address(msg.sender)]].field_1536 = 0
    sub_41fc2d61[stor5[address(msg.sender)]].field_1792 += sub_41fc2d61[stor5[address(msg.sender)]].field_1536
}

function sub_627b5daf(?) {
    require msg.sender == creatorAddress
    require ext_code.size(stor13)
    call stor13.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    call stor13.0xa9059cbb with:
         gas gas_remaining wei
        args creatorAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6b1ac1b5(?) {
    require msg.sender == creatorAddress
    require ext_code.size(stor12)
    call stor12.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args creatorAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_12d2e534(?) {
    require msg.sender == creatorAddress
    round++
    idx = 1
    while idx <= sub_cefba841:
        mem[0] = idx
        mem[32] = 6
        if sub_41fc2d61[idx].field_1024 > 0:
            if sub_41fc2d61[idx].field_1024 < sub_41fc2d61[idx].field_768 / 100:
                sub_41fc2d61[idx].field_1024 = 0
            else:
                sub_41fc2d61[idx].field_1024 -= sub_41fc2d61[idx].field_768 / 100
            sub_41fc2d61[idx].field_1280 += sub_41fc2d61[idx].field_768 / 100
            mem[0] = idx
            mem[32] = 6
            sub_41fc2d61[idx].field_1536 += sub_41fc2d61[idx].field_768 / 100
        idx = idx + 1
        continue 
}

function sub_b13db2e4(?) {
    require ext_code.size(stor12)
    call stor12.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1 * sub_ff39256a
    require ext_code.size(stor12)
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * sub_ff39256a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args bankAddress, arg1 * sub_ff39256a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not pIDxAddr_[address(msg.sender)]:
        sub_cefba841++
        pIDxAddr_[address(msg.sender)] = sub_cefba841
        stor15[address(msg.sender)] = 1
        if stor3.length:
            mem[480] = address(stor3.field_0)
            idx = 480
            s = 0
            while (32 * stor3.length) + 448 > idx:
                mem[idx + 32] = stor3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        sub_41fc2d61[stor4].field_0 = msg.sender
        sub_41fc2d61[stor4].field_256 = stor3.length
        if not stor3.length:
            idx = 0
            while sub_41fc2d61[stor4].field_256 > idx:
                sub_41fc2d61[stor4][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 480
            while (32 * stor3.length) + 480 > idx:
                sub_41fc2d61[stor4][s + 1].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor3.length) + 31) >> 5
            while sub_41fc2d61[stor4].field_256 > idx:
                sub_41fc2d61[stor4][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        sub_41fc2d61[stor4].field_512 = 0
        sub_41fc2d61[stor4].field_768 = 0
        sub_41fc2d61[stor4].field_1024 = 0
        sub_41fc2d61[stor4].field_1280 = 0
        sub_41fc2d61[stor4].field_1536 = 0
        sub_41fc2d61[stor4].field_1792 = 0
        sub_41fc2d61[stor4].field_2048 = 0
        sub_41fc2d61[stor4].field_2304 = 0
        sub_41fc2d61[stor4].field_2560 = 0
        if arg2 != stor2:
            if bool(stor15[address(arg2)]) == 1:
                sub_41fc2d61[stor4].field_512 = pIDxAddr_[address(arg2)]
                sub_41fc2d61[stor5[address(arg2)]].field_256++
                stor[('array', 1, ('map', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor5', 5))), ('name', 'sub_41fc2d61', 6))) + sub_41fc2d61[stor5[address(arg2)]].field_256].field_0 = msg.sender
    sub_e236a827 += arg1 * sub_bcb27c3e
    require sub_e236a827 <= sub_a146457c
    sub_41fc2d61[stor5[address(msg.sender)]].field_768 += arg1 * sub_bcb27c3e
    sub_41fc2d61[stor5[address(msg.sender)]].field_1024 += arg1 * sub_bcb27c3e
    sub_41fc2d61[stor5[address(msg.sender)]].field_2304 += arg1 * sub_ff39256a
    sub_41fc2d61[stor5[address(msg.sender)]].field_2560 += arg1 * sub_bcb27c3e
    idx = 0
    while idx < 2:
        if not idx:
            if sub_41fc2d61[stor5[address(msg.sender)]].field_512:
                sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_768 += 5 * arg1 * sub_bcb27c3e / 100
                sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_1024 += 5 * arg1 * sub_bcb27c3e / 100
                mem[0] = sub_41fc2d61[stor5[address(msg.sender)]].field_512
                mem[32] = 6
                sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_2048 += 5 * arg1 * sub_bcb27c3e / 100
        else:
            mem[0] = sub_41fc2d61[stor5[address(msg.sender)]].field_512
            mem[32] = 6
            if sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_512:
                sub_41fc2d61[sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_512].field_768 += 3 * arg1 * sub_bcb27c3e / 100
                sub_41fc2d61[sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_512].field_1024 += 3 * arg1 * sub_bcb27c3e / 100
                mem[0] = sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_512
                mem[32] = 6
                sub_41fc2d61[sub_41fc2d61[sub_41fc2d61[stor5[address(msg.sender)]].field_512].field_512].field_2048 += 3 * arg1 * sub_bcb27c3e / 100
        idx = idx + 1
        continue 
}



}
