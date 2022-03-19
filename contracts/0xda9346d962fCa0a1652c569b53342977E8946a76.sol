contract main {




// =====================  Runtime code  =====================


#
#  - sub_0079dfdc(?)
#  - sub_0818ccd0(?)
#  - sub_7fc698f6(?)
#
const sub_000a08b0(?) = 0xcbc6a023eb975a1e2630223a7959988948e664f3

const sub_4e60860e(?) = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const sub_69e894f5(?) = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const sub_73ebee82(?) = eth.balance(this.address)

const sub_da0b7431(?) = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const OASIS = 0x39755357759ce0d7f32dc8dc45414cca409ae24e

const GST2 = 0xb3f879cb30fe243b4dfee438691c04

const WETH = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2


address owner;
address controllerAddress;
uint256 stor2; offset 4
uint256 stor2; offset 3
uint256 stor2; offset 2
uint256 stor2; offset 1
uint256 maxBuy;
uint256 buffer;
uint256 tokenCount;
uint256 sub_58973576;
uint256 sub_ae974347;
uint8 stor7;
uint256 stor7;
mapping of uint32 token;
array of uint256 tokenSymbol;
mapping of address sub_a233ba89;
mapping of address sub_8a342517;

function sub_16d74413(?) {
    return bool(uint8(stor7))
}

function tokenSymbol(uint256 arg1) {
    return tokenSymbol[arg1][0 len tokenSymbol[arg1].length]
}

function sub_58973576(?) {
    return sub_58973576
}

function maxBuy() {
    return maxBuy
}

function sub_8a342517(?) {
    require calldata.size - 4 >= 32
    return sub_8a342517[arg1]
}

function owner() {
    return owner
}

function tokenAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(token[arg1])
}

function tokenCount() {
    return tokenCount
}

function sub_a233ba89(?) {
    require calldata.size - 4 >= 32
    return sub_a233ba89[arg1]
}

function sub_ae974347(?) {
    return sub_ae974347
}

function buffer() {
    return buffer
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
  stop
}

function sub_55b47b95(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buffer = arg1
}

function changeMaxBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    maxBuy = arg1
}

function sub_52c19a30(?) {
    if eth.balance(this.address) >= maxBuy:
        return maxBuy
    return eth.balance(this.address)
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    controllerAddress = arg1
}

function sub_24111cb5(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    sub_8a342517[arg2] = arg1
}

function sub_4f40c38e(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    sub_58973576 = arg1
    sub_ae974347 = arg2
}

function withdrawAll() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ecf14956(?) {
    if owner != msg.sender:
        require msg.sender == controllerAddress
    if bool(uint8(stor7)) == bool(uint8(stor7)):
        uint256(stor7) = not bool(uint8(stor7)) or Mask(248, 8, uint256(stor7))
    if bool(uint8(stor7)) == not bool(uint8(stor7)):
        uint8(stor7) = uint8(bool(uint8(stor7)))
}

