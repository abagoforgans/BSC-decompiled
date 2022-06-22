contract main {




// =====================  Runtime code  =====================


#
#  - bid(uint256 arg1)
#  - sub_e4fec332(?)
#  - buyItem(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor13;
uint8 stor51;
address owner;
uint256 stor151;
uint256 stor201;
uint256 stor202;
uint256 stor203;
array of struct stor204;
mapping of struct itemInfo;
mapping of uint8 stor206;
uint256 feeRate;
uint256 feeDenominator;
uint256 sub_51636d8c;
uint256 sub_1ab8c698;
mapping of uint8 stor211;
address feeAddress;
address sub_f53c7234Address;
mapping of struct sub_d7879c80;
uint32 stor215;
uint8 stor9382;

function feeDenominator() {
    return feeDenominator
}

function sub_1ab8c698(?) {
    return sub_1ab8c698
}

function feeAddress() {
    return feeAddress
}

function sub_51636d8c(?) {
    return sub_51636d8c
}

function paused() {
    return bool(stor51)
}

function owner() {
    return owner
}

function sub_8de1de71(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor211[address(arg1)])
}

function feeRate() {
    return feeRate
}

function sub_d7879c80(?) {
    require calldata.size - 4 >= 32
    return sub_d7879c80[arg1].field_0, 
           sub_d7879c80[arg1].field_256,
           sub_d7879c80[arg1].field_512,
           sub_d7879c80[arg1].field_768,
           sub_d7879c80[arg1].field_1024
}

function getItemInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if itemInfo[arg1].field_3072 > 2:
        revert with 0, 33
    if itemInfo[arg1].field_3072 >= 3:
        revert with 0, 33
    return itemInfo[arg1].field_0, 
           itemInfo[arg1].field_256,
           itemInfo[arg1].field_512,
           itemInfo[arg1].field_768,
           itemInfo[arg1].field_1024,
           itemInfo[arg1].field_1280,
           itemInfo[arg1].field_1536,
           itemInfo[arg1].field_1792,
           bool(itemInfo[arg1].field_2048),
           itemInfo[arg1].field_2304,
           itemInfo[arg1].field_2560,
           itemInfo[arg1].field_2816,
           itemInfo[arg1].field_3072,
           itemInfo[arg1].field_3328
}

function sub_f53c7234(?) {
    return sub_f53c7234Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7eb5b33f(?) {
    if stor201 < stor202:
        revert with 0, 17
    if stor201 - stor202 < stor203:
        revert with 0, 17
    return (stor201 - stor202 - stor203)
}

function sub_35b1db59(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_51636d8c = arg1
    sub_1ab8c698 = arg2
}

function changeFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeRate = arg1
    feeDenominator = arg2
}

