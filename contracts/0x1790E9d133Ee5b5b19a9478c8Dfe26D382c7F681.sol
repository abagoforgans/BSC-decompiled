contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
uint256 sub_cb6798a4;
uint256 sub_9d4c411c;
uint256 feeDecimal;
address routerAddress;
array of struct sub_56355a90;
address sub_f3b6966bAddress;
uint256 sub_b40a3f93;
uint256 sub_7d485eb9;
array of struct sub_776f1e10;
address sub_e3255552Address;
uint256 sub_4f2fc5c1;
uint256 sub_eaa84776;
array of struct sub_5c5aa9b2;
address sub_10b567adAddress;
uint256 sub_832033c2;
uint256 sub_6f1bd5e0;
array of struct sub_1866cbfa;
address sub_80384d4dAddress;
uint256 sub_55d84497;
uint256 sub_ba587f27;
array of struct sub_ae46567c;
address sub_2cbfc5a5Address;
uint256 sub_9712a173;
uint256 sub_ce94b99a;
address burnAddress;
uint256 sub_357579d2;
uint256 sub_42d7359b;
address sub_d505cc4dAddress;
uint256 sub_18b38e8a;
uint256 sub_3079221b;
array of struct sub_7f582e0e;

function sub_10b567ad(?) {
    return sub_10b567adAddress
}

function sub_1866cbfa(?) {
    return sub_1866cbfa[0 len sub_1866cbfa.length].field_0
}

function sub_18b38e8a(?) {
    return sub_18b38e8a
}

function sub_2cbfc5a5(?) {
    return sub_2cbfc5a5Address
}

function sub_3079221b(?) {
    return sub_3079221b
}

function routerAddress() {
    return routerAddress
}

function sub_357579d2(?) {
    return sub_357579d2
}

function sub_42d7359b(?) {
    return sub_42d7359b
}

function sub_4f2fc5c1(?) {
    return sub_4f2fc5c1
}

function sub_55d84497(?) {
    return sub_55d84497
}

function sub_56355a90(?) {
    return sub_56355a90[0 len sub_56355a90.length].field_0
}

function sub_5c5aa9b2(?) {
    return sub_5c5aa9b2[0 len sub_5c5aa9b2.length].field_0
}

function sub_6f1bd5e0(?) {
    return sub_6f1bd5e0
}

function burnAddress() {
    return burnAddress
}

function sub_776f1e10(?) {
    return sub_776f1e10[0 len sub_776f1e10.length].field_0
}

function sub_7d485eb9(?) {
    return sub_7d485eb9
}

function feeDecimal() {
    return feeDecimal
}

function sub_7f582e0e(?) {
    return sub_7f582e0e[0 len sub_7f582e0e.length].field_0
}

function sub_80384d4d(?) {
    return sub_80384d4dAddress
}

function sub_832033c2(?) {
    return sub_832033c2
}

function owner() {
    return owner
}

function sub_9712a173(?) {
    return sub_9712a173
}

function sub_9d4c411c(?) {
    return sub_9d4c411c
}

function sub_ae46567c(?) {
    return sub_ae46567c[0 len sub_ae46567c.length].field_0
}

function sub_b40a3f93(?) {
    return sub_b40a3f93
}

function sub_ba587f27(?) {
    return sub_ba587f27
}

function sub_cb6798a4(?) {
    return sub_cb6798a4
}

function sub_ce94b99a(?) {
    return sub_ce94b99a
}

function sub_d505cc4d(?) {
    return sub_d505cc4dAddress
}

function sub_e3255552(?) {
    return sub_e3255552Address
}

function sub_eaa84776(?) {
    return sub_eaa84776
}

function sub_f3b6966b(?) {
    return sub_f3b6966bAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_9af14612(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.field_0) = arg1
}

function setFeeDecimal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeDecimal = arg1
    emit 0xbe3cb9bb: feeDecimal, feeDecimal
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
    emit RouterUpdated(routerAddress, routerAddress);
}

function sub_bbaec3e0(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    sub_cb6798a4 = arg2
    sub_9d4c411c = arg3
}

function withdrawEthToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a8b5afdc(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnAddress = arg1
    sub_357579d2 = arg2
    sub_42d7359b = arg3
    emit 0xa8a8ba62: 256, burnAddress, sub_357579d2, sub_42d7359b, 320, burnAddress, sub_357579d2, sub_42d7359b, 8, 'Burn Tax', 8, 'Burn Tax'
}