function sub_f46ac5a4(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_270d772c(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_8a342517[arg2])
    staticcall sub_8a342517[arg2].getEthToTokenInputPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_27744614(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_8a342517[arg2])
    staticcall sub_8a342517[arg2].getTokenToEthOutputPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8ebbf7cf(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function mintGasTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_84a9a3f3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrapWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1f7d060a(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[arg1]))
    call address(token[arg1]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_e2383661(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[arg1]))
    call address(token[arg1]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_9d81942a(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg2])
    call sub_8a342517[arg2].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args arg1, 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_be9922e8(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg2])
    call sub_8a342517[arg2].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
       value arg1 wei
         gas gas_remaining wei
        args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8b3ced3d(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(token[arg2]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d806cedd(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(token[arg2]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2e0f4f56(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg2]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (ext_call.return_data[0] * arg1 / 10^18)
}

function sub_30281b8c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(token[arg2]), arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d43794c3(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
       value arg1 wei
         gas gas_remaining wei
        args address(token[arg2]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a25a6d5b(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(token[arg2]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] * arg1 / 10^18
    return (arg1 * arg1 / ext_call.return_data[0] * arg1 / 10^18)
}

function burnGasToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_d59cd3bf(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_a233ba89[arg2])
    staticcall sub_a233ba89[arg2].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg2]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4f8146a9(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    if arg2 != 4:
        require arg2 == 5
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(token[1]))
    staticcall address(token[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, 1014328514, ext_call.return_data[0], address(token[arg2]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5fd71ac4(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    if arg2 != 4:
        require arg2 == 5
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(token[arg2]), arg1, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[1]))
    staticcall address(token[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_0e72afb6(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender == owner:
        sub_8a342517[stor4] = arg3
        sub_a233ba89[stor4] = arg4
    else:
        require msg.sender == controllerAddress
        sub_8a342517[stor4] = arg3
        sub_a233ba89[stor4] = arg4
        if owner != msg.sender:
            require msg.sender == controllerAddress
    address(token[stor4]) = arg1
    tokenSymbol[stor4][] = Array(len=arg2.length, data=arg2[all])
    tokenCount++
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[stor4 - 1]))
    call address(token[stor4 - 1]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), 10000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[stor4 - 1]))
    call address(token[stor4 - 1]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg4), 10000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[stor4 - 1]))
    call address(token[stor4 - 1]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x818e6fecd516ecc3849daf6845e3ec868087b755, 10000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f6ec8a16(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_a233ba89[arg2])
    staticcall sub_a233ba89[arg2].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg2]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a233ba89[arg2])
    staticcall sub_a233ba89[arg2].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(token[arg2]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
}

function sub_345e8b07(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == owner:
        mem[ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg2.length) + 192] = arg1
        mem[ceil32(arg2.length) + 224] = 1
        mem[ceil32(arg2.length) + 256] = 5
        mem[ceil32(arg2.length) + 128] = 128
        mem[64] = ceil32(arg2.length) + 288
        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
        _5 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 324 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 324] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 324])
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[ceil32(arg2.length) + 288] = arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4
        mem[64] = arg2.length + _5 + ceil32(arg2.length) + 324
        mem[arg2.length + _5 + ceil32(arg2.length) + 324 len floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4)]
        mem[arg2.length + _5 + ceil32(arg2.length) + floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4) + -(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32) + 356 len arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4) + -(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32) + 352 len arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32]
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + _5 + ceil32(arg2.length) + 324 len 4] with:
           value arg1 wei
             gas gas_remaining wei
            args mem[arg2.length + _5 + ceil32(arg2.length) + 328 len arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]
    else:
        require msg.sender == controllerAddress
        mem[ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg2.length) + 192] = arg1
        mem[ceil32(arg2.length) + 224] = 1
        mem[ceil32(arg2.length) + 256] = 5
        mem[ceil32(arg2.length) + 128] = 128
        mem[64] = ceil32(arg2.length) + 288
        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
        _9 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 324 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 324] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 324])
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[ceil32(arg2.length) + 288] = arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4
        mem[64] = arg2.length + _9 + ceil32(arg2.length) + 324
        mem[arg2.length + _9 + ceil32(arg2.length) + 324 len floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4)]
        mem[arg2.length + _9 + ceil32(arg2.length) + floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4) + -(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32) + 356 len arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4) + -(arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32) + 352 len arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 4 % 32]
        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + _9 + ceil32(arg2.length) + 324 len 4] with:
           value arg1 wei
             gas gas_remaining wei
            args mem[arg2.length + _9 + ceil32(arg2.length) + 328 len mem[ceil32(arg2.length) + 288] - 4]
    if not return_data.size:
        return bool(ext_call.success), Array(len=arg2.length, data=arg2[all])
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_d555119d(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if msg.sender == owner:
        mem[0] = arg1
        mem[32] = 10
        mem[ceil32(arg3.length) + 160] = 96
        mem[ceil32(arg3.length) + 192] = arg2
        mem[ceil32(arg3.length) + 224] = 1
        mem[ceil32(arg3.length) + 256] = 5
        mem[ceil32(arg3.length) + 128] = 128
        mem[64] = ceil32(arg3.length) + 288
        mem[ceil32(arg3.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
        _6 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324])
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        mem[ceil32(arg3.length) + 288] = arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4
        mem[64] = arg3.length + _6 + ceil32(arg3.length) + 324
        mem[arg3.length + _6 + ceil32(arg3.length) + 324 len floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4)] = mem[ceil32(arg3.length) + 320 len floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4)]
        mem[arg3.length + _6 + ceil32(arg3.length) + floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4) + -(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32) + 356 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32] = mem[ceil32(arg3.length) + floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4) + -(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32) + 352 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32]
        call sub_a233ba89[arg1].mem[arg3.length + _6 + ceil32(arg3.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[arg3.length + _6 + ceil32(arg3.length) + 328 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]
    else:
        require msg.sender == controllerAddress
        mem[0] = arg1
        mem[32] = 10
        mem[ceil32(arg3.length) + 160] = 96
        mem[ceil32(arg3.length) + 192] = arg2
        mem[ceil32(arg3.length) + 224] = 1
        mem[ceil32(arg3.length) + 256] = 5
        mem[ceil32(arg3.length) + 128] = 128
        mem[64] = ceil32(arg3.length) + 288
        mem[ceil32(arg3.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
        _11 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 324])
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        mem[ceil32(arg3.length) + 288] = arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4
        mem[64] = arg3.length + _11 + ceil32(arg3.length) + 324
        mem[arg3.length + _11 + ceil32(arg3.length) + 324 len floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4)] = mem[ceil32(arg3.length) + 320 len floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4)]
        mem[arg3.length + _11 + ceil32(arg3.length) + floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4) + -(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32) + 356 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32] = mem[ceil32(arg3.length) + floor32(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4) + -(arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32) + 352 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 4 % 32]
        call sub_a233ba89[arg1].mem[arg3.length + _11 + ceil32(arg3.length) + 324 len 4] with:
             gas gas_remaining wei
            args mem[arg3.length + _11 + ceil32(arg3.length) + 328 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]
    if not return_data.size:
        return bool(ext_call.success), Array(len=arg3.length, data=arg3[all])
    return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_85dc9eba(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8a342517[arg1])
        staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_8a342517[arg1])
            call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_8a342517[arg1])
                call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    else:
        if bool(uint8(stor7)) == 1:
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 16) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8a342517[arg1])
        staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_8a342517[arg1])
            call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 2) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_8a342517[arg1])
                call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 4) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (eth.balance(this.address) / 4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 8) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (eth.balance(this.address) / 8)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    if arg1 != 4:
        require arg1 == 5
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(token[arg1]), ext_call.return_data[0], 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[1]))
    staticcall address(token[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_8cf044e0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (Mask(252, 0, stor2.field_4) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * Mask(252, 0, stor2.field_4) / 10^18 > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (maxBuy + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] * maxBuy / 10^18 > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args address(token[arg1]), 1
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (uint255(stor2.field_1) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] * uint255(stor2.field_1) / 10^18 > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args address(token[arg1]), 1
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (Mask(254, 0, stor2.field_2) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] * Mask(254, 0, stor2.field_2) / 10^18 > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args address(token[arg1]), 1
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (Mask(253, 0, stor2.field_3) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    if ext_call.return_data[0] * Mask(253, 0, stor2.field_3) / 10^18 > ext_call.return_data[0]:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
                    else:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
    else:
        if bool(uint8(stor7)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 16) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * eth.balance(this.address) / 16 / 10^18 > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] * eth.balance(this.address) / 10^18 > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(token[arg1]), 1
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 2) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] * eth.balance(this.address) / 2 / 10^18 > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args address(token[arg1]), 1
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args ((eth.balance(this.address) / 4) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] * eth.balance(this.address) / 4 / 10^18 > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args address(token[arg1]), 1
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args ((eth.balance(this.address) / 8) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    if ext_call.return_data[0] * eth.balance(this.address) / 8 / 10^18 > ext_call.return_data[0]:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
                    else:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    call sub_8a342517[arg1].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_87b43248(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (Mask(252, 0, stor2.field_4) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (maxBuy + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            if arg1 != 4:
                require arg1 == 5
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
               value maxBuy wei
                 gas gas_remaining wei
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (uint255(stor2.field_1) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                if arg1 != 4:
                    require arg1 == 5
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (Mask(254, 0, stor2.field_2) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (Mask(253, 0, stor2.field_3) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                    else:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
    else:
        if bool(uint8(stor7)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 16) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            if arg1 != 4:
                require arg1 == 5
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 2) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                if arg1 != 4:
                    require arg1 == 5
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args ((eth.balance(this.address) / 4) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args ((eth.balance(this.address) / 8) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                    else:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(token[1]))
    staticcall address(token[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, 1014328514, ext_call.return_data[0], address(token[arg1]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    call sub_8a342517[arg1].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_8625aae5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * Mask(252, 0, stor2.field_4) / 10^18 > ext_call.return_data[0]
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] * maxBuy / 10^18 > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args address(token[arg1]), 1
        else:
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] * uint255(stor2.field_1) / 10^18 > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args address(token[arg1]), 1
            else:
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] * Mask(254, 0, stor2.field_2) / 10^18 > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args address(token[arg1]), 1
                else:
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    if ext_call.return_data[0] * Mask(253, 0, stor2.field_3) / 10^18 > ext_call.return_data[0]:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
                    else:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
    else:
        if bool(uint8(stor7)) == 1:
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 16) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * eth.balance(this.address) / 16 / 10^18 > ext_call.return_data[0]
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] * eth.balance(this.address) / 10^18 > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(token[arg1]), 1
        else:
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 2) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] * eth.balance(this.address) / 2 / 10^18 > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args address(token[arg1]), 1
            else:
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 4) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] * eth.balance(this.address) / 4 / 10^18 > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args address(token[arg1]), 1
                else:
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getPayAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 8) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    if ext_call.return_data[0] * eth.balance(this.address) / 8 / 10^18 > ext_call.return_data[0]:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
                    else:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    if arg1 != 4:
        require arg1 == 5
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(token[arg1]), ext_call.return_data[0], 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[1]))
    staticcall address(token[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_77af1572(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > (Mask(252, 0, stor2.field_4) * Mask(252, 0, stor2.field_4)) + (buffer * Mask(252, 0, stor2.field_4)) + (Mask(252, 0, stor2.field_4) * buffer) + (buffer * buffer) / (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        require ext_code.size(sub_8a342517[arg1])
        staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (maxBuy * maxBuy) + (buffer * maxBuy) + (maxBuy * buffer) + (buffer * buffer) / (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_8a342517[arg1])
            call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (uint255(stor2.field_1) * uint255(stor2.field_1)) + (buffer * uint255(stor2.field_1)) + (uint255(stor2.field_1) * buffer) + (buffer * buffer) / (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_8a342517[arg1])
                call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > (Mask(254, 0, stor2.field_2) * Mask(254, 0, stor2.field_2)) + (buffer * Mask(254, 0, stor2.field_2)) + (Mask(254, 0, stor2.field_2) * buffer) + (buffer * buffer) / (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    if ext_call.return_data[0] > (Mask(253, 0, stor2.field_3) * Mask(253, 0, stor2.field_3)) + (buffer * Mask(253, 0, stor2.field_3)) + (Mask(253, 0, stor2.field_3) * buffer) + (buffer * buffer) / (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    else:
        if bool(uint8(stor7)) == 1:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 16) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > (eth.balance(this.address) / 16 * eth.balance(this.address) / 16) + (buffer * eth.balance(this.address) / 16) + (eth.balance(this.address) / 16 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        require ext_code.size(sub_8a342517[arg1])
        staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (eth.balance(this.address) * eth.balance(this.address)) + (buffer * eth.balance(this.address)) + (eth.balance(this.address) * buffer) + (buffer * buffer) / (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_8a342517[arg1])
            call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 2) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (eth.balance(this.address) / 2 * eth.balance(this.address) / 2) + (buffer * eth.balance(this.address) / 2) + (eth.balance(this.address) / 2 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_8a342517[arg1])
                call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 4) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (eth.balance(this.address) / 4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > (eth.balance(this.address) / 4 * eth.balance(this.address) / 4) + (buffer * eth.balance(this.address) / 4) + (eth.balance(this.address) / 4 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 8) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (eth.balance(this.address) / 8)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    if ext_call.return_data[0] > (eth.balance(this.address) / 8 * eth.balance(this.address) / 8) + (buffer * eth.balance(this.address) / 8) + (eth.balance(this.address) / 8 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(token[arg1]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_0e53b59c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > (Mask(252, 0, stor2.field_4) * Mask(252, 0, stor2.field_4)) + (buffer * Mask(252, 0, stor2.field_4)) + (Mask(252, 0, stor2.field_4) * buffer) + (buffer * buffer) / (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (maxBuy * maxBuy) + (buffer * maxBuy) + (maxBuy * buffer) + (buffer * buffer) / (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            if arg1 != 4:
                require arg1 == 5
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
               value maxBuy wei
                 gas gas_remaining wei
        else:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (uint255(stor2.field_1) * uint255(stor2.field_1)) + (buffer * uint255(stor2.field_1)) + (uint255(stor2.field_1) * buffer) + (buffer * buffer) / (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                if arg1 != 4:
                    require arg1 == 5
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
            else:
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > (Mask(254, 0, stor2.field_2) * Mask(254, 0, stor2.field_2)) + (buffer * Mask(254, 0, stor2.field_2)) + (Mask(254, 0, stor2.field_2) * buffer) + (buffer * buffer) / (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                else:
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    if ext_call.return_data[0] > (Mask(253, 0, stor2.field_3) * Mask(253, 0, stor2.field_3)) + (buffer * Mask(253, 0, stor2.field_3)) + (Mask(253, 0, stor2.field_3) * buffer) + (buffer * buffer) / (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                    else:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
    else:
        if bool(uint8(stor7)) == 1:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 16) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > (eth.balance(this.address) / 16 * eth.balance(this.address) / 16) + (buffer * eth.balance(this.address) / 16) + (eth.balance(this.address) / 16 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
        staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (eth.balance(this.address) * eth.balance(this.address)) + (buffer * eth.balance(this.address)) + (eth.balance(this.address) * buffer) + (buffer * buffer) / (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            if arg1 != 4:
                require arg1 == 5
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
        else:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 2) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
            staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (eth.balance(this.address) / 2 * eth.balance(this.address) / 2) + (buffer * eth.balance(this.address) / 2) + (eth.balance(this.address) / 2 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                if arg1 != 4:
                    require arg1 == 5
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
            else:
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 4) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > (eth.balance(this.address) / 4 * eth.balance(this.address) / 4) + (buffer * eth.balance(this.address) / 4) + (eth.balance(this.address) / 4 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                else:
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 8) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
                    staticcall 0x39755357759ce0d7f32dc8dc45414cca409ae24e.getBuyAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    if arg1 != 4:
                        require arg1 == 5
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    if ext_call.return_data[0] > (eth.balance(this.address) / 8 * eth.balance(this.address) / 8) + (buffer * eth.balance(this.address) / 8) + (eth.balance(this.address) / 8 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                    else:
                        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(token[1]))
    staticcall address(token[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x39755357759ce0d7f32dc8dc45414cca409ae24e)
    call 0x39755357759ce0d7f32dc8dc45414cca409ae24e.sellAllAmount(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, 1014328514, ext_call.return_data[0], address(token[arg1]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(token[arg1]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_6378a3ae(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(252, 0, stor2.field_4) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * Mask(252, 0, stor2.field_4) / 10^18 > (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, maxBuy + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] * maxBuy / 10^18 > (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args address(token[arg1]), 1
        else:
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, uint255(stor2.field_1) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] * uint255(stor2.field_1) / 10^18 > (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args address(token[arg1]), 1
            else:
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(254, 0, stor2.field_2) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] * Mask(254, 0, stor2.field_2) / 10^18 > (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args address(token[arg1]), 1
                else:
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(253, 0, stor2.field_3) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0]
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    if ext_call.return_data[0] * Mask(253, 0, stor2.field_3) / 10^18 > (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
                    else:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
    else:
        if bool(uint8(stor7)) == 1:
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, (eth.balance(this.address) / 16) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * eth.balance(this.address) / 16 / 10^18 > (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0]
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] * eth.balance(this.address) / 10^18 > (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(token[arg1]), 1
        else:
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, (eth.balance(this.address) / 2) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0]
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] * eth.balance(this.address) / 2 / 10^18 > (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args address(token[arg1]), 1
            else:
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, (eth.balance(this.address) / 4) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0] * eth.balance(this.address) / 4 / 10^18 > (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args address(token[arg1]), 1
                else:
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, (eth.balance(this.address) / 8) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0]
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(token[arg1]), eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    if ext_call.return_data[0] * eth.balance(this.address) / 8 / 10^18 > (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / ext_call.return_data[0]:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
                    else:
                        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapEtherToToken(address rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args address(token[arg1]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    mem[0] = arg1
    mem[32] = 10
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    mem[ceil32(arg2.length) + 224] = 1
    mem[ceil32(arg2.length) + 256] = 5
    mem[ceil32(arg2.length) + 128] = 128
    mem[64] = ceil32(arg2.length) + 288
    mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
    mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
    mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
    mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
    mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
    mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
    call sub_a233ba89[arg1].mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_ae974347:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_ae974347
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_6ff18fcb(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (Mask(252, 0, stor2.field_4) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (maxBuy + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = arg1
        mem[32] = 10
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            mem[ceil32(arg2.length) + 160] = 96
            mem[ceil32(arg2.length) + 192] = maxBuy
            mem[ceil32(arg2.length) + 224] = 1
            mem[ceil32(arg2.length) + 256] = 5
            mem[ceil32(arg2.length) + 128] = 128
            mem[64] = ceil32(arg2.length) + 288
            mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
            mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
            mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
            mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
               value maxBuy wei
                 gas gas_remaining wei
                args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (uint255(stor2.field_1) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = arg1
            mem[32] = 10
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                mem[ceil32(arg2.length) + 160] = 96
                mem[ceil32(arg2.length) + 192] = uint255(stor2.field_1)
                mem[ceil32(arg2.length) + 224] = 1
                mem[ceil32(arg2.length) + 256] = 5
                mem[ceil32(arg2.length) + 128] = 128
                mem[64] = ceil32(arg2.length) + 288
                mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (Mask(254, 0, stor2.field_2) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 10
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    mem[ceil32(arg2.length) + 192] = Mask(254, 0, stor2.field_2)
                    mem[ceil32(arg2.length) + 224] = 1
                    mem[ceil32(arg2.length) + 256] = 5
                    mem[ceil32(arg2.length) + 128] = 128
                    mem[64] = ceil32(arg2.length) + 288
                    mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                    mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                    mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                    mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (Mask(253, 0, stor2.field_3) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[0] = arg1
                    mem[32] = 10
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        mem[ceil32(arg2.length) + 192] = Mask(253, 0, stor2.field_3)
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                    else:
                        mem[ceil32(arg2.length) + 192] = Mask(252, 0, stor2.field_4)
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
    else:
        if bool(uint8(stor7)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 16) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = arg1
        mem[32] = 10
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            mem[ceil32(arg2.length) + 160] = 96
            mem[ceil32(arg2.length) + 192] = eth.balance(this.address)
            mem[ceil32(arg2.length) + 224] = 1
            mem[ceil32(arg2.length) + 256] = 5
            mem[ceil32(arg2.length) + 128] = 128
            mem[64] = ceil32(arg2.length) + 288
            mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
            mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
            mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
            mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 2) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = arg1
            mem[32] = 10
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                mem[ceil32(arg2.length) + 160] = 96
                mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 2
                mem[ceil32(arg2.length) + 224] = 1
                mem[ceil32(arg2.length) + 256] = 5
                mem[ceil32(arg2.length) + 128] = 128
                mem[64] = ceil32(arg2.length) + 288
                mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args ((eth.balance(this.address) / 4) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 10
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 4
                    mem[ceil32(arg2.length) + 224] = 1
                    mem[ceil32(arg2.length) + 256] = 5
                    mem[ceil32(arg2.length) + 128] = 128
                    mem[64] = ceil32(arg2.length) + 288
                    mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                    mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                    mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                    mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args ((eth.balance(this.address) / 8) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[0] = arg1
                    mem[32] = 10
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 8
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                    else:
                        mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 16
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    call sub_8a342517[arg1].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_ae974347:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_ae974347
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_28394bed(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(stor7)) == 1:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(252, 0, stor2.field_4) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > (Mask(252, 0, stor2.field_4) * Mask(252, 0, stor2.field_4)) + (buffer * Mask(252, 0, stor2.field_4)) + (Mask(252, 0, stor2.field_4) * buffer) + (buffer * buffer) / (Mask(252, 0, stor2.field_4) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, maxBuy + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = arg1
        mem[32] = 10
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (maxBuy * maxBuy) + (buffer * maxBuy) + (maxBuy * buffer) + (buffer * buffer) / (maxBuy * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            mem[ceil32(arg2.length) + 160] = 96
            mem[ceil32(arg2.length) + 192] = maxBuy
            mem[ceil32(arg2.length) + 224] = 1
            mem[ceil32(arg2.length) + 256] = 5
            mem[ceil32(arg2.length) + 128] = 128
            mem[64] = ceil32(arg2.length) + 288
            mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
            mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
            mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
            mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
               value maxBuy wei
                 gas gas_remaining wei
                args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
        else:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, uint255(stor2.field_1) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = arg1
            mem[32] = 10
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (uint255(stor2.field_1) * uint255(stor2.field_1)) + (buffer * uint255(stor2.field_1)) + (uint255(stor2.field_1) * buffer) + (buffer * buffer) / (uint255(stor2.field_1) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                mem[ceil32(arg2.length) + 160] = 96
                mem[ceil32(arg2.length) + 192] = uint255(stor2.field_1)
                mem[ceil32(arg2.length) + 224] = 1
                mem[ceil32(arg2.length) + 256] = 5
                mem[ceil32(arg2.length) + 128] = 128
                mem[64] = ceil32(arg2.length) + 288
                mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
            else:
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(254, 0, stor2.field_2) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 10
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > (Mask(254, 0, stor2.field_2) * Mask(254, 0, stor2.field_2)) + (buffer * Mask(254, 0, stor2.field_2)) + (Mask(254, 0, stor2.field_2) * buffer) + (buffer * buffer) / (Mask(254, 0, stor2.field_2) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    mem[ceil32(arg2.length) + 192] = Mask(254, 0, stor2.field_2)
                    mem[ceil32(arg2.length) + 224] = 1
                    mem[ceil32(arg2.length) + 256] = 5
                    mem[ceil32(arg2.length) + 128] = 128
                    mem[64] = ceil32(arg2.length) + 288
                    mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                    mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                    mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                    mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                else:
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, Mask(253, 0, stor2.field_3) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[0] = arg1
                    mem[32] = 10
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    if ext_call.return_data[0] > (Mask(253, 0, stor2.field_3) * Mask(253, 0, stor2.field_3)) + (buffer * Mask(253, 0, stor2.field_3)) + (Mask(253, 0, stor2.field_3) * buffer) + (buffer * buffer) / (Mask(253, 0, stor2.field_3) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                        mem[ceil32(arg2.length) + 192] = Mask(253, 0, stor2.field_3)
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                    else:
                        mem[ceil32(arg2.length) + 192] = Mask(252, 0, stor2.field_4)
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
    else:
        if bool(uint8(stor7)) == 1:
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 16) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > (eth.balance(this.address) / 16 * eth.balance(this.address) / 16) + (buffer * eth.balance(this.address) / 16) + (eth.balance(this.address) / 16 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 16 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, eth.balance(this.address) + buffer
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
        require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
        staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[0] = arg1
        mem[32] = 10
        require ext_code.size(sub_a233ba89[arg1])
        staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > (eth.balance(this.address) * eth.balance(this.address)) + (buffer * eth.balance(this.address)) + (eth.balance(this.address) * buffer) + (buffer * buffer) / (eth.balance(this.address) * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            mem[ceil32(arg2.length) + 160] = 96
            mem[ceil32(arg2.length) + 192] = eth.balance(this.address)
            mem[ceil32(arg2.length) + 224] = 1
            mem[ceil32(arg2.length) + 256] = 5
            mem[ceil32(arg2.length) + 128] = 128
            mem[64] = ceil32(arg2.length) + 288
            mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
            mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
            mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
            mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
            mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
            call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
        else:
            require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
            staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 2) + buffer
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
            require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
            staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = arg1
            mem[32] = 10
            require ext_code.size(sub_a233ba89[arg1])
            staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > (eth.balance(this.address) / 2 * eth.balance(this.address) / 2) + (buffer * eth.balance(this.address) / 2) + (eth.balance(this.address) / 2 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 2 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                mem[ceil32(arg2.length) + 160] = 96
                mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 2
                mem[ceil32(arg2.length) + 224] = 1
                mem[ceil32(arg2.length) + 256] = 5
                mem[ceil32(arg2.length) + 128] = 128
                mem[64] = ceil32(arg2.length) + 288
                mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
            else:
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 4) + buffer
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 10
                require ext_code.size(sub_a233ba89[arg1])
                staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > (eth.balance(this.address) / 4 * eth.balance(this.address) / 4) + (buffer * eth.balance(this.address) / 4) + (eth.balance(this.address) / 4 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 4 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 4
                    mem[ceil32(arg2.length) + 224] = 1
                    mem[ceil32(arg2.length) + 256] = 5
                    mem[ceil32(arg2.length) + 128] = 128
                    mem[64] = ceil32(arg2.length) + 288
                    mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                    mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                    mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                    mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                    mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                    call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                else:
                    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args address(token[arg1]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, (eth.balance(this.address) / 8) + buffer
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18
                    require ext_code.size(0xcbc6a023eb975a1e2630223a7959988948e664f3)
                    staticcall 0xcbc6a023eb975a1e2630223a7959988948e664f3.getReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, eth.balance(this.address) / 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[0] = arg1
                    mem[32] = 10
                    require ext_code.size(sub_a233ba89[arg1])
                    staticcall sub_a233ba89[arg1].getCrossConnectorReturn(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(token[arg1]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    mem[ceil32(arg2.length) + 160] = 96
                    if ext_call.return_data[0] > (eth.balance(this.address) / 8 * eth.balance(this.address) / 8) + (buffer * eth.balance(this.address) / 8) + (eth.balance(this.address) / 8 * buffer) + (buffer * buffer) / (eth.balance(this.address) / 8 * ext_call.return_data[0]) + (buffer * ext_call.return_data[0]) / 10^18:
                        mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 8
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
                    else:
                        mem[ceil32(arg2.length) + 192] = eth.balance(this.address) / 16
                        mem[ceil32(arg2.length) + 224] = 1
                        mem[ceil32(arg2.length) + 256] = 5
                        mem[ceil32(arg2.length) + 128] = 128
                        mem[64] = ceil32(arg2.length) + 288
                        mem[ceil32(arg2.length) + 320] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg2.length) + 324 len floor32(0, 128)] = mem[ceil32(arg2.length) + 160 len floor32(0, 128)]
                        mem[ceil32(arg2.length) + floor32(0, 128) + 324] = None or mem[ceil32(arg2.length) + floor32(0, 128) + 324]
                        mem[0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[0, 128 + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        mem[ceil32(arg2.length) + 288] = arg2.length + 0, 128 + 4
                        mem[64] = arg2.length + 0, 128 + ceil32(arg2.length) + 324
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len floor32(arg2.length + 0, 128 + 4)] = mem[ceil32(arg2.length) + 320 len floor32(arg2.length + 0, 128 + 4)]
                        mem[arg2.length + 0, 128 + ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 356 len arg2.length + 0, 128 + 4 % 32] = mem[ceil32(arg2.length) + floor32(arg2.length + 0, 128 + 4) + -(arg2.length + 0, 128 + 4 % 32) + 352 len arg2.length + 0, 128 + 4 % 32]
                        call 0xcbc6a023eb975a1e2630223a7959988948e664f3.mem[arg2.length + 0, 128 + ceil32(arg2.length) + 324 len 4] with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args mem[arg2.length + 0, 128 + ceil32(arg2.length) + 328 len arg2.length + 0, 128]
    require ext_code.size(address(token[arg1]))
    staticcall address(token[arg1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    call 0x818e6fecd516ecc3849daf6845e3ec868087b755.swapTokenToEther(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(token[arg1]), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(address(token[0]))
    staticcall address(token[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_ae974347:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 rg1) with:
             gas gas_remaining wei
            args sub_ae974347
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
