contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const name = '', 0

const totalSupply = 125 * 10^15

const decimals = 9

const symbol = '', 0


uint8 stor0; offset 160
address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 192
uint8 stor1; offset 200
uint8 stor1; offset 208
uint8 stor1; offset 216
uint8 stor1; offset 224
uint16 stor1;
uint16 swapThreshold; offset 176
uint64 stor1; offset 208
uint64 stor1; offset 192
uint128 stor1; offset 160
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 sub_8eed2397;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 sub_13143c5d;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint8 stor12; offset 32
uint8 stor12; offset 40
uint8 stor12; offset 48
uint8 stor12; offset 56
address stor12;
address stor12; offset 64
address sub_8c336a25Address;
address sub_d8c61c0fAddress;
address burnWalletAddress;
address promoTokenAddress;
uint256 stor17;
uint8 stor18;
mapping of uint8 stor19;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor22;
mapping of struct stor23;

function swapThreshold() {
    return swapThreshold
}

function burnWallet() {
    return burnWalletAddress
}

function sub_13143c5d(?) {
    return sub_13143c5d
}

function promoToken() {
    return promoTokenAddress
}

function swapEnabled() {
    return bool(uint8(stor1.field_208))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function sub_8c336a25(?) {
    return sub_8c336a25Address
}

function owner() {
    return owner
}

function sub_8eed2397(?) {
    return sub_8eed2397
}

function sub_c3ec7b59(?) {
    return bool(uint8(stor1.field_192))
}

function totalTokensBurned() {
    return balanceOf[stor15]
}

function sub_d8c61c0f(?) {
    return sub_d8c61c0fAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_3747434b(?) {
    return stor8, stor7, stor9, stor10, stor6
}

function sub_e819a4bf(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.field_0) = 0
}

function sub_08864c97(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor0
    stor0 = 1
}

function sub_5677c564(?) {
    if stor2 <= block.timestamp:
        return 0
    if stor2 < block.timestamp:
        revert with 0, 17
    return (stor2 - block.timestamp)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f373e4ab(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > !stor3:
        revert with 0, 17
    stor2 = block.timestamp + stor3
}

function sub_557fc28f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor1.field_0) = 0xffffff0000ffffffffff00ffffffffffffffffffffffffffffffffffffffffff and uint256(stor1.field_0)
}

function sub_afc4f2ac(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(arg1))
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_5556e366(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(bool(arg2))
}

function sub_fba879b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)].field_512 = uint8(bool(arg2))
}

function sub_441b0312(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor1.field_192) = uint64(bool(arg1))
    emit 0x88ea09c8: bool(uint8(bool(arg1)))
}

function sub_8978cc5f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 720 * 24 * 3600
    if stor2 > !arg1:
        revert with 0, 17
    stor2 += arg1
    emit 0x13c33643: stor2
}

function sub_a83392af(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint16(arg1) <= 50
    swapThreshold = uint16(arg1)
    emit 0x1b3a4615: uint16(arg1)
}

function sub_8f6b0174(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.field_208 % 281474976710656 = bool(arg1) % 281474976710656
    emit 0x30cae756: bool(uint8(bool(arg1)))
}

function sub_20ee36f4(?) {
    return uint8(stor12.field_0), 
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_48),
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_24)
}

function sub_a2b8ee39(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor6
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    if stor6 < arg1:
        revert with 0, 17
    stor6 -= arg1
}

function sub_b63331a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor8
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    if stor8 < arg1:
        revert with 0, 17
    stor8 -= arg1
}

function sub_3fa8a2bc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= stor10
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    if stor10 < arg1:
        revert with 0, 17
    stor10 -= arg1
}

function sub_2c768020(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = uint8(bool(arg2))
    stor23[address(arg1)].field_512 = 0
    stor23[address(arg1)].field_520 = 1
    emit 0x6223759e: bool(arg2), address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d8c18671(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1) != this.address
    require sub_d8c61c0fAddress != address(arg1)
    promoTokenAddress = address(arg1)
    stor17 = arg2
    stor18 = uint8(bool(arg3))
    emit 0x6b6f82b0: arg2, bool(uint8(bool(arg3))), address(arg1)
}

function sub_949783f9(?) {
    require stor23[address(msg.sender)].field_520
    stor23[address(msg.sender)].field_520 = 0
    if sub_8eed2397 > !balanceOf[address(msg.sender)]:
        revert with 0, 17
    sub_8eed2397 += balanceOf[address(msg.sender)]
    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
        revert with 0, 17
    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
    if stor23[address(msg.sender)].field_256 > -1:
        revert with 0, 17
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner/Spender address cannot be 0.'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function rewardsOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor23[address(arg1)].field_520:
        return 0
    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
        revert with 0, 17
    if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
        if stor23[address(arg1)].field_256 > -1:
            revert with 0, 17
        return stor23[address(arg1)].field_256
    if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
        revert with 0, 17
    if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
        revert with 0, 17
    return (stor23[address(arg1)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64))
}

function sub_ec79d52a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require sub_d8c61c0fAddress != address(arg1)
    require address(arg1) != this.address
    require promoTokenAddress != address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cdb07025(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.value > 0
    require ext_code.size(sub_d8c61c0fAddress)
    staticcall sub_d8c61c0fAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if stor7 > !msg.value:
        revert with 0, 17
    stor7 += msg.value
    uint8(stor1.field_216) = 1
    require ext_code.size(address(stor12.field_64))
    call address(stor12.field_64).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args address(this.address), balanceOf[this.address], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    uint8(stor1.field_216) = 0
    require ext_code.size(sub_d8c61c0fAddress)
    staticcall sub_d8c61c0fAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    emit 0xb74c8a02: balanceOf[this.address], msg.value
}

function sub_3143be11(?) {
    require calldata.size - 4 >= 256
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    require arg8 == uint8(arg8)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(arg1) <= 15
    require uint8(arg2) <= 15
    require uint8(arg3) <= 1
    if uint8(arg4) > -uint8(arg5) + 255:
        revert with 0, 17
    if uint8(uint8(arg5) + uint8(arg4)) > -uint8(arg6) + 255:
        revert with 0, 17
    if uint8(uint8(arg6) + uint8(uint8(arg5) + uint8(arg4))) > -uint8(arg7) + 255:
        revert with 0, 17
    if uint8(uint8(arg7) + uint8(uint8(arg6) + uint8(uint8(arg5) + uint8(arg4)))) > -uint8(arg8) + 255:
        revert with 0, 17
    require uint8(uint8(arg8) + uint8(uint8(arg7) + uint8(uint8(arg6) + uint8(uint8(arg5) + uint8(arg4))))) <= 100
    uint8(stor12.field_0) = uint8(arg1)
    uint8(stor12.field_8) = uint8(arg2)
    uint8(stor12.field_16) = uint8(arg3)
    uint8(stor12.field_32) = uint8(arg4)
    uint8(stor12.field_56) = uint8(arg5)
    uint8(stor12.field_48) = uint8(arg6)
    uint8(stor12.field_40) = uint8(arg7)
    uint8(stor12.field_24) = uint8(arg8)
    emit 0x12d564f2: uint8(stor12.field_0), uint8(stor12.field_0), uint8(stor12.field_0), uint8(stor12.field_0), uint8(stor12.field_56), uint8(stor12.field_0), uint8(stor12.field_0), uint8(stor12.field_24)
}

function sub_b7653c3b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 720 * 24 * 3600 > !stor2:
        revert with 0, 17
    require block.timestamp >= stor2 + (720 * 24 * 3600)
    require ext_code.size(sub_d8c61c0fAddress)
    staticcall sub_d8c61c0fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sub_d8c61c0fAddress)
    call sub_d8c61c0fAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor12.field_0), 100 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor1.field_224) = 1
    require ext_code.size(address(stor12.field_64))
    call address(stor12.field_64).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), 100 * ext_call.return_data[0] / 100, 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor1.field_224) = 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if stor8 > -1:
        revert with 0, 17
}