function sub_05bdf464(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d505cc4dAddress = arg1
    sub_18b38e8a = arg2
    sub_3079221b = arg3
    emit 0xa8a8ba62: 256, sub_d505cc4dAddress, sub_18b38e8a, sub_3079221b, 320, sub_d505cc4dAddress, sub_18b38e8a, sub_3079221b, 13, 'Liquidity Tax', 13, 'Liquidity Tax'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_56a6338f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Insufficient token balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_389c16b7(?) {
    if not uint8(stor1.field_160):
        return sub_6f1bd5e0
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_6f1bd5e0
    if not sub_6f1bd5e0:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_6f1bd5e0:
            if sub_6f1bd5e0 * sub_9d4c411c / sub_6f1bd5e0 != sub_9d4c411c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_6f1bd5e0 * sub_9d4c411c / 10^(feeDecimal + 2))
    revert
}

function sub_56dbc283(?) {
    if not uint8(stor1.field_160):
        return sub_b40a3f93
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_b40a3f93
    if not sub_b40a3f93:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_b40a3f93:
            if sub_b40a3f93 * sub_cb6798a4 / sub_b40a3f93 != sub_cb6798a4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_b40a3f93 * sub_cb6798a4 / 10^(feeDecimal + 2))
    revert
}

function sub_7253def8(?) {
    if not uint8(stor1.field_160):
        return sub_18b38e8a
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_18b38e8a
    if not sub_18b38e8a:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_18b38e8a:
            if sub_18b38e8a * sub_cb6798a4 / sub_18b38e8a != sub_cb6798a4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_18b38e8a * sub_cb6798a4 / 10^(feeDecimal + 2))
    revert
}

function sub_789a6a7b(?) {
    if not uint8(stor1.field_160):
        return sub_42d7359b
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_42d7359b
    if not sub_42d7359b:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_42d7359b:
            if sub_42d7359b * sub_9d4c411c / sub_42d7359b != sub_9d4c411c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_42d7359b * sub_9d4c411c / 10^(feeDecimal + 2))
    revert
}

function sub_82fbcaec(?) {
    if not uint8(stor1.field_160):
        return sub_9712a173
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_9712a173
    if not sub_9712a173:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_9712a173:
            if sub_9712a173 * sub_cb6798a4 / sub_9712a173 != sub_cb6798a4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_9712a173 * sub_cb6798a4 / 10^(feeDecimal + 2))
    revert
}

function sub_87e0de91(?) {
    if not uint8(stor1.field_160):
        return sub_357579d2
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_357579d2
    if not sub_357579d2:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_357579d2:
            if sub_357579d2 * sub_cb6798a4 / sub_357579d2 != sub_cb6798a4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_357579d2 * sub_cb6798a4 / 10^(feeDecimal + 2))
    revert
}

function sub_8f9b67cc(?) {
    if not uint8(stor1.field_160):
        return sub_ce94b99a
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_ce94b99a
    if not sub_ce94b99a:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_ce94b99a:
            if sub_ce94b99a * sub_9d4c411c / sub_ce94b99a != sub_9d4c411c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_ce94b99a * sub_9d4c411c / 10^(feeDecimal + 2))
    revert
}

function sub_b4125ccb(?) {
    if not uint8(stor1.field_160):
        return sub_3079221b
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_3079221b
    if not sub_3079221b:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_3079221b:
            if sub_3079221b * sub_9d4c411c / sub_3079221b != sub_9d4c411c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_3079221b * sub_9d4c411c / 10^(feeDecimal + 2))
    revert
}

function sub_cbf0f97c(?) {
    if not uint8(stor1.field_160):
        return sub_eaa84776
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_eaa84776
    if not sub_eaa84776:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_eaa84776:
            if sub_eaa84776 * sub_9d4c411c / sub_eaa84776 != sub_9d4c411c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_eaa84776 * sub_9d4c411c / 10^(feeDecimal + 2))
    revert
}

function sub_dd128ed4(?) {
    if not uint8(stor1.field_160):
        return sub_4f2fc5c1
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_4f2fc5c1
    if not sub_4f2fc5c1:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_4f2fc5c1:
            if sub_4f2fc5c1 * sub_cb6798a4 / sub_4f2fc5c1 != sub_cb6798a4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_4f2fc5c1 * sub_cb6798a4 / 10^(feeDecimal + 2))
    revert
}

function sub_f1b0d0dc(?) {
    if not uint8(stor1.field_160):
        return sub_832033c2
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_832033c2
    if not sub_832033c2:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_832033c2:
            if sub_832033c2 * sub_cb6798a4 / sub_832033c2 != sub_cb6798a4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_832033c2 * sub_cb6798a4 / 10^(feeDecimal + 2))
    revert
}

