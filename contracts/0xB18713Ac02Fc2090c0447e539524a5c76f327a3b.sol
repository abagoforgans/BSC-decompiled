contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of address stor1;
mapping of address stor2;
mapping of struct stor3;
uint32 stor4;
address stor4;
address stor4; offset 24

function getoffercount() {
    return (stor4.field_0 % 16777216 - 1 % 16777216)
}

function _fallback() payable {
    call address(stor4.field_24) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deleteoffer(uint24 arg1) {
    if stor3[arg1 << 232].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only original seller can change offer!'
    stor3[arg1 << 232].field_0 = 0
    stor1[arg1 << 232] = 0
    stor2[arg1 << 232] = 0
    stor0[arg1 << 232] = 0
    return 'offer deleted'
}

function pricepreview(uint24 arg1, uint256 arg2) {
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].decimals() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[0]
    return ((arg2 * stor0[arg1 << 232] / 10^ext_call.return_data[0]) + 1)
}

function losttokens(address arg1) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor4.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function makeoffer(address arg1, address arg2, uint256 arg3, uint24 arg4) {
    if arg4 % 16777216:
        if stor3[arg4 << 232].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only original seller can change offer!'
        stor0[arg4 << 232] = arg3
        return (arg4 % 16777216)
    stor4.field_0 % 16777216 = stor4.field_0 % 16777216 + 1 % 16777216
    stor3[stor4.field_0 % 16777216].field_0 = stor3[stor4.field_0 % 16777216].field_160
    stor1[stor4.field_0 % 16777216] = arg1
    stor2[stor4.field_0 % 16777216] = arg2
    stor0[stor4.field_0 % 16777216] = arg3
    return stor4.field_0 % 16777216
}

function showoffer(uint24 arg1) {
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].balanceOf(address rg1) with:
         gas gas_remaining wei
        args stor3[arg1 << 232].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].allowance(address rg1, address rg2) with:
         gas gas_remaining wei
        args stor3[arg1 << 232].field_0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor1[arg1 << 232], stor2[arg1 << 232], stor3[arg1 << 232].field_0, stor0[arg1 << 232], ext_call.return_data[0]
}

function buy(uint24 arg1, uint256 arg2, uint256 arg3) {
    if arg3 != stor0[arg1 << 232]:
        revert with 0, 'offer price wrong'
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].decimals() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[0]
    require ext_code.size(stor2[arg1 << 232])
    call stor2[arg1 << 232].balanceOf(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].balanceOf(address rg1) with:
         gas gas_remaining wei
        args stor3[arg1 << 232].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2[arg1 << 232])
    call stor2[arg1 << 232].transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, stor3[arg1 << 232].field_0, (arg3 * arg2 / 10^ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args stor3[arg1 << 232].field_0, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2[arg1 << 232])
    call stor2[arg1 << 232].balanceOf(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'buyer error'
    require ext_code.size(stor1[arg1 << 232])
    call stor1[arg1 << 232].balanceOf(address rg1) with:
         gas gas_remaining wei
        args stor3[arg1 << 232].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'seller error'
    return 'tokens exchanged. ENJOY!'
}

function tokeninfo(address arg1) {
    require ext_code.size(arg1)
    call arg1.decimals() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.symbol() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.name() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _13 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= 4294967296
    require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] + mem[ceil32(return_data.size) + 96] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= 4294967296
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 128] = 96
    mem[(2 * ceil32(return_data.size)) + 192] = mem[_8 + 96]
    _17 = mem[_8 + 96]
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _17 % 32:
        mem[(2 * ceil32(return_data.size)) + 160] = _17 + 128
        mem[_17 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _13 + 96]
        _34 = mem[ceil32(return_data.size) + _13 + 96]
        mem[_17 + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[ceil32(return_data.size) + _13 + 96])] = mem[ceil32(return_data.size) + _13 + 128 len ceil32(mem[ceil32(return_data.size) + _13 + 96])]
        if not _34 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 96
               len _34 + _17 + ceil32(return_data.size) + 160
        mem[floor32(_34) + _17 + (2 * ceil32(return_data.size)) + 256] = mem[floor32(_34) + _17 + (2 * ceil32(return_data.size)) + -(_34 % 32) + 288 len _34 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len floor32(_34) + _17 + ceil32(return_data.size) + 192
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 224] = mem[floor32(_17) + (2 * ceil32(return_data.size)) + -(_17 % 32) + 256 len _17 % 32]
    mem[(2 * ceil32(return_data.size)) + 160] = floor32(_17) + 160
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _13 + 96]
    _37 = mem[ceil32(return_data.size) + _13 + 96]
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + _13 + 96])] = mem[ceil32(return_data.size) + _13 + 128 len ceil32(mem[ceil32(return_data.size) + _13 + 96])]
    if not _37 % 32:
        return memory
          from (2 * ceil32(return_data.size)) + 96
           len _37 + floor32(_17) + ceil32(return_data.size) + 192
    mem[floor32(_37) + floor32(_17) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(_37) + floor32(_17) + (2 * ceil32(return_data.size)) + -(_37 % 32) + 320 len _37 % 32]
    return memory
      from (2 * ceil32(return_data.size)) + 96
       len floor32(_37) + floor32(_17) + ceil32(return_data.size) + 224
}



}