function sub_2628d597(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        require stor23[address(arg1)].field_520
        stor23[address(arg1)].field_520 = 0
        if sub_8eed2397 > !balanceOf[address(arg1)]:
            revert with 0, 17
        sub_8eed2397 += balanceOf[address(arg1)]
        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
            revert with 0, 17
        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
        if stor23[address(arg1)].field_256 > -1:
            revert with 0, 17
    else:
        require not stor23[address(arg1)].field_520
        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
            revert with 0, 17
        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                revert with 0, 17
            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
            if stor23[address(arg1)].field_256 > -1:
                revert with 0, 17
        else:
            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                revert with 0, 17
            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                revert with 0, 17
            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
            if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                revert with 0, 17
            stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
        stor23[address(arg1)].field_520 = 1
}

function sub_a9fbbfe7(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor0
    if balanceOf[address(this.address)] < 10^17:
        revert with 0, 17
    if stor4 and balanceOf[address(this.address)] > -1 / stor4:
        revert with 0, 17
    if stor4 * balanceOf[address(this.address)] <= stor23[address(this.address)].field_0:
        balanceOf[address(this.address)] -= 10^17
        if not stor23[address(this.address)].field_520:
            if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                revert with 0, 17
            stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
            if stor23[address(this.address)].field_256 > -1:
                revert with 0, 17
    else:
        if stor4 * balanceOf[address(this.address)] < stor23[address(this.address)].field_0:
            revert with 0, 17
        balanceOf[address(this.address)] -= 10^17
        if not stor23[address(this.address)].field_520:
            if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                revert with 0, 17
            stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
            if stor23[address(this.address)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64):
                revert with 0, 17
            stor23[address(this.address)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64
    if balanceOf[address(msg.sender)] > -100000000000000001:
        revert with 0, 17
    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
        revert with 0, 17
    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
        balanceOf[address(msg.sender)] += 10^17
        if not stor23[address(msg.sender)].field_520:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
            if stor23[address(msg.sender)].field_256 > -1:
                revert with 0, 17
    else:
        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
            revert with 0, 17
        balanceOf[address(msg.sender)] += 10^17
        if not stor23[address(msg.sender)].field_520:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                revert with 0, 17
            stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
    emit 0xfeddf252: 10^17, this.address, msg.sender
}

function sub_db50543d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not arg1:
        if stor8 > !msg.value:
            revert with 0, 17
        stor8 += msg.value
    else:
        if msg.value and uint8(stor12.field_32) > -1 / msg.value:
            revert with 0, 17
        if msg.value and uint8(stor12.field_40) > -1 / msg.value:
            revert with 0, 17
        if msg.value and uint8(stor12.field_24) > -1 / msg.value:
            revert with 0, 17
        if msg.value * uint8(stor12.field_32) / 100 > !(msg.value * uint8(stor12.field_40) / 100):
            revert with 0, 17
        if (msg.value * uint8(stor12.field_32) / 100) + (msg.value * uint8(stor12.field_40) / 100) > !(msg.value * uint8(stor12.field_24) / 100):
            revert with 0, 17
        if msg.value < (msg.value * uint8(stor12.field_32) / 100) + (msg.value * uint8(stor12.field_40) / 100) + (msg.value * uint8(stor12.field_24) / 100):
            revert with 0, 17
        if 0 == sub_8eed2397:
            if msg.value * uint8(stor12.field_32) / 100 > !(msg.value - (msg.value * uint8(stor12.field_32) / 100) - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100)):
                revert with 0, 17
            if msg.value - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100) > !(msg.value * uint8(stor12.field_40) / 100):
                revert with 0, 17
            if msg.value - (msg.value * uint8(stor12.field_24) / 100) > !(msg.value * uint8(stor12.field_24) / 100):
                revert with 0, 17
            if stor8 > !msg.value:
                revert with 0, 17
            stor8 += msg.value
        else:
            if stor8 > !(msg.value * uint8(stor12.field_32) / 100):
                revert with 0, 17
            stor8 += msg.value * uint8(stor12.field_32) / 100
            if stor10 > !(msg.value * uint8(stor12.field_40) / 100):
                revert with 0, 17
            stor10 += msg.value * uint8(stor12.field_40) / 100
            if stor6 > !(msg.value * uint8(stor12.field_24) / 100):
                revert with 0, 17
            stor6 += msg.value * uint8(stor12.field_24) / 100
            if stor9 > !(msg.value - (msg.value * uint8(stor12.field_32) / 100) - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100)):
                revert with 0, 17
            stor9 = stor9 + msg.value - (msg.value * uint8(stor12.field_32) / 100) - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100)
            if msg.value - (msg.value * uint8(stor12.field_32) / 100) - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100) > 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not sub_8eed2397:
                revert with 0, 18
            if stor4 > !(msg.value - (msg.value * uint8(stor12.field_32) / 100) - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100) << 64 / sub_8eed2397):
                revert with 0, 17
            stor4 += msg.value - (msg.value * uint8(stor12.field_32) / 100) - (msg.value * uint8(stor12.field_40) / 100) - (msg.value * uint8(stor12.field_24) / 100) << 64 / sub_8eed2397
    emit 0x37afad91: bool(arg1), msg.value
}

function sub_73e4ab5f(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require block.timestamp >= stor2
    if block.timestamp > !stor3:
        revert with 0, 17
    stor2 = block.timestamp + stor3
    if not uint8(stor1.field_192):
    else:
        if uint8(arg1) > 20:
            require ext_code.size(sub_d8c61c0fAddress)
            staticcall sub_d8c61c0fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 20 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(sub_d8c61c0fAddress)
            call sub_d8c61c0fAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor12.field_0), 20 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            uint8(stor1.field_224) = 1
            require ext_code.size(address(stor12.field_64))
            call address(stor12.field_64).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), 20 * ext_call.return_data[0] / 100, 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint8(stor1.field_224) = 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not arg2:
                if stor8 > -1:
                    revert with 0, 17
            else:
                if False and uint8(stor12.field_32) > 0:
                    revert with 0, 17
                if False and uint8(stor12.field_40) > 0:
                    revert with 0, 17
                if False and uint8(stor12.field_24) > 0:
                    revert with 0, 17
                if stor8 > -1:
                    revert with 0, 17
                if 0 == sub_8eed2397:
                else:
                    if stor10 > -1:
                        revert with 0, 17
                    if stor6 > -1:
                        revert with 0, 17
                    if stor9 > -1:
                        revert with 0, 17
                    if not sub_8eed2397:
                        revert with 0, 18
                    if stor4 > !(0 / sub_8eed2397):
                        revert with 0, 17
                    stor4 += 0 / sub_8eed2397
            emit 0x94c6a060: 20, bool(arg2)
        else:
            if uint8(arg1):
                require ext_code.size(sub_d8c61c0fAddress)
                staticcall sub_d8c61c0fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and uint8(arg1) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_d8c61c0fAddress)
                call sub_d8c61c0fAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor12.field_0), ext_call.return_data[0] * uint8(arg1) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                uint8(stor1.field_224) = 1
                require ext_code.size(address(stor12.field_64))
                call address(stor12.field_64).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(this.address), ext_call.return_data[0] * uint8(arg1) / 100, 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint8(stor1.field_224) = 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not arg2:
                    if stor8 > -1:
                        revert with 0, 17
                else:
                    if False and uint8(stor12.field_32) > 0:
                        revert with 0, 17
                    if False and uint8(stor12.field_40) > 0:
                        revert with 0, 17
                    if False and uint8(stor12.field_24) > 0:
                        revert with 0, 17
                    if stor8 > -1:
                        revert with 0, 17
                    if 0 == sub_8eed2397:
                    else:
                        if stor10 > -1:
                            revert with 0, 17
                        if stor6 > -1:
                            revert with 0, 17
                        if stor9 > -1:
                            revert with 0, 17
                        if not sub_8eed2397:
                            revert with 0, 18
                        if stor4 > !(0 / sub_8eed2397):
                            revert with 0, 17
                        stor4 += 0 / sub_8eed2397
                emit 0x94c6a060: arg1 << 248, bool(arg2)
}