function sub_28336098(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor211[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'Operator is address 0'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_f3aaafbf(?) {
    require calldata.size - 4 >= 32
    if itemInfo[arg1].field_3072 > 2:
        revert with 0, 33
    if itemInfo[arg1].field_3072 != 1:
        if itemInfo[arg1].field_1536 and itemInfo[arg1].field_2816 > -1 / itemInfo[arg1].field_1536:
            revert with 0, 17
        if not itemInfo[arg1].field_3328:
            revert with 0, 18
        return (itemInfo[arg1].field_1536 * itemInfo[arg1].field_2816 / itemInfo[arg1].field_3328)
    if sub_d7879c80[arg1].field_768 and itemInfo[arg1].field_2816 > -1 / sub_d7879c80[arg1].field_768:
        revert with 0, 17
    if not itemInfo[arg1].field_3328:
        revert with 0, 18
    return (sub_d7879c80[arg1].field_768 * itemInfo[arg1].field_2816 / itemInfo[arg1].field_3328)
}

function sub_51563f8e(?) payable {
    require calldata.size - 4 >= 32
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor51:
        revert with 0, 'Pausable: paused'
    if not itemInfo[arg1].field_0:
        revert with 0, 'Not existing item'
    if itemInfo[arg1].field_2048:
        revert with 0, 'Item already sold'
    if itemInfo[arg1].field_768 != msg.sender:
        revert with 0, 'Not owner of the item'
    if stor206[arg1]:
        revert with 0, 'Already cancelled item'
    if itemInfo[arg1].field_3072 > 2:
        revert with 0, 33
    if itemInfo[arg1].field_3072 == 2:
        if block.timestamp < itemInfo[arg1].field_2560:
            revert with 0, 'Not expired escrow'
    if itemInfo[arg1].field_3072 > 2:
        revert with 0, 33
    if itemInfo[arg1].field_3072 == 1:
        if block.timestamp < itemInfo[arg1].field_2560:
            revert with 0, 'Not expired auction'
        if sub_d7879c80[arg1].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to cancel auction has already bid'
    stor206[arg1] = 1
    require ext_code.size(itemInfo[arg1].field_256)
    call itemInfo[arg1].field_256.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, itemInfo[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor203++
    if itemInfo[arg1].field_3072 >= 3:
        revert with 0, 33
    emit 0x78cd7d43: itemInfo[arg1].field_0, itemInfo[arg1].field_256, itemInfo[arg1].field_512, itemInfo[arg1].field_768, itemInfo[arg1].field_1024, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, bool(itemInfo[arg1].field_2048), itemInfo[arg1].field_2304, itemInfo[arg1].field_2560, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_0
    stor151 = 1
}

function name() {
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor204.length):
            if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor204.length):
                if 31 < uint255(stor204.length) * 0.5:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor204.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                mem[128] = 256 * stor204.length.field_8
        else:
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if stor204.length.field_1:
                if 31 < stor204.length.field_1:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while stor204.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                mem[128] = 256 * stor204.length.field_8
        mem[ceil32(uint255(stor204.length) * 0.5) + 192 len ceil32(uint255(stor204.length) * 0.5)] = mem[128 len ceil32(uint255(stor204.length) * 0.5)]
        if ceil32(uint255(stor204.length) * 0.5) > uint255(stor204.length) * 0.5:
            mem[(uint255(stor204.length) * 0.5) + ceil32(uint255(stor204.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)], mem[(2 * ceil32(uint255(stor204.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor204.length) * 0.5)]), 
    if bool(stor204.length) == stor204.length.field_1 < 32:
        revert with 0, 34
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor204.length):
            if 31 < uint255(stor204.length) * 0.5:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while (uint255(stor204.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if stor204.length.field_1:
            if 31 < stor204.length.field_1:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while stor204.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
    if ceil32(stor204.length.field_1) > stor204.length.field_1:
        mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
    return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
}

function initialize(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        stor51 = 0
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        stor51 = 0
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor151 = 1
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor204.length) = 52
        stor204.length.field_8 = 'Omniverse NFT Market Place' / 256
        idx = 0
        while (uint255(stor204.length) * 0.5) + 31 / 32 > idx:
            stor204[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        uint8(stor204.length) = 52
        stor204.length.field_8 = 'Omniverse NFT Market Place' / 256
        idx = 0
        while stor204.length.field_1 + 31 / 32 > idx:
            stor204[idx].field_0 = 0
            idx = idx + 1
            continue 
    feeRate = 5
    feeDenominator = 1000
    sub_51636d8c = 25
    sub_1ab8c698 = 1000
    sub_f53c7234Address = arg1
    feeAddress = arg2
    stor9382 = 1
    stor211[arg1] = 1
    idx = 0
    while idx < arg3.length:
        require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
        mem[0] = address(cd[((32 * idx) + arg3 + 36)])
        mem[32] = 211
        stor211[address(cd[((32 * idx) + arg3 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor215 = royaltyInfo(uint256 arg1, uint256 arg2)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_85efc2af(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg7 < 3
    require arg8 == address(arg8)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor51:
        revert with 0, 'Pausable: paused'
    if not arg5:
        if feeRate <= 0:
            revert with 0, 'Fees not set'
        if sub_51636d8c <= 0:
            revert with 0, 'Fees not set'
        if not address(arg1):
            revert with 0, 'Nft contract is zero'
        if arg4 <= 0:
            revert with 0, 'Price must be above zero'
        if bool(stor211[address(arg3)]) != 1:
            revert with 0, 'Payment token not allowed'
        if arg7 > 2:
            revert with 0, 33
        if arg7 == 1:
            revert with 0, 'Invalid item for sale'
        if arg7 > 2:
            revert with 0, 33
        if arg7 == 2:
            revert with 0, 'Invalid item for sale'
        if arg7 > 2:
            revert with 0, 33
        if arg7:
            revert with 0, 'Invalid item for sale'
    else:
        if block.timestamp > !arg5:
            revert with 0, 17
        if feeRate <= 0:
            revert with 0, 'Fees not set'
        if sub_51636d8c <= 0:
            revert with 0, 'Fees not set'
        if not address(arg1):
            revert with 0, 'Nft contract is zero'
        if arg4 <= 0:
            revert with 0, 'Price must be above zero'
        if bool(stor211[address(arg3)]) != 1:
            revert with 0, 'Payment token not allowed'
        if arg7 > 2:
            revert with 0, 33
        if arg7 == 1:
            if block.timestamp + arg5 <= 0:
                revert with 0, 'Invalid item for sale'
            if arg6 <= 0:
                revert with 0, 'Invalid item for sale'
        else:
            if arg7 > 2:
                revert with 0, 33
            if arg7 != 2:
                if arg7 > 2:
                    revert with 0, 33
                if arg7:
                    revert with 0, 'Invalid item for sale'
            else:
                if block.timestamp + arg5 <= 0:
                    revert with 0, 'Invalid item for sale'
                if not address(arg8):
                    revert with 0, 'Invalid item for sale'
    require ext_code.size(address(arg1))
    call address(arg1).0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor201++
    if arg7 > 2:
        revert with 0, 33
    if arg7 != 2:
        if not arg5:
            if arg7 > 2:
                revert with 0, 33
            itemInfo[stor201].field_0 = stor201
            itemInfo[stor201].field_256 = address(arg1)
            itemInfo[stor201].field_512 = arg2
            itemInfo[stor201].field_768 = msg.sender
            itemInfo[stor201].field_1024 = 0
            itemInfo[stor201].field_1280 = address(arg3)
            itemInfo[stor201].field_1536 = arg4
            itemInfo[stor201].field_1792 = arg6
            itemInfo[stor201].field_2048 = 0
            itemInfo[stor201].field_2304 = block.timestamp
            itemInfo[stor201].field_2560 = 0
        else:
            if block.timestamp > !arg5:
                revert with 0, 17
            if arg7 > 2:
                revert with 0, 33
            itemInfo[stor201].field_0 = stor201
            itemInfo[stor201].field_256 = address(arg1)
            itemInfo[stor201].field_512 = arg2
            itemInfo[stor201].field_768 = msg.sender
            itemInfo[stor201].field_1024 = 0
            itemInfo[stor201].field_1280 = address(arg3)
            itemInfo[stor201].field_1536 = arg4
            itemInfo[stor201].field_1792 = arg6
            itemInfo[stor201].field_2048 = 0
            itemInfo[stor201].field_2304 = block.timestamp
            itemInfo[stor201].field_2560 = block.timestamp + arg5
    else:
        if not arg5:
            if arg7 > 2:
                revert with 0, 33
            itemInfo[stor201].field_0 = stor201
            itemInfo[stor201].field_256 = address(arg1)
            itemInfo[stor201].field_512 = arg2
            itemInfo[stor201].field_768 = msg.sender
            itemInfo[stor201].field_1024 = address(arg8)
            itemInfo[stor201].field_1280 = address(arg3)
            itemInfo[stor201].field_1536 = arg4
            itemInfo[stor201].field_1792 = arg6
            itemInfo[stor201].field_2048 = 0
            itemInfo[stor201].field_2304 = block.timestamp
            itemInfo[stor201].field_2560 = 0
        else:
            if block.timestamp > !arg5:
                revert with 0, 17
            if arg7 > 2:
                revert with 0, 33
            itemInfo[stor201].field_0 = stor201
            itemInfo[stor201].field_256 = address(arg1)
            itemInfo[stor201].field_512 = arg2
            itemInfo[stor201].field_768 = msg.sender
            itemInfo[stor201].field_1024 = address(arg8)
            itemInfo[stor201].field_1280 = address(arg3)
            itemInfo[stor201].field_1536 = arg4
            itemInfo[stor201].field_1792 = arg6
            itemInfo[stor201].field_2048 = 0
            itemInfo[stor201].field_2304 = block.timestamp
            itemInfo[stor201].field_2560 = block.timestamp + arg5
    if sub_f53c7234Address == address(arg3):
        itemInfo[stor201].field_2816 = feeRate
        if arg7 > 2:
            revert with 0, 33
        itemInfo[stor201].field_3072 = arg7 or Mask(248, 8, itemInfo[stor201].field_3072)
        itemInfo[stor201].field_3328 = feeDenominator
    else:
        itemInfo[stor201].field_2816 = sub_51636d8c
        if arg7 > 2:
            revert with 0, 33
        itemInfo[stor201].field_3072 = arg7 or Mask(248, 8, itemInfo[stor201].field_3072)
        itemInfo[stor201].field_3328 = sub_1ab8c698
    if itemInfo[stor201].field_3072 >= 3:
        revert with 0, 33
    emit 0xcd086138: itemInfo[stor201].field_0, itemInfo[stor201].field_256, itemInfo[stor201].field_512, itemInfo[stor201].field_768, itemInfo[stor201].field_1024, itemInfo[stor201].field_1280, itemInfo[stor201].field_1536, itemInfo[stor201].field_1792, bool(itemInfo[stor201].field_2048), itemInfo[stor201].field_2304, itemInfo[stor201].field_2560, itemInfo[stor201].field_2816, itemInfo[stor201].field_3072, itemInfo[stor201].field_3328, itemInfo[stor201].field_0
    stor151 = 1
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor201:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 205
        if itemInfo[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 206
        if stor206[idx + 1]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _109 = mem[64]
            mem[64] = mem[64] + 448
            mem[_109] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_109 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_109 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_109 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_109 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_109 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_109 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_109 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_109 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_109 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_109 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_109 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_109 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_109 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _109
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _81 = mem[64]
        mem[mem[64]] = 32
        _82 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _82:
            _130 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_130 + 44 len 20]
            mem[s + 64] = mem[_130 + 64]
            mem[s + 96] = mem[_130 + 108 len 20]
            mem[s + 128] = mem[_130 + 140 len 20]
            mem[s + 160] = mem[_130 + 172 len 20]
            mem[s + 192] = mem[_130 + 192]
            mem[s + 224] = mem[_130 + 224]
            mem[s + 256] = bool(mem[_130 + 256])
            mem[s + 288] = mem[_130 + 288]
            mem[s + 320] = mem[_130 + 320]
            mem[s + 352] = mem[_130 + 352]
            if mem[_130 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_130 + 384]
            mem[s + 416] = mem[_130 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _81 + (448 * _82) + -mem[64] + 64
    mem[64] = (32 * s) + 576
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[(32 * s) + 448] = 0
    mem[(32 * s) + 480] = 0
    mem[var18002] = 0
    mem[var18002 + 32] = 0
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _276 = mem[64]
            mem[64] = mem[64] + 448
            mem[_276] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_276 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_276 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_276 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_276 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_276 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_276 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_276 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_276 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_276 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_276 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_276 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_276 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_276 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _276
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _246 = mem[64]
        mem[mem[64]] = 32
        _247 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _247:
            _295 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_295 + 44 len 20]
            mem[s + 64] = mem[_295 + 64]
            mem[s + 96] = mem[_295 + 108 len 20]
            mem[s + 128] = mem[_295 + 140 len 20]
            mem[s + 160] = mem[_295 + 172 len 20]
            mem[s + 192] = mem[_295 + 192]
            mem[s + 224] = mem[_295 + 224]
            mem[s + 256] = bool(mem[_295 + 256])
            mem[s + 288] = mem[_295 + 288]
            mem[s + 320] = mem[_295 + 320]
            mem[s + 352] = mem[_295 + 352]
            if mem[_295 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_295 + 384]
            mem[s + 416] = mem[_295 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _246 + (448 * _247) + -mem[64] + 64
    mem[64] = (32 * s) + 1024
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[(32 * s) + 640] = 0
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[(32 * s) + 768] = 0
    mem[(32 * s) + 800] = 0
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[var26002] = 0
    mem[var26002 + 32] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _441 = mem[64]
            mem[64] = mem[64] + 448
            mem[_441] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_441 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_441 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_441 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_441 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_441 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_441 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_441 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_441 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_441 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_441 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_441 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_441 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_441 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _441
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _411 = mem[64]
        mem[mem[64]] = 32
        _412 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _412:
            _460 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_460 + 44 len 20]
            mem[s + 64] = mem[_460 + 64]
            mem[s + 96] = mem[_460 + 108 len 20]
            mem[s + 128] = mem[_460 + 140 len 20]
            mem[s + 160] = mem[_460 + 172 len 20]
            mem[s + 192] = mem[_460 + 192]
            mem[s + 224] = mem[_460 + 224]
            mem[s + 256] = bool(mem[_460 + 256])
            mem[s + 288] = mem[_460 + 288]
            mem[s + 320] = mem[_460 + 320]
            mem[s + 352] = mem[_460 + 352]
            if mem[_460 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_460 + 384]
            mem[s + 416] = mem[_460 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _411 + (448 * _412) + -mem[64] + 64
    mem[64] = (32 * s) + 1472
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[(32 * s) + 1152] = 0
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[(32 * s) + 1280] = 0
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[var34002] = 0
    mem[var34002 + 32] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _606 = mem[64]
            mem[64] = mem[64] + 448
            mem[_606] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_606 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_606 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_606 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_606 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_606 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_606 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_606 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_606 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_606 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_606 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_606 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_606 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_606 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _606
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _576 = mem[64]
        mem[mem[64]] = 32
        _577 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _577:
            _625 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_625 + 44 len 20]
            mem[s + 64] = mem[_625 + 64]
            mem[s + 96] = mem[_625 + 108 len 20]
            mem[s + 128] = mem[_625 + 140 len 20]
            mem[s + 160] = mem[_625 + 172 len 20]
            mem[s + 192] = mem[_625 + 192]
            mem[s + 224] = mem[_625 + 224]
            mem[s + 256] = bool(mem[_625 + 256])
            mem[s + 288] = mem[_625 + 288]
            mem[s + 320] = mem[_625 + 320]
            mem[s + 352] = mem[_625 + 352]
            if mem[_625 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_625 + 384]
            mem[s + 416] = mem[_625 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _576 + (448 * _577) + -mem[64] + 64
    mem[64] = (32 * s) + 1920
    mem[(32 * s) + 1472] = 0
    mem[(32 * s) + 1504] = 0
    mem[(32 * s) + 1536] = 0
    mem[(32 * s) + 1568] = 0
    mem[(32 * s) + 1600] = 0
    mem[(32 * s) + 1632] = 0
    mem[(32 * s) + 1664] = 0
    mem[(32 * s) + 1696] = 0
    mem[(32 * s) + 1728] = 0
    mem[(32 * s) + 1760] = 0
    mem[(32 * s) + 1792] = 0
    mem[(32 * s) + 1824] = 0
    mem[var42002] = 0
    mem[var42002 + 32] = 0
    mem[var44002] = var44001
    if var44003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _771 = mem[64]
            mem[64] = mem[64] + 448
            mem[_771] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_771 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_771 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_771 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_771 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_771 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_771 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_771 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_771 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_771 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_771 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_771 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_771 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_771 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _771
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _741 = mem[64]
        mem[mem[64]] = 32
        _742 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _742:
            _790 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_790 + 44 len 20]
            mem[s + 64] = mem[_790 + 64]
            mem[s + 96] = mem[_790 + 108 len 20]
            mem[s + 128] = mem[_790 + 140 len 20]
            mem[s + 160] = mem[_790 + 172 len 20]
            mem[s + 192] = mem[_790 + 192]
            mem[s + 224] = mem[_790 + 224]
            mem[s + 256] = bool(mem[_790 + 256])
            mem[s + 288] = mem[_790 + 288]
            mem[s + 320] = mem[_790 + 320]
            mem[s + 352] = mem[_790 + 352]
            if mem[_790 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_790 + 384]
            mem[s + 416] = mem[_790 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _741 + (448 * _742) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor201:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 205
        if itemInfo[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 206
        if stor206[idx + 1]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = 205
        if itemInfo[idx + 1].field_2048:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_2048:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _128 = mem[64]
            mem[64] = mem[64] + 448
            mem[_128] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_128 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_128 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_128 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_128 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_128 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_128 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_128 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_128 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_128 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_128 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_128 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_128 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_128 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _128
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _86 = mem[64]
        mem[mem[64]] = 32
        _87 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _87:
            _137 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_137 + 44 len 20]
            mem[s + 64] = mem[_137 + 64]
            mem[s + 96] = mem[_137 + 108 len 20]
            mem[s + 128] = mem[_137 + 140 len 20]
            mem[s + 160] = mem[_137 + 172 len 20]
            mem[s + 192] = mem[_137 + 192]
            mem[s + 224] = mem[_137 + 224]
            mem[s + 256] = bool(mem[_137 + 256])
            mem[s + 288] = mem[_137 + 288]
            mem[s + 320] = mem[_137 + 320]
            mem[s + 352] = mem[_137 + 352]
            if mem[_137 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_137 + 384]
            mem[s + 416] = mem[_137 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _86 + (448 * _87) + -mem[64] + 64
    mem[64] = (32 * s) + 576
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[(32 * s) + 416] = 0
    mem[(32 * s) + 448] = 0
    mem[(32 * s) + 480] = 0
    mem[var18002] = 0
    mem[var18002 + 32] = 0
    mem[var20002] = var20001
    if not var20003 - 1:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_2048:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _299 = mem[64]
            mem[64] = mem[64] + 448
            mem[_299] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_299 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_299 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_299 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_299 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_299 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_299 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_299 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_299 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_299 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_299 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_299 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_299 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_299 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _299
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _257 = mem[64]
        mem[mem[64]] = 32
        _258 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _258:
            _308 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_308 + 44 len 20]
            mem[s + 64] = mem[_308 + 64]
            mem[s + 96] = mem[_308 + 108 len 20]
            mem[s + 128] = mem[_308 + 140 len 20]
            mem[s + 160] = mem[_308 + 172 len 20]
            mem[s + 192] = mem[_308 + 192]
            mem[s + 224] = mem[_308 + 224]
            mem[s + 256] = bool(mem[_308 + 256])
            mem[s + 288] = mem[_308 + 288]
            mem[s + 320] = mem[_308 + 320]
            mem[s + 352] = mem[_308 + 352]
            if mem[_308 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_308 + 384]
            mem[s + 416] = mem[_308 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _257 + (448 * _258) + -mem[64] + 64
    mem[64] = (32 * s) + 1024
    mem[(32 * s) + 576] = 0
    mem[(32 * s) + 608] = 0
    mem[(32 * s) + 640] = 0
    mem[(32 * s) + 672] = 0
    mem[(32 * s) + 704] = 0
    mem[(32 * s) + 736] = 0
    mem[(32 * s) + 768] = 0
    mem[(32 * s) + 800] = 0
    mem[(32 * s) + 832] = 0
    mem[(32 * s) + 864] = 0
    mem[(32 * s) + 896] = 0
    mem[(32 * s) + 928] = 0
    mem[var26002] = 0
    mem[var26002 + 32] = 0
    mem[var28002] = idx
    if not s - 1:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_2048:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _470 = mem[64]
            mem[64] = mem[64] + 448
            mem[_470] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_470 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_470 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_470 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_470 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_470 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_470 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_470 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_470 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_470 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_470 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_470 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_470 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_470 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _470
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _428 = mem[64]
        mem[mem[64]] = 32
        _429 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _429:
            _479 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_479 + 44 len 20]
            mem[s + 64] = mem[_479 + 64]
            mem[s + 96] = mem[_479 + 108 len 20]
            mem[s + 128] = mem[_479 + 140 len 20]
            mem[s + 160] = mem[_479 + 172 len 20]
            mem[s + 192] = mem[_479 + 192]
            mem[s + 224] = mem[_479 + 224]
            mem[s + 256] = bool(mem[_479 + 256])
            mem[s + 288] = mem[_479 + 288]
            mem[s + 320] = mem[_479 + 320]
            mem[s + 352] = mem[_479 + 352]
            if mem[_479 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_479 + 384]
            mem[s + 416] = mem[_479 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _428 + (448 * _429) + -mem[64] + 64
    mem[64] = (32 * s) + 1472
    mem[(32 * s) + 1024] = 0
    mem[(32 * s) + 1056] = 0
    mem[(32 * s) + 1088] = 0
    mem[(32 * s) + 1120] = 0
    mem[(32 * s) + 1152] = 0
    mem[(32 * s) + 1184] = 0
    mem[(32 * s) + 1216] = 0
    mem[(32 * s) + 1248] = 0
    mem[(32 * s) + 1280] = 0
    mem[(32 * s) + 1312] = 0
    mem[(32 * s) + 1344] = 0
    mem[(32 * s) + 1376] = 0
    mem[var34002] = 0
    mem[var34002 + 32] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_2048:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _641 = mem[64]
            mem[64] = mem[64] + 448
            mem[_641] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_641 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_641 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_641 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_641 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_641 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_641 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_641 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_641 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_641 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_641 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_641 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_641 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_641 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _641
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _599 = mem[64]
        mem[mem[64]] = 32
        _600 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _600:
            _650 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_650 + 44 len 20]
            mem[s + 64] = mem[_650 + 64]
            mem[s + 96] = mem[_650 + 108 len 20]
            mem[s + 128] = mem[_650 + 140 len 20]
            mem[s + 160] = mem[_650 + 172 len 20]
            mem[s + 192] = mem[_650 + 192]
            mem[s + 224] = mem[_650 + 224]
            mem[s + 256] = bool(mem[_650 + 256])
            mem[s + 288] = mem[_650 + 288]
            mem[s + 320] = mem[_650 + 320]
            mem[s + 352] = mem[_650 + 352]
            if mem[_650 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_650 + 384]
            mem[s + 416] = mem[_650 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _599 + (448 * _600) + -mem[64] + 64
    mem[64] = (32 * s) + 1920
    mem[(32 * s) + 1472] = 0
    mem[(32 * s) + 1504] = 0
    mem[(32 * s) + 1536] = 0
    mem[(32 * s) + 1568] = 0
    mem[(32 * s) + 1600] = 0
    mem[(32 * s) + 1632] = 0
    mem[(32 * s) + 1664] = 0
    mem[(32 * s) + 1696] = 0
    mem[(32 * s) + 1728] = 0
    mem[(32 * s) + 1760] = 0
    mem[(32 * s) + 1792] = 0
    mem[(32 * s) + 1824] = 0
    mem[var42002] = 0
    mem[var42002 + 32] = 0
    mem[var44002] = var44001
    if var44003 - 1:
        # nil
    else:
        idx = 0
        s = 0
        while idx < stor201:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 206
            if stor206[idx + 1]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = 205
            if itemInfo[idx + 1].field_2048:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = itemInfo[idx + 1].field_0
            mem[32] = 205
            _812 = mem[64]
            mem[64] = mem[64] + 448
            mem[_812] = itemInfo[itemInfo[idx + 1].field_0].field_0
            mem[_812 + 32] = itemInfo[itemInfo[idx + 1].field_0].field_256
            mem[_812 + 64] = itemInfo[itemInfo[idx + 1].field_0].field_512
            mem[_812 + 96] = itemInfo[itemInfo[idx + 1].field_0].field_768
            mem[_812 + 128] = itemInfo[itemInfo[idx + 1].field_0].field_1024
            mem[_812 + 160] = itemInfo[itemInfo[idx + 1].field_0].field_1280
            mem[_812 + 192] = itemInfo[itemInfo[idx + 1].field_0].field_1536
            mem[_812 + 224] = itemInfo[itemInfo[idx + 1].field_0].field_1792
            mem[_812 + 256] = bool(itemInfo[itemInfo[idx + 1].field_0].field_2048)
            mem[_812 + 288] = itemInfo[itemInfo[idx + 1].field_0].field_2304
            mem[_812 + 320] = itemInfo[itemInfo[idx + 1].field_0].field_2560
            mem[_812 + 352] = itemInfo[itemInfo[idx + 1].field_0].field_2816
            if itemInfo[itemInfo[idx + 1].field_0].field_3072 > 2:
                revert with 0, 33
            mem[_812 + 384] = itemInfo[itemInfo[idx + 1].field_0].field_3072
            mem[_812 + 416] = itemInfo[itemInfo[idx + 1].field_0].field_3328
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _812
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _770 = mem[64]
        mem[mem[64]] = 32
        _771 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _771:
            _821 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_821 + 44 len 20]
            mem[s + 64] = mem[_821 + 64]
            mem[s + 96] = mem[_821 + 108 len 20]
            mem[s + 128] = mem[_821 + 140 len 20]
            mem[s + 160] = mem[_821 + 172 len 20]
            mem[s + 192] = mem[_821 + 192]
            mem[s + 224] = mem[_821 + 224]
            mem[s + 256] = bool(mem[_821 + 256])
            mem[s + 288] = mem[_821 + 288]
            mem[s + 320] = mem[_821 + 320]
            mem[s + 352] = mem[_821 + 352]
            if mem[_821 + 384] >= 3:
                revert with 0, 33
            mem[s + 384] = mem[_821 + 384]
            mem[s + 416] = mem[_821 + 416]
            idx = idx + 1
            s = s + 448
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _770 + (448 * _771) + -mem[64] + 64
}

function fetchMarketItems(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < 1:
        revert with 0, 'Invalid count'
    if arg1 > !(arg2 - 1):
        revert with 0, 17
    if arg1 + arg2 - 1 >= stor201:
        revert with 0, 'Invalid start and count'
    if arg2 > test266151307():
        revert with 0, 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if 1 > !var56002:
            revert with 0, 17
        mem[0] = var60001
        mem[32] = 206
        if stor206[var60001]:
            if not var39001:
                if var66001 == -1:
                    revert with 0, 17
                if var70001 >= stor201:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _2118 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_2118 + 44 len 20]
                        mem[s + 64] = mem[_2118 + 64]
                        mem[s + 96] = mem[_2118 + 108 len 20]
                        mem[s + 128] = mem[_2118 + 140 len 20]
                        mem[s + 160] = mem[_2118 + 172 len 20]
                        mem[s + 192] = mem[_2118 + 192]
                        mem[s + 224] = mem[_2118 + 224]
                        mem[s + 256] = bool(mem[_2118 + 256])
                        mem[s + 288] = mem[_2118 + 288]
                        mem[s + 320] = mem[_2118 + 320]
                        mem[s + 352] = mem[_2118 + 352]
                        if mem[_2118 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_2118 + 384]
                        mem[s + 416] = mem[_2118 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
                if 1 > !var74002:
                    revert with 0, 17
                mem[0] = var78001
                mem[32] = 206
                if not stor206[var78001]:
                    if 1 > !var82002:
                        revert with 0, 17
                    # nil
                else:
                    if not var57001:
                        if var84001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var84002:
                            revert with 0, 17
                        if var88001 <= arg2:
                            # nil
                        else:
                            mem[(32 * arg2) + 128] = 32
                            mem[(32 * arg2) + 160] = arg2
                            idx = 0
                            s = (32 * arg2) + 192
                            t = 128
                            while idx < mem[96]:
                                _8185 = mem[t]
                                mem[s] = mem[mem[t]]
                                mem[s + 32] = mem[_8185 + 44 len 20]
                                mem[s + 64] = mem[_8185 + 64]
                                mem[s + 96] = mem[_8185 + 108 len 20]
                                mem[s + 128] = mem[_8185 + 140 len 20]
                                mem[s + 160] = mem[_8185 + 172 len 20]
                                mem[s + 192] = mem[_8185 + 192]
                                mem[s + 224] = mem[_8185 + 224]
                                mem[s + 256] = bool(mem[_8185 + 256])
                                mem[s + 288] = mem[_8185 + 288]
                                mem[s + 320] = mem[_8185 + 320]
                                mem[s + 352] = mem[_8185 + 352]
                                if mem[_8185 + 384] >= 3:
                                    revert with 0, 33
                                mem[s + 384] = mem[_8185 + 384]
                                mem[s + 416] = mem[_8185 + 416]
                                idx = idx + 1
                                s = s + 448
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (481 * arg2) + -mem[64] + 192
            else:
                if 1 > !var66002:
                    revert with 0, 17
                if var70001 > arg2:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _1690 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_1690 + 44 len 20]
                        mem[s + 64] = mem[_1690 + 64]
                        mem[s + 96] = mem[_1690 + 108 len 20]
                        mem[s + 128] = mem[_1690 + 140 len 20]
                        mem[s + 160] = mem[_1690 + 172 len 20]
                        mem[s + 192] = mem[_1690 + 192]
                        mem[s + 224] = mem[_1690 + 224]
                        mem[s + 256] = bool(mem[_1690 + 256])
                        mem[s + 288] = mem[_1690 + 288]
                        mem[s + 320] = mem[_1690 + 320]
                        mem[s + 352] = mem[_1690 + 352]
                        if mem[_1690 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_1690 + 384]
                        mem[s + 416] = mem[_1690 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
                if 1 > !var74002:
                    revert with 0, 17
                mem[0] = itemInfo[var78001].field_0
                mem[32] = 205
                mem[64] = (32 * arg2) + 576
                mem[(32 * arg2) + 128] = itemInfo[itemInfo[var78001].field_0].field_0
                mem[(32 * arg2) + 160] = itemInfo[itemInfo[var78001].field_0].field_256
                mem[(32 * arg2) + 192] = itemInfo[itemInfo[var78001].field_0].field_512
                mem[(32 * arg2) + 224] = itemInfo[itemInfo[var78001].field_0].field_768
                mem[(32 * arg2) + 256] = itemInfo[itemInfo[var78001].field_0].field_1024
                mem[(32 * arg2) + 288] = itemInfo[itemInfo[var78001].field_0].field_1280
                mem[(32 * arg2) + 320] = itemInfo[itemInfo[var78001].field_0].field_1536
                mem[(32 * arg2) + 352] = itemInfo[itemInfo[var78001].field_0].field_1792
                mem[(32 * arg2) + 384] = bool(itemInfo[itemInfo[var78001].field_0].field_2048)
                mem[(32 * arg2) + 416] = itemInfo[itemInfo[var78001].field_0].field_2304
                mem[(32 * arg2) + 448] = itemInfo[itemInfo[var78001].field_0].field_2560
                mem[(32 * arg2) + 480] = itemInfo[itemInfo[var78001].field_0].field_2816
                if itemInfo[itemInfo[var78001].field_0].field_3072 > 2:
                    revert with 0, 33
                if var80001 > 2:
                    revert with 0, 33
                mem[var80002] = var80001
                mem[var80002 + 32] = stor13[var80003]
                if var80009 >= arg2:
                    revert with 0, 50
                mem[(32 * var80009) + 128] = var80004
                if var80009 >= arg2:
                    revert with 0, 50
                if mem[var80004 + 384] > 2:
                    revert with 0, 33
                if mem[var80004 + 384] != 1:
                    if var80009 > -2:
                        revert with 0, 17
                    if var69001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var80009 >= arg2:
                        revert with 0, 50
                    mem[0] = mem[var80004]
                    if var80009 >= arg2:
                        revert with 0, 50
                    if var80009 > -2:
                        revert with 0, 17
                    if var75001 == -1:
                        revert with 0, 17
                    # nil
        else:
            if 1 > !var64002:
                revert with 0, 17
            mem[0] = var68001
            mem[32] = 205
            if not var70001:
                if var74001 == -1:
                    revert with 0, 17
                if var78001 < stor201:
                    if 1 > !var82002:
                        revert with 0, 17
                    if stor206[var86001]:
                        # nil
                    else:
                        if 1 > !var90002:
                            revert with 0, 17
                        # nil
                else:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _4431 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_4431 + 44 len 20]
                        mem[s + 64] = mem[_4431 + 64]
                        mem[s + 96] = mem[_4431 + 108 len 20]
                        mem[s + 128] = mem[_4431 + 140 len 20]
                        mem[s + 160] = mem[_4431 + 172 len 20]
                        mem[s + 192] = mem[_4431 + 192]
                        mem[s + 224] = mem[_4431 + 224]
                        mem[s + 256] = bool(mem[_4431 + 256])
                        mem[s + 288] = mem[_4431 + 288]
                        mem[s + 320] = mem[_4431 + 320]
                        mem[s + 352] = mem[_4431 + 352]
                        if mem[_4431 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_4431 + 384]
                        mem[s + 416] = mem[_4431 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
            else:
                if 1 > !var74002:
                    revert with 0, 17
                if var78001 > arg2:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _3649 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_3649 + 44 len 20]
                        mem[s + 64] = mem[_3649 + 64]
                        mem[s + 96] = mem[_3649 + 108 len 20]
                        mem[s + 128] = mem[_3649 + 140 len 20]
                        mem[s + 160] = mem[_3649 + 172 len 20]
                        mem[s + 192] = mem[_3649 + 192]
                        mem[s + 224] = mem[_3649 + 224]
                        mem[s + 256] = bool(mem[_3649 + 256])
                        mem[s + 288] = mem[_3649 + 288]
                        mem[s + 320] = mem[_3649 + 320]
                        mem[s + 352] = mem[_3649 + 352]
                        if mem[_3649 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_3649 + 384]
                        mem[s + 416] = mem[_3649 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
                if 1 > !var82002:
                    revert with 0, 17
                mem[0] = itemInfo[var86001].field_0
                mem[32] = 205
                mem[64] = (32 * arg2) + 576
                mem[(32 * arg2) + 128] = itemInfo[itemInfo[var86001].field_0].field_0
                mem[(32 * arg2) + 160] = itemInfo[itemInfo[var86001].field_0].field_256
                mem[(32 * arg2) + 192] = itemInfo[itemInfo[var86001].field_0].field_512
                mem[(32 * arg2) + 224] = itemInfo[itemInfo[var86001].field_0].field_768
                mem[(32 * arg2) + 256] = itemInfo[itemInfo[var86001].field_0].field_1024
                mem[(32 * arg2) + 288] = itemInfo[itemInfo[var86001].field_0].field_1280
                mem[(32 * arg2) + 320] = itemInfo[itemInfo[var86001].field_0].field_1536
                mem[(32 * arg2) + 352] = itemInfo[itemInfo[var86001].field_0].field_1792
                mem[(32 * arg2) + 384] = bool(itemInfo[itemInfo[var86001].field_0].field_2048)
                mem[(32 * arg2) + 416] = itemInfo[itemInfo[var86001].field_0].field_2304
                mem[(32 * arg2) + 448] = itemInfo[itemInfo[var86001].field_0].field_2560
                mem[(32 * arg2) + 480] = itemInfo[itemInfo[var86001].field_0].field_2816
                if itemInfo[itemInfo[var86001].field_0].field_3072 > 2:
                    revert with 0, 33
                if var88001 > 2:
                    revert with 0, 33
                mem[var88002] = var88001
                mem[var88002 + 32] = stor13[var88003]
                if var88009 >= arg2:
                    revert with 0, 50
                mem[(32 * var88009) + 128] = var88004
                if var88009 >= arg2:
                    revert with 0, 50
                if mem[var88004 + 384] > 2:
                    revert with 0, 33
                if mem[var88004 + 384] != 1:
                    if var88009 > -2:
                        revert with 0, 17
                    # nil
                else:
                    if var88009 >= arg2:
                        revert with 0, 50
                    mem[0] = mem[var88004]
                    if var88009 >= arg2:
                        revert with 0, 50
                    if var88009 > -2:
                        revert with 0, 17
                    # nil
    else:
        mem[64] = (32 * arg2) + 576
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[(32 * arg2) + 192] = 0
        mem[(32 * arg2) + 224] = 0
        mem[(32 * arg2) + 256] = 0
        mem[(32 * arg2) + 288] = 0
        mem[(32 * arg2) + 320] = 0
        mem[(32 * arg2) + 352] = 0
        mem[(32 * arg2) + 384] = 0
        mem[(32 * arg2) + 416] = 0
        mem[(32 * arg2) + 448] = 0
        mem[(32 * arg2) + 480] = 0
        mem[var26002] = 0
        mem[var26002 + 32] = 0
        mem[var28002] = var28001
        if var28003 - 1:
            mem[64] = (32 * arg2) + 1024
            mem[(32 * arg2) + 576] = 0
            mem[(32 * arg2) + 608] = 0
            mem[(32 * arg2) + 640] = 0
            mem[(32 * arg2) + 672] = 0
            mem[(32 * arg2) + 704] = 0
            mem[(32 * arg2) + 736] = 0
            mem[(32 * arg2) + 768] = 0
            mem[(32 * arg2) + 800] = 0
            mem[(32 * arg2) + 832] = 0
            mem[(32 * arg2) + 864] = 0
            mem[(32 * arg2) + 896] = 0
            mem[(32 * arg2) + 928] = 0
            mem[var34002] = 0
            mem[var34002 + 32] = 0
            mem[var36002] = var36001
            if var36003 - 1:
                if var44003 - 1:
                    if var52003 - 1:
                        # nil
                    else:
                        if 1 > !var90002:
                            revert with 0, 17
                        # nil
                else:
                    if 1 > !var82002:
                        revert with 0, 17
                    if not stor206[var86001]:
                        if 1 > !var90002:
                            revert with 0, 17
                        # nil
                    else:
                        if not var65001:
                            if var92001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if 1 > !var92002:
                                revert with 0, 17
                            # nil
            else:
                if 1 > !var74002:
                    revert with 0, 17
                mem[0] = var78001
                mem[32] = 206
                if not stor206[var78001]:
                    if 1 > !var82002:
                        revert with 0, 17
                    if not var88001:
                        if var92001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var92002:
                            revert with 0, 17
                        # nil
                else:
                    if not var57001:
                        if var84001 == -1:
                            revert with 0, 17
                        if var88001 < stor201:
                            if 1 > !var92002:
                                revert with 0, 17
                            # nil
                        else:
                            mem[(32 * arg2) + 1024] = 32
                            mem[(32 * arg2) + 1056] = arg2
                            idx = 0
                            s = (32 * arg2) + 1088
                            t = 128
                            while idx < mem[96]:
                                _8188 = mem[t]
                                mem[s] = mem[mem[t]]
                                mem[s + 32] = mem[_8188 + 44 len 20]
                                mem[s + 64] = mem[_8188 + 64]
                                mem[s + 96] = mem[_8188 + 108 len 20]
                                mem[s + 128] = mem[_8188 + 140 len 20]
                                mem[s + 160] = mem[_8188 + 172 len 20]
                                mem[s + 192] = mem[_8188 + 192]
                                mem[s + 224] = mem[_8188 + 224]
                                mem[s + 256] = bool(mem[_8188 + 256])
                                mem[s + 288] = mem[_8188 + 288]
                                mem[s + 320] = mem[_8188 + 320]
                                mem[s + 352] = mem[_8188 + 352]
                                if mem[_8188 + 384] >= 3:
                                    revert with 0, 33
                                mem[s + 384] = mem[_8188 + 384]
                                mem[s + 416] = mem[_8188 + 416]
                                idx = idx + 1
                                s = s + 448
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (481 * arg2) + -mem[64] + 1088
                    else:
                        if 1 > !var84002:
                            revert with 0, 17
                        if var88001 <= arg2:
                            if 1 > !var92002:
                                revert with 0, 17
                            # nil
                        else:
                            mem[(32 * arg2) + 1024] = 32
                            mem[(32 * arg2) + 1056] = arg2
                            idx = 0
                            s = (32 * arg2) + 1088
                            t = 128
                            while idx < mem[96]:
                                _6915 = mem[t]
                                mem[s] = mem[mem[t]]
                                mem[s + 32] = mem[_6915 + 44 len 20]
                                mem[s + 64] = mem[_6915 + 64]
                                mem[s + 96] = mem[_6915 + 108 len 20]
                                mem[s + 128] = mem[_6915 + 140 len 20]
                                mem[s + 160] = mem[_6915 + 172 len 20]
                                mem[s + 192] = mem[_6915 + 192]
                                mem[s + 224] = mem[_6915 + 224]
                                mem[s + 256] = bool(mem[_6915 + 256])
                                mem[s + 288] = mem[_6915 + 288]
                                mem[s + 320] = mem[_6915 + 320]
                                mem[s + 352] = mem[_6915 + 352]
                                if mem[_6915 + 384] >= 3:
                                    revert with 0, 33
                                mem[s + 384] = mem[_6915 + 384]
                                mem[s + 416] = mem[_6915 + 416]
                                idx = idx + 1
                                s = s + 448
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (481 * arg2) + -mem[64] + 1088
        else:
            if 1 > !var66002:
                revert with 0, 17
            mem[0] = var70001
            mem[32] = 206
            if not stor206[var70001]:
                if 1 > !var74002:
                    revert with 0, 17
                mem[0] = var78001
                mem[32] = 205
                if not var80001:
                    if var84001 == -1:
                        revert with 0, 17
                    if var88001 < stor201:
                        if 1 > !var92002:
                            revert with 0, 17
                        # nil
                    else:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _8189 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_8189 + 44 len 20]
                            mem[s + 64] = mem[_8189 + 64]
                            mem[s + 96] = mem[_8189 + 108 len 20]
                            mem[s + 128] = mem[_8189 + 140 len 20]
                            mem[s + 160] = mem[_8189 + 172 len 20]
                            mem[s + 192] = mem[_8189 + 192]
                            mem[s + 224] = mem[_8189 + 224]
                            mem[s + 256] = bool(mem[_8189 + 256])
                            mem[s + 288] = mem[_8189 + 288]
                            mem[s + 320] = mem[_8189 + 320]
                            mem[s + 352] = mem[_8189 + 352]
                            if mem[_8189 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_8189 + 384]
                            mem[s + 416] = mem[_8189 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
                else:
                    if 1 > !var84002:
                        revert with 0, 17
                    if var88001 <= arg2:
                        if 1 > !var92002:
                            revert with 0, 17
                        # nil
                    else:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _6917 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_6917 + 44 len 20]
                            mem[s + 64] = mem[_6917 + 64]
                            mem[s + 96] = mem[_6917 + 108 len 20]
                            mem[s + 128] = mem[_6917 + 140 len 20]
                            mem[s + 160] = mem[_6917 + 172 len 20]
                            mem[s + 192] = mem[_6917 + 192]
                            mem[s + 224] = mem[_6917 + 224]
                            mem[s + 256] = bool(mem[_6917 + 256])
                            mem[s + 288] = mem[_6917 + 288]
                            mem[s + 320] = mem[_6917 + 320]
                            mem[s + 352] = mem[_6917 + 352]
                            if mem[_6917 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_6917 + 384]
                            mem[s + 416] = mem[_6917 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
            else:
                if not var49001:
                    if var76001 == -1:
                        revert with 0, 17
                    if var80001 < stor201:
                        if 1 > !var84002:
                            revert with 0, 17
                        if stor206[var88001]:
                            # nil
                        else:
                            if 1 > !var92002:
                                revert with 0, 17
                            # nil
                    else:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _4434 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_4434 + 44 len 20]
                            mem[s + 64] = mem[_4434 + 64]
                            mem[s + 96] = mem[_4434 + 108 len 20]
                            mem[s + 128] = mem[_4434 + 140 len 20]
                            mem[s + 160] = mem[_4434 + 172 len 20]
                            mem[s + 192] = mem[_4434 + 192]
                            mem[s + 224] = mem[_4434 + 224]
                            mem[s + 256] = bool(mem[_4434 + 256])
                            mem[s + 288] = mem[_4434 + 288]
                            mem[s + 320] = mem[_4434 + 320]
                            mem[s + 352] = mem[_4434 + 352]
                            if mem[_4434 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_4434 + 384]
                            mem[s + 416] = mem[_4434 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
                else:
                    if 1 > !var76002:
                        revert with 0, 17
                    if var80001 > arg2:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _3650 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_3650 + 44 len 20]
                            mem[s + 64] = mem[_3650 + 64]
                            mem[s + 96] = mem[_3650 + 108 len 20]
                            mem[s + 128] = mem[_3650 + 140 len 20]
                            mem[s + 160] = mem[_3650 + 172 len 20]
                            mem[s + 192] = mem[_3650 + 192]
                            mem[s + 224] = mem[_3650 + 224]
                            mem[s + 256] = bool(mem[_3650 + 256])
                            mem[s + 288] = mem[_3650 + 288]
                            mem[s + 320] = mem[_3650 + 320]
                            mem[s + 352] = mem[_3650 + 352]
                            if mem[_3650 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_3650 + 384]
                            mem[s + 416] = mem[_3650 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
                    if 1 > !var84002:
                        revert with 0, 17
                    mem[0] = itemInfo[var88001].field_0
                    mem[32] = 205
                    mem[64] = (32 * arg2) + 1024
                    mem[(32 * arg2) + 576] = itemInfo[itemInfo[var88001].field_0].field_0
                    mem[(32 * arg2) + 608] = itemInfo[itemInfo[var88001].field_0].field_256
                    mem[(32 * arg2) + 640] = itemInfo[itemInfo[var88001].field_0].field_512
                    mem[(32 * arg2) + 672] = itemInfo[itemInfo[var88001].field_0].field_768
                    mem[(32 * arg2) + 704] = itemInfo[itemInfo[var88001].field_0].field_1024
                    mem[(32 * arg2) + 736] = itemInfo[itemInfo[var88001].field_0].field_1280
                    mem[(32 * arg2) + 768] = itemInfo[itemInfo[var88001].field_0].field_1536
                    mem[(32 * arg2) + 800] = itemInfo[itemInfo[var88001].field_0].field_1792
                    mem[(32 * arg2) + 832] = bool(itemInfo[itemInfo[var88001].field_0].field_2048)
                    mem[(32 * arg2) + 864] = itemInfo[itemInfo[var88001].field_0].field_2304
                    mem[(32 * arg2) + 896] = itemInfo[itemInfo[var88001].field_0].field_2560
                    mem[(32 * arg2) + 928] = itemInfo[itemInfo[var88001].field_0].field_2816
                    if itemInfo[itemInfo[var88001].field_0].field_3072 > 2:
                        revert with 0, 33
                    if var90001 > 2:
                        revert with 0, 33
                    mem[var90002] = var90001
                    mem[var90002 + 32] = stor13[var90003]
                    if var90009 >= arg2:
                        revert with 0, 50
                    mem[(32 * var90009) + 128] = var90004
                    if var90009 >= arg2:
                        revert with 0, 50
                    if mem[var90004 + 384] > 2:
                        revert with 0, 33
                    if mem[var90004 + 384] != 1:
                        if var90009 > -2:
                            revert with 0, 17
                        # nil
                    else:
                        if var90009 >= arg2:
                            revert with 0, 50
                        mem[0] = mem[var90004]
                        if var90009 >= arg2:
                            revert with 0, 50
                        if var90009 > -2:
                            revert with 0, 17
                        # nil
}



}
