contract main {




// =====================  Runtime code  =====================


#
#  - buy(address arg1)
#
address OWNER;
address FACTORYAddress;
address sub_ea6cfd4aAddress;
address USDTAddress;
address WBNBAddress;
uint256 sub_be62cfe5;
uint256 sub_d5c8610c;
mapping of uint256 sub_7b7a9299;
mapping of uint256 sub_7301228a;
mapping of uint256 sub_f06853b2;
mapping of uint256 sub_c4cdc924;
mapping of address refs;
array of struct orders;

function OWNER() {
    return OWNER
}

function FACTORY() {
    return FACTORYAddress
}

function sub_7301228a(?) {
    require calldata.size - 4 >= 32
    return sub_7301228a[arg1]
}

function refs(address arg1) {
    require calldata.size - 4 >= 32
    return refs[arg1]
}

function sub_7b7a9299(?) {
    require calldata.size - 4 >= 32
    return sub_7b7a9299[arg1]
}

function WBNB() {
    return WBNBAddress
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < orders.length
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           orders[arg1].field_1792
}

function sub_be62cfe5(?) {
    return sub_be62cfe5
}

function sub_c4cdc924(?) {
    require calldata.size - 4 >= 32
    return sub_c4cdc924[arg1]
}

function USDT() {
    return USDTAddress
}

function sub_d5c8610c(?) {
    return sub_d5c8610c
}

function sub_ea6cfd4a(?) {
    return sub_ea6cfd4aAddress
}

function sub_f06853b2(?) {
    require calldata.size - 4 >= 32
    return sub_f06853b2[arg1]
}

function _fallback() payable {
    revert
}

function sub_cdddc784(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    sub_7301228a[arg1] = arg2
}

function sub_fbea74d1(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    sub_f06853b2[arg1] = arg2
}

function sub_040ae259(?) {
    require calldata.size - 4 >= 64
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    sub_d5c8610c = arg1
    sub_be62cfe5 = arg2
}

function init(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    FACTORYAddress = arg1
    sub_ea6cfd4aAddress = arg2
    USDTAddress = arg3
    WBNBAddress = arg4
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if OWNER != msg.sender:
        revert with 0, 'TCROSSFI FARM: ONLY_OWNER'
    call OWNER with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