function claimBNB() {
    require not stor23[address(msg.sender)].field_520
    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
        revert with 0, 17
    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
        if stor23[address(msg.sender)].field_256 > -1:
            revert with 0, 17
        require not uint8(stor1.field_168)
        require stor23[address(msg.sender)].field_256 > 0
        uint8(stor1.field_168) = 1
        if stor23[address(msg.sender)].field_520:
            require stor23[address(msg.sender)].field_256 <= 0
        else:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
        if not stor23[address(msg.sender)].field_520:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256:
            revert with 0, 17
        stor23[address(msg.sender)].field_256 = 0
        if sub_13143c5d > !stor23[address(msg.sender)].field_256:
            revert with 0, 17
        sub_13143c5d += stor23[address(msg.sender)].field_256
        call msg.sender with:
           value stor23[address(msg.sender)].field_256 wei
             gas gas_remaining wei
        require ext_call.success
        uint8(stor1.field_168) = 0
        emit 0x85f2e985: stor23[address(msg.sender)].field_256, msg.sender, msg.sender
    else:
        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
            revert with 0, 17
        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
            revert with 0, 17
        require not uint8(stor1.field_168)
        require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
        uint8(stor1.field_168) = 1
        if stor23[address(msg.sender)].field_520:
            require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= 0
        else:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= stor23[address(msg.sender)].field_256
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
        if not stor23[address(msg.sender)].field_520:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
            revert with 0, 17
        stor23[address(msg.sender)].field_256 = -Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if sub_13143c5d > !(stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)):
            revert with 0, 17
        sub_13143c5d = sub_13143c5d + stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
        call msg.sender with:
           value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
             gas gas_remaining wei
        require ext_call.success
        uint8(stor1.field_168) = 0
        emit 0x85f2e985: (stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)), msg.sender, msg.sender
}

function sub_367a2d68(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require not stor23[address(msg.sender)].field_520
    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
        revert with 0, 17
    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
        if stor23[address(msg.sender)].field_256 > -1:
            revert with 0, 17
        require not uint8(stor1.field_168)
        require stor23[address(msg.sender)].field_256 > 0
        uint8(stor1.field_168) = 1
        if stor23[address(msg.sender)].field_520:
            require stor23[address(msg.sender)].field_256 <= 0
        else:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
        if not stor23[address(msg.sender)].field_520:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256:
            revert with 0, 17
        stor23[address(msg.sender)].field_256 = 0
        if sub_13143c5d > !stor23[address(msg.sender)].field_256:
            revert with 0, 17
        sub_13143c5d += stor23[address(msg.sender)].field_256
        call address(arg1) with:
           value stor23[address(msg.sender)].field_256 wei
             gas gas_remaining wei
        require ext_call.success
        uint8(stor1.field_168) = 0
        emit 0x85f2e985: stor23[address(msg.sender)].field_256, msg.sender, address(arg1)
    else:
        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
            revert with 0, 17
        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
            revert with 0, 17
        require not uint8(stor1.field_168)
        require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
        uint8(stor1.field_168) = 1
        if stor23[address(msg.sender)].field_520:
            require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= 0
        else:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= stor23[address(msg.sender)].field_256
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
        if not stor23[address(msg.sender)].field_520:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
            revert with 0, 17
        stor23[address(msg.sender)].field_256 = -Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if sub_13143c5d > !(stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)):
            revert with 0, 17
        sub_13143c5d = sub_13143c5d + stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
        call address(arg1) with:
           value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
             gas gas_remaining wei
        require ext_call.success
        uint8(stor1.field_168) = 0
        emit 0x85f2e985: (stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)), msg.sender, address(arg1)
}

function sub_24b71863(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor23[address(msg.sender)].field_520:
        require not stor22[address(arg1)]
        require not uint8(stor1.field_168)
        revert
    else:
        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
            revert with 0, 17
        else:
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                else:
                    require not stor22[address(arg1)]
                    require not uint8(stor1.field_168)
                    require stor23[address(msg.sender)].field_256 > 0
                    mem[100] = msg.sender
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        uint8(stor1.field_168) = 1
                        mem[ceil32(return_data.size) + 96] = 2
                        require ext_code.size(address(stor12.field_64))
                        staticcall address(stor12.field_64).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = address(arg1)
                            mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 0
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 356
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                            require ext_code.size(address(stor12.field_64))
                            call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value stor23[address(msg.sender)].field_256 wei
                                 gas gas_remaining wei
                                args 0, 128, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                uint8(stor1.field_168) = 0
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] < ext_call.return_data[0]
                                    revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                else:
                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                        revert with 0, 17
                    else:
                        require not stor22[address(arg1)]
                        require not uint8(stor1.field_168)
                        require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                        mem[100] = msg.sender
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint8(stor1.field_168) = 1
                            mem[ceil32(return_data.size) + 96] = 2
                            require ext_code.size(address(stor12.field_64))
                            staticcall address(stor12.field_64).WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 160] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = 0
                                mem[(2 * ceil32(return_data.size)) + 228] = 128
                                mem[(2 * ceil32(return_data.size)) + 324] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 128
                                t = (2 * ceil32(return_data.size)) + 356
                                while idx < mem[ceil32(return_data.size) + 96]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                                require ext_code.size(address(stor12.field_64))
                                call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
                                     gas gas_remaining wei
                                    args 0, 128, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    uint8(stor1.field_168) = 0
                                    require ext_code.size(address(arg1))
                                    staticcall address(arg1).0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] < ext_call.return_data[0]
                                        revert with 0, 17
}

function sub_3dbd44fd(?) {
    require stor18
    require ext_code.size(promoTokenAddress)
    staticcall promoTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if stor23[address(msg.sender)].field_520:
            require not stor22[stor16]
            require not uint8(stor1.field_168)
            revert
        else:
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                    if stor23[address(msg.sender)].field_256 > -1:
                        revert with 0, 17
                    else:
                        require not stor22[stor16]
                        require not uint8(stor1.field_168)
                        require stor23[address(msg.sender)].field_256 > 0
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        require ext_code.size(promoTokenAddress)
                        staticcall promoTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint8(stor1.field_168) = 1
                            require ext_code.size(address(stor12.field_64))
                            staticcall address(stor12.field_64).WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 160] = promoTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 0
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = (4 * ceil32(return_data.size)) + 356
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor12.field_64))
                                call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor23[address(msg.sender)].field_256 wei
                                     gas gas_remaining wei
                                    args 0, 128, msg.sender, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    uint8(stor1.field_168) = 0
                                    require ext_code.size(promoTokenAddress)
                                    staticcall promoTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] < ext_call.return_data[0]
                                        revert with 0, 17
                else:
                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                        revert with 0, 17
                    else:
                        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                            revert with 0, 17
                        else:
                            require not stor22[stor16]
                            require not uint8(stor1.field_168)
                            require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            require ext_code.size(promoTokenAddress)
                            staticcall promoTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                uint8(stor1.field_168) = 1
                                require ext_code.size(address(stor12.field_64))
                                staticcall address(stor12.field_64).WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 160] = promoTokenAddress
                                    mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 128
                                    t = (4 * ceil32(return_data.size)) + 356
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor12.field_64))
                                    call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
                                         gas gas_remaining wei
                                        args 0, 128, msg.sender, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        uint8(stor1.field_168) = 0
                                        require ext_code.size(promoTokenAddress)
                                        staticcall promoTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] < ext_call.return_data[0]
                                            revert with 0, 17
}