function sub_f86ea70d(?) {
    if not uint8(stor1.field_160):
        return sub_7d485eb9
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0xa13ec8d3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_7d485eb9
    if not sub_7d485eb9:
        if 10^(feeDecimal + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(feeDecimal + 2):
            return (0 / 10^(feeDecimal + 2))
    else:
        if sub_7d485eb9:
            if sub_7d485eb9 * sub_9d4c411c / sub_7d485eb9 != sub_9d4c411c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(feeDecimal + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(feeDecimal + 2):
                return (sub_7d485eb9 * sub_9d4c411c / 10^(feeDecimal + 2))
    revert
}

function sub_ca682c6d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 160
    mem[ceil32(arg1.length) + 128] = sub_7f582e0e.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_7f582e0e.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_7f582e0e.length + 128 > idx:
        mem[idx + 32] = sub_7f582e0e[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_7f582e0e[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 224] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _384 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 256 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 256] = sub_7f582e0e.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 288] = uint256(sub_7f582e0e.field_0)
        idx = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 288
        s = 0
        while Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + sub_7f582e0e.length + 288 > idx + 32:
            mem[idx + 32] = sub_7f582e0e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf1b71db6: mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 160 len _384 + sub_7f582e0e.length + (floor32(sub_7f582e0e.length - 1) + -sub_7f582e0e.length + 32 % 32) + 128]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 256] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 288 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 192] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 288] = sub_7f582e0e.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 320] = uint256(sub_7f582e0e.field_0)
        idx = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 320
        s = 0
        while floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + sub_7f582e0e.length + 320 > idx + 32:
            mem[idx + 32] = sub_7f582e0e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf1b71db6: mem[ceil32(arg1.length) + ceil32(sub_7f582e0e.length) + 160 len floor32(_384) + sub_7f582e0e.length + (floor32(sub_7f582e0e.length - 1) + -sub_7f582e0e.length + 32 % 32) + 160]
}

function sub_1820fe0c(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 160
    mem[ceil32(arg1.length) + 128] = sub_1866cbfa.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_1866cbfa.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_1866cbfa.length + 128 > idx:
        mem[idx + 32] = sub_1866cbfa[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_1866cbfa[].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_80384d4dAddress = arg2
    sub_55d84497 = arg3
    sub_ba587f27 = arg4
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 192] = sub_80384d4dAddress
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 224] = sub_55d84497
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 256] = sub_ba587f27
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 320] = sub_80384d4dAddress
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 352] = sub_55d84497
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 384] = sub_ba587f27
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 160] = 256
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 416] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _384 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 448 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 288
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 448] = sub_1866cbfa.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 480] = uint256(sub_1866cbfa.field_0)
        idx = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 480
        s = 0
        while Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + sub_1866cbfa.length + 480 > idx + 32:
            mem[idx + 32] = sub_1866cbfa[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 160 len _384 + sub_1866cbfa.length + (floor32(sub_1866cbfa.length - 1) + -sub_1866cbfa.length + 32 % 32) + 320]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 480 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 288] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 320
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 480] = sub_1866cbfa.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 512] = uint256(sub_1866cbfa.field_0)
        idx = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 512
        s = 0
        while floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + sub_1866cbfa.length + 512 > idx + 32:
            mem[idx + 32] = sub_1866cbfa[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_1866cbfa.length) + 160 len floor32(_384) + sub_1866cbfa.length + (floor32(sub_1866cbfa.length - 1) + -sub_1866cbfa.length + 32 % 32) + 352]
}

function sub_862737c9(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 160
    mem[ceil32(arg1.length) + 128] = sub_776f1e10.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_776f1e10.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_776f1e10.length + 128 > idx:
        mem[idx + 32] = sub_776f1e10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_776f1e10[].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_e3255552Address = arg2
    sub_4f2fc5c1 = arg3
    sub_eaa84776 = arg4
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 192] = sub_e3255552Address
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 224] = sub_4f2fc5c1
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 256] = sub_eaa84776
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 320] = sub_e3255552Address
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 352] = sub_4f2fc5c1
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 384] = sub_eaa84776
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 160] = 256
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 416] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _384 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 448 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 288
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 448] = sub_776f1e10.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 480] = uint256(sub_776f1e10.field_0)
        idx = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 480
        s = 0
        while Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + sub_776f1e10.length + 480 > idx + 32:
            mem[idx + 32] = sub_776f1e10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 160 len _384 + sub_776f1e10.length + (floor32(sub_776f1e10.length - 1) + -sub_776f1e10.length + 32 % 32) + 320]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 480 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 288] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 320
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 480] = sub_776f1e10.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 512] = uint256(sub_776f1e10.field_0)
        idx = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 512
        s = 0
        while floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_776f1e10.length) + sub_776f1e10.length + 512 > idx + 32:
            mem[idx + 32] = sub_776f1e10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_776f1e10.length) + 160 len floor32(_384) + sub_776f1e10.length + (floor32(sub_776f1e10.length - 1) + -sub_776f1e10.length + 32 % 32) + 352]
}

