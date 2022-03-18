contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint8 currentRound;
uint256 sub_439a1995;
uint256 minOrder;
address stor4;

function sub_439a1995(?) {
    return sub_439a1995
}

function currentRound() {
    return currentRound
}

function minOrder() {
    return minOrder
}

function _fallback() payable {
    revert
}

function sub_183ab264(?) {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'admin required'
    currentRound = arg1
    return 1
}

function setMinOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'admin required'
    minOrder = arg1
    return 1
}

function sub_50c8a544(?) payable {
    require calldata.size - 4 >= 32
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'admin required'
    call stor4 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    mem[128] = stor0[arg1].field_0
    idx = 128
    s = 0
    while stor0[arg1].length + 96 > idx:
        mem[idx + 32] = stor0[(6 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[128 len stor0[arg1].length]), 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280
}

function sub_f87f4a0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.value < minOrder:
        revert with 0, 'min order'
    stor0.length++
    stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor0.length].field_256 = msg.sender
    stor0[stor0.length].field_512 = msg.value
    stor0[stor0.length].field_768 = currentRound
    stor0[stor0.length].field_1024 = block.timestamp
    stor0[stor0.length].field_1280 = block.number
    emit 0x21412c4b: sub_439a1995
    sub_439a1995++
    return 1
}



}