function sub_04dbc55c(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint16(arg1) <= 50
    uint8(stor1.field_200) = 1
    if uint16(arg1) and balanceOf[stor14] > -1 / uint16(arg1):
        revert with 0, 17
    if balanceOf[this.address] >= uint16(arg1) * balanceOf[stor14] / 1000:
        if uint16(arg1) * balanceOf[stor14] / 1000 and uint8(stor12.field_48) > -1 / uint16(arg1) * balanceOf[stor14] / 1000:
            revert with 0, 17
        if uint16(arg1) * balanceOf[stor14] / 1000 < uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100:
            revert with 0, 17
        if uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 < uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2:
            revert with 0, 17
        if (uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100) - (uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) > !((uint16(arg1) * balanceOf[stor14] / 1000) - (uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100)):
            revert with 0, 17
        mem[128] = this.address
        require ext_code.size(address(stor12.field_64))
        staticcall address(stor12.field_64).WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = -(uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (uint16(arg1) * balanceOf[stor14] / 1000)
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(stor12.field_64))
        call address(stor12.field_64).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args -(uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (uint16(arg1) * balanceOf[stor14] / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if False and (uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100) - (uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) > 0:
            revert with 0, 17
        if not -(uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (uint16(arg1) * balanceOf[stor14] / 1000):
            revert with 0, 18
        if stor7 > !(0 / -(uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (uint16(arg1) * balanceOf[stor14] / 1000)):
            revert with 0, 17
        stor7 += 0 / -(uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (uint16(arg1) * balanceOf[stor14] / 1000)
        uint8(stor1.field_216) = 1
        require ext_code.size(address(stor12.field_64))
        call address(stor12.field_64).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value 0 / -(uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (uint16(arg1) * balanceOf[stor14] / 1000) wei
             gas gas_remaining wei
            args address(this.address), Mask(255, 1, uint16(arg1) * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100), 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        uint8(stor1.field_216) = 0
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if False and uint8(stor12.field_32) > 0:
            revert with 0, 17
        if False and uint8(stor12.field_40) > 0:
            revert with 0, 17
        if False and uint8(stor12.field_24) > 0:
            revert with 0, 17
        if stor8 > -1:
            revert with 0, 17
        if 0 == sub_8eed2397:
        else:
            if stor10 > -1:
                revert with 0, 17
            if stor6 > -1:
                revert with 0, 17
            if stor9 > -1:
                revert with 0, 17
            if not sub_8eed2397:
                revert with 0, 18
            if stor4 > !(0 / sub_8eed2397):
                revert with 0, 17
            stor4 += 0 / sub_8eed2397
    else:
        if arg2:
            if balanceOf[this.address] and uint8(stor12.field_48) > -1 / balanceOf[this.address]:
                revert with 0, 17
            if balanceOf[this.address] < balanceOf[this.address] * uint8(stor12.field_48) / 100:
                revert with 0, 17
            if balanceOf[this.address] * uint8(stor12.field_48) / 100 < balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2:
                revert with 0, 17
            if (balanceOf[this.address] * uint8(stor12.field_48) / 100) - (balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor12.field_48) / 100)):
                revert with 0, 17
            mem[128] = this.address
            require ext_code.size(address(stor12.field_64))
            staticcall address(stor12.field_64).WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) + balanceOf[this.address]
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(stor12.field_64))
            call address(stor12.field_64).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (balanceOf[this.address] * uint8(stor12.field_48) / 100) - (balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) > 0:
                revert with 0, 17
            if not -(balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) + balanceOf[this.address]:
                revert with 0, 18
            if stor7 > !(0 / -(balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) + balanceOf[this.address]):
                revert with 0, 17
            stor7 += 0 / -(balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) + balanceOf[this.address]
            uint8(stor1.field_216) = 1
            require ext_code.size(address(stor12.field_64))
            call address(stor12.field_64).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(balanceOf[this.address] * uint8(stor12.field_48) / 100 / 2) + balanceOf[this.address] wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor12.field_48) / 100), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            uint8(stor1.field_216) = 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and uint8(stor12.field_32) > 0:
                revert with 0, 17
            if False and uint8(stor12.field_40) > 0:
                revert with 0, 17
            if False and uint8(stor12.field_24) > 0:
                revert with 0, 17
            if stor8 > -1:
                revert with 0, 17
            if 0 == sub_8eed2397:
            else:
                if stor10 > -1:
                    revert with 0, 17
                if stor6 > -1:
                    revert with 0, 17
                if stor9 > -1:
                    revert with 0, 17
                if not sub_8eed2397:
                    revert with 0, 18
                if stor4 > !(0 / sub_8eed2397):
                    revert with 0, 17
                stor4 += 0 / sub_8eed2397
    uint8(stor1.field_200) = 0
    emit 0x5ab5a5d4: uint16(stor1.field_0), bool(arg2)
}