function sub_9bc81a2c(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = ceil32(arg1.length) + ceil32(sub_56355a90.length) + 160
    mem[ceil32(arg1.length) + 128] = sub_56355a90.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_56355a90.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_56355a90.length + 128 > idx:
        mem[idx + 32] = sub_56355a90[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_56355a90[].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_f3b6966bAddress = arg2
    sub_b40a3f93 = arg3
    sub_7d485eb9 = arg4
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 192] = sub_f3b6966bAddress
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 224] = sub_b40a3f93
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 256] = sub_7d485eb9
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 320] = sub_f3b6966bAddress
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 352] = sub_b40a3f93
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 384] = sub_7d485eb9
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 160] = 256
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 416] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _384 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 448 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 288
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 448] = sub_56355a90.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 480] = uint256(sub_56355a90.field_0)
        idx = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 480
        s = 0
        while Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_56355a90.length) + sub_56355a90.length + 480 > idx + 32:
            mem[idx + 32] = sub_56355a90[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 160 len _384 + sub_56355a90.length + (floor32(sub_56355a90.length - 1) + -sub_56355a90.length + 32 % 32) + 320]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_56355a90.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 480 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 288] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 320
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 480] = sub_56355a90.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 512] = uint256(sub_56355a90.field_0)
        idx = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_56355a90.length) + 512
        s = 0
        while floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_56355a90.length) + sub_56355a90.length + 512 > idx + 32:
            mem[idx + 32] = sub_56355a90[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_56355a90.length) + 160 len floor32(_384) + sub_56355a90.length + (floor32(sub_56355a90.length - 1) + -sub_56355a90.length + 32 % 32) + 352]
}

function sub_b7b40050(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 160
    mem[ceil32(arg1.length) + 128] = sub_ae46567c.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_ae46567c.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_ae46567c.length + 128 > idx:
        mem[idx + 32] = sub_ae46567c[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_ae46567c[].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_2cbfc5a5Address = arg2
    sub_9712a173 = arg3
    sub_ce94b99a = arg4
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 192] = sub_2cbfc5a5Address
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 224] = sub_9712a173
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 256] = sub_ce94b99a
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 320] = sub_2cbfc5a5Address
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 352] = sub_9712a173
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 384] = sub_ce94b99a
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 160] = 256
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 416] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _384 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 448 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 288
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 448] = sub_ae46567c.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 480] = uint256(sub_ae46567c.field_0)
        idx = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 480
        s = 0
        while Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + sub_ae46567c.length + 480 > idx + 32:
            mem[idx + 32] = sub_ae46567c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 160 len _384 + sub_ae46567c.length + (floor32(sub_ae46567c.length - 1) + -sub_ae46567c.length + 32 % 32) + 320]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 480 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 288] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 320
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 480] = sub_ae46567c.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 512] = uint256(sub_ae46567c.field_0)
        idx = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 512
        s = 0
        while floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_ae46567c.length) + sub_ae46567c.length + 512 > idx + 32:
            mem[idx + 32] = sub_ae46567c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_ae46567c.length) + 160 len floor32(_384) + sub_ae46567c.length + (floor32(sub_ae46567c.length - 1) + -sub_ae46567c.length + 32 % 32) + 352]
}

function sub_d162d415(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 160
    mem[ceil32(arg1.length) + 128] = sub_5c5aa9b2.length
    mem[ceil32(arg1.length) + 160] = uint256(sub_5c5aa9b2.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + sub_5c5aa9b2.length + 128 > idx:
        mem[idx + 32] = sub_5c5aa9b2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_5c5aa9b2[].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_10b567adAddress = arg2
    sub_832033c2 = arg3
    sub_6f1bd5e0 = arg4
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 192] = sub_10b567adAddress
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 224] = sub_832033c2
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 256] = sub_6f1bd5e0
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 320] = sub_10b567adAddress
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 352] = sub_832033c2
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 384] = sub_6f1bd5e0
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 160] = 256
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 416] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _384 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 448 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 288
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 448] = sub_5c5aa9b2.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 480] = uint256(sub_5c5aa9b2.field_0)
        idx = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 480
        s = 0
        while Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + sub_5c5aa9b2.length + 480 > idx + 32:
            mem[idx + 32] = sub_5c5aa9b2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 160 len _384 + sub_5c5aa9b2.length + (floor32(sub_5c5aa9b2.length - 1) + -sub_5c5aa9b2.length + 32 % 32) + 320]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 480 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 288] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 320
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 480] = sub_5c5aa9b2.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 512] = uint256(sub_5c5aa9b2.field_0)
        idx = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 512
        s = 0
        while floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + sub_5c5aa9b2.length + 512 > idx + 32:
            mem[idx + 32] = sub_5c5aa9b2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xa8a8ba62: mem[ceil32(arg1.length) + ceil32(sub_5c5aa9b2.length) + 160 len floor32(_384) + sub_5c5aa9b2.length + (floor32(sub_5c5aa9b2.length - 1) + -sub_5c5aa9b2.length + 32 % 32) + 352]
}



}