function compound() {
    require not uint8(stor1.field_168)
    require not stor23[address(msg.sender)].field_520
    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
        revert with 0, 17
    else:
        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
            if stor23[address(msg.sender)].field_256 > -1:
                revert with 0, 17
            else:
                require stor23[address(msg.sender)].field_256 > 0
                uint256(stor1.field_0) = msg.sender or Mask(96, 160, uint256(stor1.field_0))
                if stor23[address(msg.sender)].field_520:
                    require not stor22[address(this.address)]
                    require not uint8(stor1.field_168)
                    revert
                else:
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    else:
                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                            if stor23[address(msg.sender)].field_256 > -1:
                                revert with 0, 17
                            else:
                                require not stor22[address(this.address)]
                                require not uint8(stor1.field_168)
                                require stor23[address(msg.sender)].field_256 > 0
                                mem[100] = msg.sender
                                require ext_code.size(this.address)
                                staticcall this.address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    uint8(stor1.field_168) = 1
                                    mem[ceil32(return_data.size) + 96] = 2
                                    require ext_code.size(address(stor12.field_64))
                                    staticcall address(stor12.field_64).WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 160] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (2 * ceil32(return_data.size)) + 356
                                        while idx < mem[ceil32(return_data.size) + 96]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                                        require ext_code.size(address(stor12.field_64))
                                        call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value stor23[address(msg.sender)].field_256 wei
                                             gas gas_remaining wei
                                            args 0, 128, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor1.field_168) = 0
                                            require ext_code.size(this.address)
                                            staticcall this.address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] < ext_call.return_data[0]
                                                revert with 0, 17
                        else:
                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                revert with 0, 17
                            else:
                                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                    revert with 0, 17
                                else:
                                    require not stor22[address(this.address)]
                                    require not uint8(stor1.field_168)
                                    require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                                    mem[100] = msg.sender
                                    require ext_code.size(this.address)
                                    staticcall this.address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        uint8(stor1.field_168) = 1
                                        mem[ceil32(return_data.size) + 96] = 2
                                        require ext_code.size(address(stor12.field_64))
                                        staticcall address(stor12.field_64).WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = 0
                                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                                            mem[(2 * ceil32(return_data.size)) + 324] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 356
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                                            require ext_code.size(address(stor12.field_64))
                                            call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
                                                 gas gas_remaining wei
                                                args 0, 128, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                uint8(stor1.field_168) = 0
                                                require ext_code.size(this.address)
                                                staticcall this.address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] < ext_call.return_data[0]
                                                    revert with 0, 17
        else:
            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                revert with 0, 17
            else:
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                else:
                    require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                    uint256(stor1.field_0) = msg.sender or Mask(96, 160, uint256(stor1.field_0))
                    if stor23[address(msg.sender)].field_520:
                        require not stor22[address(this.address)]
                        require not uint8(stor1.field_168)
                        revert
                    else:
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        else:
                            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                if stor23[address(msg.sender)].field_256 > -1:
                                    revert with 0, 17
                                else:
                                    require not stor22[address(this.address)]
                                    require not uint8(stor1.field_168)
                                    require stor23[address(msg.sender)].field_256 > 0
                                    mem[100] = msg.sender
                                    require ext_code.size(this.address)
                                    staticcall this.address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args msg.sender
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        uint8(stor1.field_168) = 1
                                        mem[ceil32(return_data.size) + 96] = 2
                                        require ext_code.size(address(stor12.field_64))
                                        staticcall address(stor12.field_64).WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 160] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 196] = 0
                                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                                            mem[(2 * ceil32(return_data.size)) + 324] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 128
                                            t = (2 * ceil32(return_data.size)) + 356
                                            while idx < mem[ceil32(return_data.size) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                                            require ext_code.size(address(stor12.field_64))
                                            call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value stor23[address(msg.sender)].field_256 wei
                                                 gas gas_remaining wei
                                                args 0, 128, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                uint8(stor1.field_168) = 0
                                                require ext_code.size(this.address)
                                                staticcall this.address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] < ext_call.return_data[0]
                                                    revert with 0, 17
                            else:
                                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                    revert with 0, 17
                                else:
                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                        revert with 0, 17
                                    else:
                                        require not stor22[address(this.address)]
                                        require not uint8(stor1.field_168)
                                        require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                                        mem[100] = msg.sender
                                        require ext_code.size(this.address)
                                        staticcall this.address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            uint8(stor1.field_168) = 1
                                            mem[ceil32(return_data.size) + 96] = 2
                                            require ext_code.size(address(stor12.field_64))
                                            staticcall address(stor12.field_64).WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 160] = this.address
                                                mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 196] = 0
                                                mem[(2 * ceil32(return_data.size)) + 228] = 128
                                                mem[(2 * ceil32(return_data.size)) + 324] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 128
                                                t = (2 * ceil32(return_data.size)) + 356
                                                while idx < mem[ceil32(return_data.size) + 96]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                                                mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                                                require ext_code.size(address(stor12.field_64))
                                                call address(stor12.field_64).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
                                                     gas gas_remaining wei
                                                    args 0, 128, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    uint8(stor1.field_168) = 0
                                                    require ext_code.size(this.address)
                                                    staticcall this.address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] < ext_call.return_data[0]
                                                        revert with 0, 17
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Cannot be zero address.'
    if not arg1:
        revert with 0, 'Cannot be zero address.'
    if stor23[address(msg.sender)].field_512:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
            revert with 0, 17
        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
            balanceOf[address(msg.sender)] -= arg2
            if not stor23[address(msg.sender)].field_520:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
        else:
            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if not stor23[address(msg.sender)].field_520:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
            revert with 0, 17
        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
            balanceOf[address(arg1)] += arg2
            if not stor23[address(arg1)].field_520:
                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                if stor23[address(arg1)].field_256 > -1:
                    revert with 0, 17
        else:
            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            if not stor23[address(arg1)].field_520:
                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
        emit 0xfeddf252: arg2, msg.sender, arg1
        address(stor1.field_0) = 0
    else:
        if stor23[address(arg1)].field_512:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                balanceOf[address(msg.sender)] -= arg2
                if not stor23[address(msg.sender)].field_520:
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                    if stor23[address(msg.sender)].field_256 > -1:
                        revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if not stor23[address(msg.sender)].field_520:
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                        revert with 0, 17
                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                balanceOf[address(arg1)] += arg2
                if not stor23[address(arg1)].field_520:
                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                    if stor23[address(arg1)].field_256 > -1:
                        revert with 0, 17
            else:
                if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                if not stor23[address(arg1)].field_520:
                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                    if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                        revert with 0, 17
                    stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
            emit 0xfeddf252: arg2, msg.sender, arg1
            address(stor1.field_0) = 0
        else:
            if uint8(stor1.field_216):
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                    balanceOf[address(msg.sender)] -= arg2
                    if not stor23[address(msg.sender)].field_520:
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                        if stor23[address(msg.sender)].field_256 > -1:
                            revert with 0, 17
                else:
                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if not stor23[address(msg.sender)].field_520:
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                            revert with 0, 17
                        stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                    revert with 0, 17
                if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                    balanceOf[address(arg1)] += arg2
                    if not stor23[address(arg1)].field_520:
                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                        if stor23[address(arg1)].field_256 > -1:
                            revert with 0, 17
                else:
                    if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    if not stor23[address(arg1)].field_520:
                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                        if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                            revert with 0, 17
                        stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                emit 0xfeddf252: arg2, msg.sender, arg1
                address(stor1.field_0) = 0
            else:
                if uint8(stor1.field_224):
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                        balanceOf[address(msg.sender)] -= arg2
                        if not stor23[address(msg.sender)].field_520:
                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                            if stor23[address(msg.sender)].field_256 > -1:
                                revert with 0, 17
                    else:
                        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if not stor23[address(msg.sender)].field_520:
                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                revert with 0, 17
                            stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                        revert with 0, 17
                    if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                        balanceOf[address(arg1)] += arg2
                        if not stor23[address(arg1)].field_520:
                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                            if stor23[address(arg1)].field_256 > -1:
                                revert with 0, 17
                    else:
                        if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        if not stor23[address(arg1)].field_520:
                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                            if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                revert with 0, 17
                            stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                    emit 0xfeddf252: arg2, msg.sender, arg1
                    address(stor1.field_0) = 0
                else:
                    if address(stor1.field_0) == msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                            balanceOf[address(msg.sender)] -= arg2
                            if not stor23[address(msg.sender)].field_520:
                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                if stor23[address(msg.sender)].field_256 > -1:
                                    revert with 0, 17
                        else:
                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if not stor23[address(msg.sender)].field_520:
                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                    revert with 0, 17
                                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                            revert with 0, 17
                        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                            balanceOf[address(arg1)] += arg2
                            if not stor23[address(arg1)].field_520:
                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                if stor23[address(arg1)].field_256 > -1:
                                    revert with 0, 17
                        else:
                            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                            if not stor23[address(arg1)].field_520:
                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                    revert with 0, 17
                                stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                        emit 0xfeddf252: arg2, msg.sender, arg1
                        address(stor1.field_0) = 0
                    else:
                        if address(stor1.field_0) == arg1:
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                revert with 0, 17
                            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                balanceOf[address(msg.sender)] -= arg2
                                if not stor23[address(msg.sender)].field_520:
                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                    if stor23[address(msg.sender)].field_256 > -1:
                                        revert with 0, 17
                            else:
                                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if not stor23[address(msg.sender)].field_520:
                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                        revert with 0, 17
                                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                revert with 0, 17
                            if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                balanceOf[address(arg1)] += arg2
                                if not stor23[address(arg1)].field_520:
                                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                    if stor23[address(arg1)].field_256 > -1:
                                        revert with 0, 17
                            else:
                                if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                                if not stor23[address(arg1)].field_520:
                                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                    if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                        revert with 0, 17
                                    stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            address(stor1.field_0) = 0
                        else:
                            require uint8(stor1.field_160)
                            if stor22[address(msg.sender)]:
                                require not stor19[address(arg1)]
                                if arg2 and uint8(stor12.field_0) > -1 / arg2:
                                    revert with 0, 17
                                if arg2 * uint8(stor12.field_0) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                    revert with 0, 17
                                if arg2 < 100 * arg2 * uint8(stor12.field_0) / 10000:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                    revert with 0, 17
                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if not stor23[address(msg.sender)].field_520:
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                        if stor23[address(msg.sender)].field_256 > -1:
                                            revert with 0, 17
                                else:
                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if not stor23[address(msg.sender)].field_520:
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                            revert with 0, 17
                                        stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                if balanceOf[this.address] > !(100 * arg2 * uint8(stor12.field_0) / 10000):
                                    revert with 0, 17
                                if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                    revert with 0, 17
                                if stor4 * balanceOf[address(this.address)] <= stor23[address(this.address)].field_0:
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(this.address)].field_520:
                                        if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                        if stor23[address(this.address)].field_256 > -1:
                                            revert with 0, 17
                                else:
                                    if stor4 * balanceOf[address(this.address)] < stor23[address(this.address)].field_0:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(this.address)].field_520:
                                        if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                        if stor23[address(this.address)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64):
                                            revert with 0, 17
                                        stor23[address(this.address)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64
                                if balanceOf[address(arg1)] > !(arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)):
                                    revert with 0, 17
                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                    revert with 0, 17
                                if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(arg1)].field_520:
                                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                        if stor23[address(arg1)].field_256 > -1:
                                            revert with 0, 17
                                else:
                                    if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(arg1)].field_520:
                                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                        if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                            revert with 0, 17
                                        stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                                emit 0xfeddf252: (arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)), msg.sender, arg1
                                if arg2 < 100 * arg2 * uint8(stor12.field_0) / 10000:
                                    revert with 0, 17
                                if sub_8eed2397 > !(arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)):
                                    revert with 0, 17
                                sub_8eed2397 = sub_8eed2397 + arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)
                            else:
                                if not stor22[arg1]:
                                    if arg1 != msg.sender:
                                        require not stor19[address(msg.sender)]
                                        require not stor19[address(arg1)]
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                            balanceOf[address(msg.sender)] -= arg2
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                if stor23[address(msg.sender)].field_256 > -1:
                                                    revert with 0, 17
                                        else:
                                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                    revert with 0, 17
                                                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                            revert with 0, 17
                                        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                            balanceOf[address(arg1)] += arg2
                                            if not stor23[address(arg1)].field_520:
                                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                                if stor23[address(arg1)].field_256 > -1:
                                                    revert with 0, 17
                                        else:
                                            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                            if not stor23[address(arg1)].field_520:
                                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                                if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                                    revert with 0, 17
                                                stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                                        emit 0xfeddf252: arg2, msg.sender, arg1
                                    else:
                                        require not stor23[address(msg.sender)].field_520
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                            if stor23[address(msg.sender)].field_256 > -1:
                                                revert with 0, 17
                                            require not uint8(stor1.field_168)
                                            require stor23[address(msg.sender)].field_256 > 0
                                            uint8(stor1.field_168) = 1
                                            if stor23[address(msg.sender)].field_520:
                                                require stor23[address(msg.sender)].field_256 <= 0
                                            else:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                    require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                                    require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                            if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_256 = 0
                                            if sub_13143c5d > !stor23[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            sub_13143c5d += stor23[address(msg.sender)].field_256
                                            call arg1 with:
                                               value stor23[address(msg.sender)].field_256 wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                            uint8(stor1.field_168) = 0
                                            emit 0x85f2e985: stor23[address(msg.sender)].field_256, msg.sender, arg1
                                        else:
                                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                revert with 0, 17
                                            require not uint8(stor1.field_168)
                                            require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                                            uint8(stor1.field_168) = 1
                                            if stor23[address(msg.sender)].field_520:
                                                require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= 0
                                            else:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                    require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= stor23[address(msg.sender)].field_256
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                            if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_256 = -Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                            if sub_13143c5d > !(stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)):
                                                revert with 0, 17
                                            sub_13143c5d = sub_13143c5d + stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
                                            call arg1 with:
                                               value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                            uint8(stor1.field_168) = 0
                                            emit 0x85f2e985: (stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)), msg.sender, arg1
                                else:
                                    if uint8(stor1.field_208):
                                        if not uint8(stor1.field_200):
                                            uint8(stor1.field_200) = 1
                                            if swapThreshold and balanceOf[stor14] > -1 / swapThreshold:
                                                revert with 0, 17
                                            if balanceOf[this.address] >= swapThreshold * balanceOf[stor14] / 1000:
                                                if swapThreshold * balanceOf[stor14] / 1000 and uint8(stor12.field_48) > -1 / swapThreshold * balanceOf[stor14] / 1000:
                                                    revert with 0, 17
                                                if swapThreshold * balanceOf[stor14] / 1000 < swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100:
                                                    revert with 0, 17
                                                if swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 < swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2:
                                                    revert with 0, 17
                                                if (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100) - (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) > !((swapThreshold * balanceOf[stor14] / 1000) - (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100)):
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                require ext_code.size(address(stor12.field_64))
                                                staticcall address(stor12.field_64).WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000)
                                                idx = 0
                                                s = 128
                                                t = ceil32(return_data.size) + 388
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(stor12.field_64))
                                                call address(stor12.field_64).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if False and (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100) - (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) > 0:
                                                    revert with 0, 17
                                                if not -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000):
                                                    revert with 0, 18
                                                if stor7 > !(0 / -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000)):
                                                    revert with 0, 17
                                                stor7 += 0 / -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000)
                                                uint8(stor1.field_216) = 1
                                                require ext_code.size(address(stor12.field_64))
                                                call address(stor12.field_64).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000) wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                uint8(stor1.field_216) = 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if False and uint8(stor12.field_32) > 0:
                                                    revert with 0, 17
                                                if False and uint8(stor12.field_40) > 0:
                                                    revert with 0, 17
                                                if False and uint8(stor12.field_24) > 0:
                                                    revert with 0, 17
                                                if stor8 > -1:
                                                    revert with 0, 17
                                                if 0 == sub_8eed2397:
                                                else:
                                                    if stor10 > -1:
                                                        revert with 0, 17
                                                    if stor6 > -1:
                                                        revert with 0, 17
                                                    if stor9 > -1:
                                                        revert with 0, 17
                                                    if not sub_8eed2397:
                                                        revert with 0, 18
                                                    if stor4 > !(0 / sub_8eed2397):
                                                        revert with 0, 17
                                                    stor4 += 0 / sub_8eed2397
                                            uint8(stor1.field_200) = 0
                                    require not stor19[address(msg.sender)]
                                    if arg2 and uint8(stor12.field_8) > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 * uint8(stor12.field_8) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if 100 * arg2 * uint8(stor12.field_8) / 10000 and uint8(stor12.field_16) > -1 / 100 * arg2 * uint8(stor12.field_8) / 10000:
                                        revert with 0, 17
                                    if 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if arg2 < 100 * arg2 * uint8(stor12.field_8) / 10000:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if not stor23[address(msg.sender)].field_520:
                                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                            if stor23[address(msg.sender)].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if not stor23[address(msg.sender)].field_520:
                                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                    if 100 * arg2 * uint8(stor12.field_8) / 10000 < 100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000:
                                        revert with 0, 17
                                    if balanceOf[this.address] > !((100 * arg2 * uint8(stor12.field_8) / 10000) - (100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000)):
                                        revert with 0, 17
                                    if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[address(this.address)] <= stor23[address(this.address)].field_0:
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_8) / 10000) - (100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000)
                                        if not stor23[address(this.address)].field_520:
                                            if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                            if stor23[address(this.address)].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[address(this.address)] < stor23[address(this.address)].field_0:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_8) / 10000) - (100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000)
                                        if not stor23[address(this.address)].field_520:
                                            if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                            if stor23[address(this.address)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(this.address)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64
                                    if balanceOf[stor15] > !(100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000):
                                        revert with 0, 17
                                    if stor4 and balanceOf[stor15] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[stor15] <= stor23[stor15].field_0:
                                        balanceOf[stor15] += 100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000
                                        if not stor23[stor15].field_520:
                                            if stor4 and balanceOf[stor15] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[stor15].field_0 = stor4 * balanceOf[stor15]
                                            if stor23[stor15].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[stor15] < stor23[stor15].field_0:
                                            revert with 0, 17
                                        balanceOf[stor15] += 100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000
                                        if not stor23[stor15].field_520:
                                            if stor4 and balanceOf[stor15] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[stor15].field_0 = stor4 * balanceOf[stor15]
                                            if stor23[stor15].field_256 > !(Mask(192, 64, (stor4 * balanceOf[stor15]) - stor23[stor15].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[stor15].field_256 += Mask(192, 64, (stor4 * balanceOf[stor15]) - stor23[stor15].field_0) >> 64
                                    if balanceOf[address(arg1)] > !(arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)):
                                        revert with 0, 17
                                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)
                                        if not stor23[address(arg1)].field_520:
                                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                            if stor23[address(arg1)].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)
                                        if not stor23[address(arg1)].field_520:
                                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                            if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                                    emit 0xfeddf252: (arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)), msg.sender, arg1
                                    if sub_8eed2397 < arg2:
                                        revert with 0, 17
                                    sub_8eed2397 -= arg2
    return 1
}

function sub_572ec114(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require not stor0
    if not msg.sender:
        revert with 0, 'Cannot be zero address.'
    if not address(arg1):
        revert with 0, 'Cannot be zero address.'
    if stor23[address(msg.sender)].field_512:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
            revert with 0, 17
        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
            balanceOf[address(msg.sender)] -= arg2
            if not stor23[address(msg.sender)].field_520:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
        else:
            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if not stor23[address(msg.sender)].field_520:
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
            revert with 0, 17
        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
            balanceOf[address(arg1)] += arg2
            if not stor23[address(arg1)].field_520:
                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                if stor23[address(arg1)].field_256 > -1:
                    revert with 0, 17
        else:
            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            if not stor23[address(arg1)].field_520:
                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                    revert with 0, 17
                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                    revert with 0, 17
                stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
        emit 0xfeddf252: arg2, msg.sender, address(arg1)
        address(stor1.field_0) = 0
    else:
        if stor23[address(arg1)].field_512:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                balanceOf[address(msg.sender)] -= arg2
                if not stor23[address(msg.sender)].field_520:
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                    if stor23[address(msg.sender)].field_256 > -1:
                        revert with 0, 17
            else:
                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if not stor23[address(msg.sender)].field_520:
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                        revert with 0, 17
                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                revert with 0, 17
            if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                balanceOf[address(arg1)] += arg2
                if not stor23[address(arg1)].field_520:
                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                    if stor23[address(arg1)].field_256 > -1:
                        revert with 0, 17
            else:
                if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                if not stor23[address(arg1)].field_520:
                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                        revert with 0, 17
                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                    if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                        revert with 0, 17
                    stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
            emit 0xfeddf252: arg2, msg.sender, address(arg1)
            address(stor1.field_0) = 0
        else:
            if uint8(stor1.field_216):
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                    revert with 0, 17
                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                    balanceOf[address(msg.sender)] -= arg2
                    if not stor23[address(msg.sender)].field_520:
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                        if stor23[address(msg.sender)].field_256 > -1:
                            revert with 0, 17
                else:
                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if not stor23[address(msg.sender)].field_520:
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                            revert with 0, 17
                        stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                    revert with 0, 17
                if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                    balanceOf[address(arg1)] += arg2
                    if not stor23[address(arg1)].field_520:
                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                        if stor23[address(arg1)].field_256 > -1:
                            revert with 0, 17
                else:
                    if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    if not stor23[address(arg1)].field_520:
                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                            revert with 0, 17
                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                        if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                            revert with 0, 17
                        stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                emit 0xfeddf252: arg2, msg.sender, address(arg1)
                address(stor1.field_0) = 0
            else:
                if uint8(stor1.field_224):
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                        revert with 0, 17
                    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                        balanceOf[address(msg.sender)] -= arg2
                        if not stor23[address(msg.sender)].field_520:
                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                            if stor23[address(msg.sender)].field_256 > -1:
                                revert with 0, 17
                    else:
                        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if not stor23[address(msg.sender)].field_520:
                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                revert with 0, 17
                            stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                        revert with 0, 17
                    if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                        balanceOf[address(arg1)] += arg2
                        if not stor23[address(arg1)].field_520:
                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                            if stor23[address(arg1)].field_256 > -1:
                                revert with 0, 17
                    else:
                        if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        if not stor23[address(arg1)].field_520:
                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                revert with 0, 17
                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                            if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                revert with 0, 17
                            stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                    emit 0xfeddf252: arg2, msg.sender, address(arg1)
                    address(stor1.field_0) = 0
                else:
                    if address(stor1.field_0) == msg.sender:
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                            revert with 0, 17
                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                            balanceOf[address(msg.sender)] -= arg2
                            if not stor23[address(msg.sender)].field_520:
                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                if stor23[address(msg.sender)].field_256 > -1:
                                    revert with 0, 17
                        else:
                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if not stor23[address(msg.sender)].field_520:
                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                    revert with 0, 17
                                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                            revert with 0, 17
                        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                            balanceOf[address(arg1)] += arg2
                            if not stor23[address(arg1)].field_520:
                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                if stor23[address(arg1)].field_256 > -1:
                                    revert with 0, 17
                        else:
                            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                            if not stor23[address(arg1)].field_520:
                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                    revert with 0, 17
                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                    revert with 0, 17
                                stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                        emit 0xfeddf252: arg2, msg.sender, address(arg1)
                        address(stor1.field_0) = 0
                    else:
                        if address(stor1.field_0) == address(arg1):
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                revert with 0, 17
                            if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                balanceOf[address(msg.sender)] -= arg2
                                if not stor23[address(msg.sender)].field_520:
                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                    if stor23[address(msg.sender)].field_256 > -1:
                                        revert with 0, 17
                            else:
                                if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if not stor23[address(msg.sender)].field_520:
                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                        revert with 0, 17
                                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                revert with 0, 17
                            if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                balanceOf[address(arg1)] += arg2
                                if not stor23[address(arg1)].field_520:
                                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                    if stor23[address(arg1)].field_256 > -1:
                                        revert with 0, 17
                            else:
                                if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                                if not stor23[address(arg1)].field_520:
                                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                        revert with 0, 17
                                    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                    if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                        revert with 0, 17
                                    stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                            emit 0xfeddf252: arg2, msg.sender, address(arg1)
                            address(stor1.field_0) = 0
                        else:
                            require uint8(stor1.field_160)
                            if stor22[address(msg.sender)]:
                                require not stor19[address(arg1)]
                                if arg2 and uint8(stor12.field_0) > -1 / arg2:
                                    revert with 0, 17
                                if arg2 * uint8(stor12.field_0) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                    revert with 0, 17
                                if arg2 < 100 * arg2 * uint8(stor12.field_0) / 10000:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                    revert with 0, 17
                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if not stor23[address(msg.sender)].field_520:
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                        if stor23[address(msg.sender)].field_256 > -1:
                                            revert with 0, 17
                                else:
                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if not stor23[address(msg.sender)].field_520:
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                        if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                            revert with 0, 17
                                        stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                if balanceOf[this.address] > !(100 * arg2 * uint8(stor12.field_0) / 10000):
                                    revert with 0, 17
                                if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                    revert with 0, 17
                                if stor4 * balanceOf[address(this.address)] <= stor23[address(this.address)].field_0:
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(this.address)].field_520:
                                        if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                        if stor23[address(this.address)].field_256 > -1:
                                            revert with 0, 17
                                else:
                                    if stor4 * balanceOf[address(this.address)] < stor23[address(this.address)].field_0:
                                        revert with 0, 17
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(this.address)].field_520:
                                        if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                        if stor23[address(this.address)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64):
                                            revert with 0, 17
                                        stor23[address(this.address)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64
                                if balanceOf[address(arg1)] > !(arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)):
                                    revert with 0, 17
                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                    revert with 0, 17
                                if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(arg1)].field_520:
                                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                        if stor23[address(arg1)].field_256 > -1:
                                            revert with 0, 17
                                else:
                                    if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)
                                    if not stor23[address(arg1)].field_520:
                                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                            revert with 0, 17
                                        stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                        if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                            revert with 0, 17
                                        stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                                emit 0xfeddf252: (arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)), msg.sender, address(arg1)
                                if arg2 < 100 * arg2 * uint8(stor12.field_0) / 10000:
                                    revert with 0, 17
                                if sub_8eed2397 > !(arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)):
                                    revert with 0, 17
                                sub_8eed2397 = sub_8eed2397 + arg2 - (100 * arg2 * uint8(stor12.field_0) / 10000)
                            else:
                                if not stor22[address(arg1)]:
                                    if address(arg1) != msg.sender:
                                        require not stor19[address(msg.sender)]
                                        require not stor19[address(arg1)]
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                            balanceOf[address(msg.sender)] -= arg2
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                if stor23[address(msg.sender)].field_256 > -1:
                                                    revert with 0, 17
                                        else:
                                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                    revert with 0, 17
                                                stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                            revert with 0, 17
                                        if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                            balanceOf[address(arg1)] += arg2
                                            if not stor23[address(arg1)].field_520:
                                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                                if stor23[address(arg1)].field_256 > -1:
                                                    revert with 0, 17
                                        else:
                                            if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                            if not stor23[address(arg1)].field_520:
                                                if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                    revert with 0, 17
                                                stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                                if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                                    revert with 0, 17
                                                stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                                        emit 0xfeddf252: arg2, msg.sender, address(arg1)
                                    else:
                                        require not stor23[address(msg.sender)].field_520
                                        if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                            revert with 0, 17
                                        if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                            if stor23[address(msg.sender)].field_256 > -1:
                                                revert with 0, 17
                                            require not uint8(stor1.field_168)
                                            require stor23[address(msg.sender)].field_256 > 0
                                            uint8(stor1.field_168) = 1
                                            if stor23[address(msg.sender)].field_520:
                                                require stor23[address(msg.sender)].field_256 <= 0
                                            else:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                    require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                                    require stor23[address(msg.sender)].field_256 <= stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                            if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_256 = 0
                                            if sub_13143c5d > !stor23[address(msg.sender)].field_256:
                                                revert with 0, 17
                                            sub_13143c5d += stor23[address(msg.sender)].field_256
                                            call address(arg1) with:
                                               value stor23[address(msg.sender)].field_256 wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                            uint8(stor1.field_168) = 0
                                            emit 0x85f2e985: stor23[address(msg.sender)].field_256, msg.sender, address(arg1)
                                        else:
                                            if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                revert with 0, 17
                                            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                revert with 0, 17
                                            require not uint8(stor1.field_168)
                                            require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) > 0
                                            uint8(stor1.field_168) = 1
                                            if stor23[address(msg.sender)].field_520:
                                                require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= 0
                                            else:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                    require stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) <= stor23[address(msg.sender)].field_256
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                            if not stor23[address(msg.sender)].field_520:
                                                if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                    revert with 0, 17
                                                if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > -1:
                                                        revert with 0, 17
                                                else:
                                                    if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                                        revert with 0, 17
                                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                                    if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                        revert with 0, 17
                                                    stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                            if stor23[address(msg.sender)].field_256 < stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_256 = -Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                            if sub_13143c5d > !(stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)):
                                                revert with 0, 17
                                            sub_13143c5d = sub_13143c5d + stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)
                                            call address(arg1) with:
                                               value stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64) wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                            uint8(stor1.field_168) = 0
                                            emit 0x85f2e985: (stor23[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64)), msg.sender, address(arg1)
                                else:
                                    if uint8(stor1.field_208):
                                        if not uint8(stor1.field_200):
                                            uint8(stor1.field_200) = 1
                                            if swapThreshold and balanceOf[stor14] > -1 / swapThreshold:
                                                revert with 0, 17
                                            if balanceOf[this.address] >= swapThreshold * balanceOf[stor14] / 1000:
                                                if swapThreshold * balanceOf[stor14] / 1000 and uint8(stor12.field_48) > -1 / swapThreshold * balanceOf[stor14] / 1000:
                                                    revert with 0, 17
                                                if swapThreshold * balanceOf[stor14] / 1000 < swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100:
                                                    revert with 0, 17
                                                if swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 < swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2:
                                                    revert with 0, 17
                                                if (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100) - (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) > !((swapThreshold * balanceOf[stor14] / 1000) - (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100)):
                                                    revert with 0, 17
                                                mem[128] = this.address
                                                require ext_code.size(address(stor12.field_64))
                                                staticcall address(stor12.field_64).WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000)
                                                idx = 0
                                                s = 128
                                                t = ceil32(return_data.size) + 388
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(stor12.field_64))
                                                call address(stor12.field_64).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if False and (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100) - (swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) > 0:
                                                    revert with 0, 17
                                                if not -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000):
                                                    revert with 0, 18
                                                if stor7 > !(0 / -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000)):
                                                    revert with 0, 17
                                                stor7 += 0 / -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000)
                                                uint8(stor1.field_216) = 1
                                                require ext_code.size(address(stor12.field_64))
                                                call address(stor12.field_64).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / -(swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100 / 2) + (swapThreshold * balanceOf[stor14] / 1000) wei
                                                     gas gas_remaining wei
                                                    args address(this.address), Mask(255, 1, swapThreshold * balanceOf[stor14] / 1000 * uint8(stor12.field_48) / 100), 0, 0, address(this.address), block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                uint8(stor1.field_216) = 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if False and uint8(stor12.field_32) > 0:
                                                    revert with 0, 17
                                                if False and uint8(stor12.field_40) > 0:
                                                    revert with 0, 17
                                                if False and uint8(stor12.field_24) > 0:
                                                    revert with 0, 17
                                                if stor8 > -1:
                                                    revert with 0, 17
                                                if 0 == sub_8eed2397:
                                                else:
                                                    if stor10 > -1:
                                                        revert with 0, 17
                                                    if stor6 > -1:
                                                        revert with 0, 17
                                                    if stor9 > -1:
                                                        revert with 0, 17
                                                    if not sub_8eed2397:
                                                        revert with 0, 18
                                                    if stor4 > !(0 / sub_8eed2397):
                                                        revert with 0, 17
                                                    stor4 += 0 / sub_8eed2397
                                            uint8(stor1.field_200) = 0
                                    require not stor19[address(msg.sender)]
                                    if arg2 and uint8(stor12.field_8) > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 * uint8(stor12.field_8) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if 100 * arg2 * uint8(stor12.field_8) / 10000 and uint8(stor12.field_16) > -1 / 100 * arg2 * uint8(stor12.field_8) / 10000:
                                        revert with 0, 17
                                    if 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if arg2 < 100 * arg2 * uint8(stor12.field_8) / 10000:
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[address(msg.sender)] <= stor23[address(msg.sender)].field_0:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if not stor23[address(msg.sender)].field_520:
                                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                            if stor23[address(msg.sender)].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[address(msg.sender)] < stor23[address(msg.sender)].field_0:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if not stor23[address(msg.sender)].field_520:
                                            if stor4 and balanceOf[address(msg.sender)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_0 = stor4 * balanceOf[address(msg.sender)]
                                            if stor23[address(msg.sender)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor23[address(msg.sender)].field_0) >> 64
                                    if 100 * arg2 * uint8(stor12.field_8) / 10000 < 100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000:
                                        revert with 0, 17
                                    if balanceOf[this.address] > !((100 * arg2 * uint8(stor12.field_8) / 10000) - (100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000)):
                                        revert with 0, 17
                                    if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[address(this.address)] <= stor23[address(this.address)].field_0:
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_8) / 10000) - (100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000)
                                        if not stor23[address(this.address)].field_520:
                                            if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                            if stor23[address(this.address)].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[address(this.address)] < stor23[address(this.address)].field_0:
                                            revert with 0, 17
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (100 * arg2 * uint8(stor12.field_8) / 10000) - (100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000)
                                        if not stor23[address(this.address)].field_520:
                                            if stor4 and balanceOf[address(this.address)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(this.address)].field_0 = stor4 * balanceOf[address(this.address)]
                                            if stor23[address(this.address)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(this.address)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(this.address)]) - stor23[address(this.address)].field_0) >> 64
                                    if balanceOf[stor15] > !(100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000):
                                        revert with 0, 17
                                    if stor4 and balanceOf[stor15] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[stor15] <= stor23[stor15].field_0:
                                        balanceOf[stor15] += 100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000
                                        if not stor23[stor15].field_520:
                                            if stor4 and balanceOf[stor15] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[stor15].field_0 = stor4 * balanceOf[stor15]
                                            if stor23[stor15].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[stor15] < stor23[stor15].field_0:
                                            revert with 0, 17
                                        balanceOf[stor15] += 100 * 100 * arg2 * uint8(stor12.field_8) / 10000 * uint8(stor12.field_16) / 10000
                                        if not stor23[stor15].field_520:
                                            if stor4 and balanceOf[stor15] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[stor15].field_0 = stor4 * balanceOf[stor15]
                                            if stor23[stor15].field_256 > !(Mask(192, 64, (stor4 * balanceOf[stor15]) - stor23[stor15].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[stor15].field_256 += Mask(192, 64, (stor4 * balanceOf[stor15]) - stor23[stor15].field_0) >> 64
                                    if balanceOf[address(arg1)] > !(arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)):
                                        revert with 0, 17
                                    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                        revert with 0, 17
                                    if stor4 * balanceOf[address(arg1)] <= stor23[address(arg1)].field_0:
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)
                                        if not stor23[address(arg1)].field_520:
                                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                            if stor23[address(arg1)].field_256 > -1:
                                                revert with 0, 17
                                    else:
                                        if stor4 * balanceOf[address(arg1)] < stor23[address(arg1)].field_0:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)
                                        if not stor23[address(arg1)].field_520:
                                            if stor4 and balanceOf[address(arg1)] > -1 / stor4:
                                                revert with 0, 17
                                            stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
                                            if stor23[address(arg1)].field_256 > !(Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64):
                                                revert with 0, 17
                                            stor23[address(arg1)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor23[address(arg1)].field_0) >> 64
                                    emit 0xfeddf252: (arg2 - (100 * arg2 * uint8(stor12.field_8) / 10000)), msg.sender, address(arg1)
                                    if sub_8eed2397 < arg2:
                                        revert with 0, 17
                                    sub_8eed2397 -= arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require stor23[address(arg1)].field_520
    stor23[address(arg1)].field_520 = 0
    if sub_8eed2397 > !balanceOf[address(arg1)]:
        revert with 0, 17
    sub_8eed2397 += balanceOf[address(arg1)]
    if stor4 and balanceOf[address(arg1)] > -1 / stor4:
        revert with 0, 17
    stor23[address(arg1)].field_0 = stor4 * balanceOf[address(arg1)]
    if stor23[address(arg1)].field_256 > -1:
        revert with 0, 17
    return 1
}



}
