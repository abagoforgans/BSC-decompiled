contract main {




// =====================  Runtime code  =====================


#
#  - sub_e4fec332(?)
#  - buyItem(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint8 paused;
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
    return bool(paused)
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
    if paused:
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
    call itemInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
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
        paused = 0
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint16(stor0.field_0) = 257
        paused = 0
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
    if paused:
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
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
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
        if 1 > !var47002:
            revert with 0, 17
        mem[0] = var51001
        mem[32] = 205
        if not itemInfo[var51001].field_1024:
            if 1 > !var55002:
                revert with 0, 17
            mem[0] = var59001
            mem[32] = 206
            if not var61001:
                if var65001 == -1:
                    revert with 0, 17
                if var69001 < stor201:
                    if 1 > !var73002:
                        revert with 0, 17
                    if itemInfo[var77001].field_1024:
                        # nil
                    else:
                        if 1 > !var81002:
                            revert with 0, 17
                        # nil
                else:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _2559 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_2559 + 44 len 20]
                        mem[s + 64] = mem[_2559 + 64]
                        mem[s + 96] = mem[_2559 + 108 len 20]
                        mem[s + 128] = mem[_2559 + 140 len 20]
                        mem[s + 160] = mem[_2559 + 172 len 20]
                        mem[s + 192] = mem[_2559 + 192]
                        mem[s + 224] = mem[_2559 + 224]
                        mem[s + 256] = bool(mem[_2559 + 256])
                        mem[s + 288] = mem[_2559 + 288]
                        mem[s + 320] = mem[_2559 + 320]
                        mem[s + 352] = mem[_2559 + 352]
                        if mem[_2559 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_2559 + 384]
                        mem[s + 416] = mem[_2559 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
            else:
                if 1 > !var65002:
                    revert with 0, 17
                if var69001 > arg2:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _2129 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_2129 + 44 len 20]
                        mem[s + 64] = mem[_2129 + 64]
                        mem[s + 96] = mem[_2129 + 108 len 20]
                        mem[s + 128] = mem[_2129 + 140 len 20]
                        mem[s + 160] = mem[_2129 + 172 len 20]
                        mem[s + 192] = mem[_2129 + 192]
                        mem[s + 224] = mem[_2129 + 224]
                        mem[s + 256] = bool(mem[_2129 + 256])
                        mem[s + 288] = mem[_2129 + 288]
                        mem[s + 320] = mem[_2129 + 320]
                        mem[s + 352] = mem[_2129 + 352]
                        if mem[_2129 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_2129 + 384]
                        mem[s + 416] = mem[_2129 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
                if 1 > !var73002:
                    revert with 0, 17
                if itemInfo[itemInfo[var77001].field_0].field_3072 > 2:
                    revert with 0, 33
                if var79001 > 2:
                    revert with 0, 33
                if var79009 >= arg2:
                    revert with 0, 50
                if var79009 > -2:
                    revert with 0, 17
                # nil
        else:
            if var39001:
                if 1 > !var57002:
                    revert with 0, 17
                if var61001 > arg2:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _1036 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_1036 + 44 len 20]
                        mem[s + 64] = mem[_1036 + 64]
                        mem[s + 96] = mem[_1036 + 108 len 20]
                        mem[s + 128] = mem[_1036 + 140 len 20]
                        mem[s + 160] = mem[_1036 + 172 len 20]
                        mem[s + 192] = mem[_1036 + 192]
                        mem[s + 224] = mem[_1036 + 224]
                        mem[s + 256] = bool(mem[_1036 + 256])
                        mem[s + 288] = mem[_1036 + 288]
                        mem[s + 320] = mem[_1036 + 320]
                        mem[s + 352] = mem[_1036 + 352]
                        if mem[_1036 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_1036 + 384]
                        mem[s + 416] = mem[_1036 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
                if 1 > !var65002:
                    revert with 0, 17
                if itemInfo[itemInfo[var69001].field_0].field_3072 > 2:
                    revert with 0, 33
                if var71001 > 2:
                    revert with 0, 33
                if var71009 >= arg2:
                    revert with 0, 50
                if var71009 > -2:
                    revert with 0, 17
                if var66001 == -1:
                    revert with 0, 17
                # nil
            else:
                if var57001 == -1:
                    revert with 0, 17
                if var61001 >= stor201:
                    mem[(32 * arg2) + 128] = 32
                    mem[(32 * arg2) + 160] = arg2
                    idx = 0
                    s = (32 * arg2) + 192
                    t = 128
                    while idx < mem[96]:
                        _1288 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_1288 + 44 len 20]
                        mem[s + 64] = mem[_1288 + 64]
                        mem[s + 96] = mem[_1288 + 108 len 20]
                        mem[s + 128] = mem[_1288 + 140 len 20]
                        mem[s + 160] = mem[_1288 + 172 len 20]
                        mem[s + 192] = mem[_1288 + 192]
                        mem[s + 224] = mem[_1288 + 224]
                        mem[s + 256] = bool(mem[_1288 + 256])
                        mem[s + 288] = mem[_1288 + 288]
                        mem[s + 320] = mem[_1288 + 320]
                        mem[s + 352] = mem[_1288 + 352]
                        if mem[_1288 + 384] >= 3:
                            revert with 0, 33
                        mem[s + 384] = mem[_1288 + 384]
                        mem[s + 416] = mem[_1288 + 416]
                        idx = idx + 1
                        s = s + 448
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (481 * arg2) + -mem[64] + 192
                if 1 > !var65002:
                    revert with 0, 17
                mem[0] = var69001
                mem[32] = 205
                if not itemInfo[var69001].field_1024:
                    if 1 > !var73002:
                        revert with 0, 17
                    # nil
                else:
                    if not var57001:
                        if var75001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var75002:
                            revert with 0, 17
                        if var79001 <= arg2:
                            # nil
                        else:
                            mem[(32 * arg2) + 128] = 32
                            mem[(32 * arg2) + 160] = arg2
                            idx = 0
                            s = (32 * arg2) + 192
                            t = 128
                            while idx < mem[96]:
                                _4521 = mem[t]
                                mem[s] = mem[mem[t]]
                                mem[s + 32] = mem[_4521 + 44 len 20]
                                mem[s + 64] = mem[_4521 + 64]
                                mem[s + 96] = mem[_4521 + 108 len 20]
                                mem[s + 128] = mem[_4521 + 140 len 20]
                                mem[s + 160] = mem[_4521 + 172 len 20]
                                mem[s + 192] = mem[_4521 + 192]
                                mem[s + 224] = mem[_4521 + 224]
                                mem[s + 256] = bool(mem[_4521 + 256])
                                mem[s + 288] = mem[_4521 + 288]
                                mem[s + 320] = mem[_4521 + 320]
                                mem[s + 352] = mem[_4521 + 352]
                                if mem[_4521 + 384] >= 3:
                                    revert with 0, 33
                                mem[s + 384] = mem[_4521 + 384]
                                mem[s + 416] = mem[_4521 + 416]
                                idx = idx + 1
                                s = s + 448
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (481 * arg2) + -mem[64] + 192
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
        if not var28003 - 1:
            if 1 > !var57002:
                revert with 0, 17
            mem[0] = var61001
            mem[32] = 205
            if itemInfo[var61001].field_1024:
                if not var49001:
                    if var67001 == -1:
                        revert with 0, 17
                    if var71001 < stor201:
                        if 1 > !var75002:
                            revert with 0, 17
                        if itemInfo[var79001].field_1024:
                            # nil
                        else:
                            if 1 > !var83002:
                                revert with 0, 17
                            # nil
                    else:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _2562 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_2562 + 44 len 20]
                            mem[s + 64] = mem[_2562 + 64]
                            mem[s + 96] = mem[_2562 + 108 len 20]
                            mem[s + 128] = mem[_2562 + 140 len 20]
                            mem[s + 160] = mem[_2562 + 172 len 20]
                            mem[s + 192] = mem[_2562 + 192]
                            mem[s + 224] = mem[_2562 + 224]
                            mem[s + 256] = bool(mem[_2562 + 256])
                            mem[s + 288] = mem[_2562 + 288]
                            mem[s + 320] = mem[_2562 + 320]
                            mem[s + 352] = mem[_2562 + 352]
                            if mem[_2562 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_2562 + 384]
                            mem[s + 416] = mem[_2562 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
                else:
                    if 1 > !var67002:
                        revert with 0, 17
                    if var71001 > arg2:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _2130 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_2130 + 44 len 20]
                            mem[s + 64] = mem[_2130 + 64]
                            mem[s + 96] = mem[_2130 + 108 len 20]
                            mem[s + 128] = mem[_2130 + 140 len 20]
                            mem[s + 160] = mem[_2130 + 172 len 20]
                            mem[s + 192] = mem[_2130 + 192]
                            mem[s + 224] = mem[_2130 + 224]
                            mem[s + 256] = bool(mem[_2130 + 256])
                            mem[s + 288] = mem[_2130 + 288]
                            mem[s + 320] = mem[_2130 + 320]
                            mem[s + 352] = mem[_2130 + 352]
                            if mem[_2130 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_2130 + 384]
                            mem[s + 416] = mem[_2130 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
                    if 1 > !var75002:
                        revert with 0, 17
                    if itemInfo[itemInfo[var79001].field_0].field_3072 > 2:
                        revert with 0, 33
                    if var81001 > 2:
                        revert with 0, 33
                    if var81009 >= arg2:
                        revert with 0, 50
                    if var81009 > -2:
                        revert with 0, 17
                    # nil
            else:
                if 1 > !var65002:
                    revert with 0, 17
                mem[0] = var69001
                mem[32] = 206
                if not var71001:
                    if var75001 == -1:
                        revert with 0, 17
                    if var79001 < stor201:
                        if 1 > !var83002:
                            revert with 0, 17
                        # nil
                    else:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _4525 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_4525 + 44 len 20]
                            mem[s + 64] = mem[_4525 + 64]
                            mem[s + 96] = mem[_4525 + 108 len 20]
                            mem[s + 128] = mem[_4525 + 140 len 20]
                            mem[s + 160] = mem[_4525 + 172 len 20]
                            mem[s + 192] = mem[_4525 + 192]
                            mem[s + 224] = mem[_4525 + 224]
                            mem[s + 256] = bool(mem[_4525 + 256])
                            mem[s + 288] = mem[_4525 + 288]
                            mem[s + 320] = mem[_4525 + 320]
                            mem[s + 352] = mem[_4525 + 352]
                            if mem[_4525 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_4525 + 384]
                            mem[s + 416] = mem[_4525 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
                else:
                    if 1 > !var75002:
                        revert with 0, 17
                    if var79001 <= arg2:
                        if 1 > !var83002:
                            revert with 0, 17
                        # nil
                    else:
                        mem[(32 * arg2) + 576] = 32
                        mem[(32 * arg2) + 608] = arg2
                        idx = 0
                        s = (32 * arg2) + 640
                        t = 128
                        while idx < mem[96]:
                            _3859 = mem[t]
                            mem[s] = mem[mem[t]]
                            mem[s + 32] = mem[_3859 + 44 len 20]
                            mem[s + 64] = mem[_3859 + 64]
                            mem[s + 96] = mem[_3859 + 108 len 20]
                            mem[s + 128] = mem[_3859 + 140 len 20]
                            mem[s + 160] = mem[_3859 + 172 len 20]
                            mem[s + 192] = mem[_3859 + 192]
                            mem[s + 224] = mem[_3859 + 224]
                            mem[s + 256] = bool(mem[_3859 + 256])
                            mem[s + 288] = mem[_3859 + 288]
                            mem[s + 320] = mem[_3859 + 320]
                            mem[s + 352] = mem[_3859 + 352]
                            if mem[_3859 + 384] >= 3:
                                revert with 0, 33
                            mem[s + 384] = mem[_3859 + 384]
                            mem[s + 416] = mem[_3859 + 416]
                            idx = idx + 1
                            s = s + 448
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (481 * arg2) + -mem[64] + 640
        else:
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
                        if 1 > !var81002:
                            revert with 0, 17
                        # nil
                else:
                    if 1 > !var73002:
                        revert with 0, 17
                    if not itemInfo[var77001].field_1024:
                        if 1 > !var81002:
                            revert with 0, 17
                        # nil
                    else:
                        if not var65001:
                            if var83001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if 1 > !var83002:
                                revert with 0, 17
                            # nil
            else:
                if 1 > !var65002:
                    revert with 0, 17
                mem[0] = var69001
                mem[32] = 205
                if not itemInfo[var69001].field_1024:
                    if 1 > !var73002:
                        revert with 0, 17
                    if not var79001:
                        if var83001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var83002:
                            revert with 0, 17
                        # nil
                else:
                    if not var57001:
                        if var75001 == -1:
                            revert with 0, 17
                        if var79001 < stor201:
                            if 1 > !var83002:
                                revert with 0, 17
                            # nil
                        else:
                            mem[(32 * arg2) + 1024] = 32
                            mem[(32 * arg2) + 1056] = arg2
                            idx = 0
                            s = (32 * arg2) + 1088
                            t = 128
                            while idx < mem[96]:
                                _4524 = mem[t]
                                mem[s] = mem[mem[t]]
                                mem[s + 32] = mem[_4524 + 44 len 20]
                                mem[s + 64] = mem[_4524 + 64]
                                mem[s + 96] = mem[_4524 + 108 len 20]
                                mem[s + 128] = mem[_4524 + 140 len 20]
                                mem[s + 160] = mem[_4524 + 172 len 20]
                                mem[s + 192] = mem[_4524 + 192]
                                mem[s + 224] = mem[_4524 + 224]
                                mem[s + 256] = bool(mem[_4524 + 256])
                                mem[s + 288] = mem[_4524 + 288]
                                mem[s + 320] = mem[_4524 + 320]
                                mem[s + 352] = mem[_4524 + 352]
                                if mem[_4524 + 384] >= 3:
                                    revert with 0, 33
                                mem[s + 384] = mem[_4524 + 384]
                                mem[s + 416] = mem[_4524 + 416]
                                idx = idx + 1
                                s = s + 448
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (481 * arg2) + -mem[64] + 1088
                    else:
                        if 1 > !var75002:
                            revert with 0, 17
                        if var79001 <= arg2:
                            if 1 > !var83002:
                                revert with 0, 17
                            # nil
                        else:
                            mem[(32 * arg2) + 1024] = 32
                            mem[(32 * arg2) + 1056] = arg2
                            idx = 0
                            s = (32 * arg2) + 1088
                            t = 128
                            while idx < mem[96]:
                                _3857 = mem[t]
                                mem[s] = mem[mem[t]]
                                mem[s + 32] = mem[_3857 + 44 len 20]
                                mem[s + 64] = mem[_3857 + 64]
                                mem[s + 96] = mem[_3857 + 108 len 20]
                                mem[s + 128] = mem[_3857 + 140 len 20]
                                mem[s + 160] = mem[_3857 + 172 len 20]
                                mem[s + 192] = mem[_3857 + 192]
                                mem[s + 224] = mem[_3857 + 224]
                                mem[s + 256] = bool(mem[_3857 + 256])
                                mem[s + 288] = mem[_3857 + 288]
                                mem[s + 320] = mem[_3857 + 320]
                                mem[s + 352] = mem[_3857 + 352]
                                if mem[_3857 + 384] >= 3:
                                    revert with 0, 33
                                mem[s + 384] = mem[_3857 + 384]
                                mem[s + 416] = mem[_3857 + 416]
                                idx = idx + 1
                                s = s + 448
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (481 * arg2) + -mem[64] + 1088
}

function bid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not itemInfo[arg1].field_0:
        revert with 0, 'Not existing item'
    if itemInfo[arg1].field_2048:
        revert with 0, 'Item already sold'
    if stor206[arg1]:
        revert with 0, 'Already cancelled item'
    if block.timestamp >= itemInfo[arg1].field_2560:
        revert with 0, 'Expired auction'
    if itemInfo[arg1].field_3072 > 2:
        revert with 0, 33
    if itemInfo[arg1].field_3072 != 1:
        revert with 0, 'Not allowed to bid'
    mem[128] = sub_d7879c80[arg1].field_256
    mem[160] = sub_d7879c80[arg1].field_512
    mem[192] = sub_d7879c80[arg1].field_768
    mem[224] = sub_d7879c80[arg1].field_1024
    if sub_d7879c80[arg1].field_0:
        if not itemInfo[arg1].field_1280:
            if msg.value < sub_d7879c80[arg1].field_1024:
                revert with 0, 'bnb amount is not enough'
            mem[256] = sub_d7879c80[arg1].field_0
            if not sub_d7879c80[arg1].field_0:
                mem[256] = arg1
                mem[288] = msg.sender
                mem[320] = sub_d7879c80[arg1].field_1024
                mem[352] = sub_d7879c80[arg1].field_1024
                if sub_d7879c80[arg1].field_1024 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[384] = sub_d7879c80[arg1].field_1024 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_0 = arg1
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_768 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_1024 += itemInfo[arg1].field_1792
                if itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value sub_d7879c80[arg1].field_1024 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if sub_d7879c80[arg1].field_1024:
                            mem[452] = msg.sender
                            mem[484] = this.address
                            mem[516] = sub_d7879c80[arg1].field_1024
                            mem[416] = 100
                            mem[452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[448 len 4] = unknown_0x23b872dd(?????)
                            mem[548] = 32
                            mem[580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0
                            mem[712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[644] == bool(mem[644])
                                    if not mem[644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if itemInfo[arg1].field_3072 >= 3:
                    revert with 0, 33
                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
            else:
                mem[288] = msg.sender
                mem[320] = sub_d7879c80[arg1].field_1024
                mem[352] = sub_d7879c80[arg1].field_1024
                if sub_d7879c80[arg1].field_1024 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[384] = sub_d7879c80[arg1].field_1024 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_768 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_1024 += itemInfo[arg1].field_1792
                if not itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call sub_d7879c80[arg1].field_256 with:
                           value sub_d7879c80[arg1].field_768 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if sub_d7879c80[arg1].field_768:
                            mem[452] = this.address
                            mem[484] = sub_d7879c80[arg1].field_256
                            mem[516] = sub_d7879c80[arg1].field_768
                            mem[416] = 100
                            mem[452 len 28] = address(this.address) << 64
                            mem[448 len 4] = unknown_0x23b872dd(?????)
                            mem[548] = 32
                            mem[580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                            mem[712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[644] == bool(mem[644])
                                    if not mem[644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if itemInfo[arg1].field_3072 >= 3:
                        revert with 0, 33
                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                else:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value sub_d7879c80[arg1].field_1024 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[452] = this.address
                                    mem[484] = sub_d7879c80[arg1].field_256
                                    mem[516] = sub_d7879c80[arg1].field_768
                                    mem[416] = 100
                                    mem[452 len 28] = address(this.address) << 64
                                    mem[448 len 4] = unknown_0x23b872dd(?????)
                                    mem[548] = 32
                                    mem[580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[644] == bool(mem[644])
                                            if not mem[644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[416] = return_data.size
                            mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + 453] = this.address
                                    mem[ceil32(return_data.size) + 485] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + 517] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + 417] = 100
                                    mem[ceil32(return_data.size) + 453 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + 449 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + 549] = 32
                                    mem[ceil32(return_data.size) + 581] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 613 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + 713] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 645 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 645] == bool(mem[ceil32(return_data.size) + 645])
                                            if not mem[ceil32(return_data.size) + 645]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if itemInfo[arg1].field_3072 >= 3:
                            revert with 0, 33
                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                    else:
                        if not sub_d7879c80[arg1].field_1024:
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[452] = this.address
                                    mem[484] = sub_d7879c80[arg1].field_256
                                    mem[516] = sub_d7879c80[arg1].field_768
                                    mem[416] = 100
                                    mem[452 len 28] = address(this.address) << 64
                                    mem[448 len 4] = unknown_0x23b872dd(?????)
                                    mem[548] = 32
                                    mem[580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[644] == bool(mem[644])
                                            if not mem[644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if itemInfo[arg1].field_3072 >= 3:
                                revert with 0, 33
                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                        else:
                            mem[452] = msg.sender
                            mem[484] = this.address
                            mem[516] = sub_d7879c80[arg1].field_1024
                            mem[416] = 100
                            mem[452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[448 len 4] = unknown_0x23b872dd(?????)
                            mem[548] = 32
                            mem[580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0
                            mem[712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                else:
                                    if sub_d7879c80[arg1].field_768:
                                        mem[648] = this.address
                                        mem[680] = sub_d7879c80[arg1].field_256
                                        mem[712] = sub_d7879c80[arg1].field_768
                                        mem[612] = 100
                                        mem[644 len 4] = unknown_0x23b872dd(?????)
                                        mem[744] = 32
                                        mem[776] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[808 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[908] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[840] == bool(mem[840])
                                                if not mem[840]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if itemInfo[arg1].field_3072 >= 3:
                                    revert with 0, 33
                                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                            else:
                                mem[612] = return_data.size
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[644] == bool(mem[644])
                                    if not mem[644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                    if itemInfo[arg1].field_3072 >= 3:
                                        revert with 0, 33
                                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                else:
                                    if not sub_d7879c80[arg1].field_768:
                                        if itemInfo[arg1].field_3072 >= 3:
                                            revert with 0, 33
                                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                    else:
                                        mem[ceil32(return_data.size) + 649] = this.address
                                        mem[ceil32(return_data.size) + 681] = sub_d7879c80[arg1].field_256
                                        mem[ceil32(return_data.size) + 713] = sub_d7879c80[arg1].field_768
                                        mem[ceil32(return_data.size) + 613] = 100
                                        mem[ceil32(return_data.size) + 645 len 4] = unknown_0x23b872dd(?????)
                                        mem[ceil32(return_data.size) + 745] = 32
                                        mem[ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 809 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[ceil32(return_data.size) + 909] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                        else:
                                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 841] == bool(mem[ceil32(return_data.size) + 841])
                                                if not mem[ceil32(return_data.size) + 841]:
                                                    revert with 0, 
                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                mem[(2 * ceil32(return_data.size)) + 942 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, mem[(2 * ceil32(return_data.size)) + 1098 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
        else:
            if msg.value:
                revert with 0, 'bnb amount should be zero if payment is using token'
            mem[260] = msg.sender
            mem[292] = this.address
            staticcall itemInfo[arg1].field_1280.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_d7879c80[arg1].field_1024:
                revert with 0, 'token allowance error'
            mem[ceil32(return_data.size) + 256] = sub_d7879c80[arg1].field_0
            if not sub_d7879c80[arg1].field_0:
                mem[ceil32(return_data.size) + 256] = arg1
                mem[ceil32(return_data.size) + 288] = msg.sender
                mem[ceil32(return_data.size) + 320] = sub_d7879c80[arg1].field_1024
                mem[ceil32(return_data.size) + 352] = sub_d7879c80[arg1].field_1024
                if sub_d7879c80[arg1].field_1024 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 384] = sub_d7879c80[arg1].field_1024 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_0 = arg1
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_768 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_1024 += itemInfo[arg1].field_1792
                if itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value sub_d7879c80[arg1].field_1024 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if sub_d7879c80[arg1].field_1024:
                            mem[ceil32(return_data.size) + 452] = msg.sender
                            mem[ceil32(return_data.size) + 484] = this.address
                            mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_1024
                            mem[ceil32(return_data.size) + 416] = 100
                            mem[ceil32(return_data.size) + 452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(return_data.size) + 548] = 32
                            mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0
                            mem[ceil32(return_data.size) + 712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                    if not mem[ceil32(return_data.size) + 644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if itemInfo[arg1].field_3072 >= 3:
                    revert with 0, 33
                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
            else:
                mem[ceil32(return_data.size) + 288] = msg.sender
                mem[ceil32(return_data.size) + 320] = sub_d7879c80[arg1].field_1024
                mem[ceil32(return_data.size) + 352] = sub_d7879c80[arg1].field_1024
                if sub_d7879c80[arg1].field_1024 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 384] = sub_d7879c80[arg1].field_1024 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_768 = sub_d7879c80[arg1].field_1024
                sub_d7879c80[arg1].field_1024 += itemInfo[arg1].field_1792
                if not itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call sub_d7879c80[arg1].field_256 with:
                           value sub_d7879c80[arg1].field_768 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if sub_d7879c80[arg1].field_768:
                            mem[ceil32(return_data.size) + 452] = this.address
                            mem[ceil32(return_data.size) + 484] = sub_d7879c80[arg1].field_256
                            mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_768
                            mem[ceil32(return_data.size) + 416] = 100
                            mem[ceil32(return_data.size) + 452 len 28] = address(this.address) << 64
                            mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(return_data.size) + 548] = 32
                            mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                            mem[ceil32(return_data.size) + 712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                    if not mem[ceil32(return_data.size) + 644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if itemInfo[arg1].field_3072 >= 3:
                        revert with 0, 33
                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                else:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value sub_d7879c80[arg1].field_1024 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + 452] = this.address
                                    mem[ceil32(return_data.size) + 484] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + 416] = 100
                                    mem[ceil32(return_data.size) + 452 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + 548] = 32
                                    mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + 712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                            if not mem[ceil32(return_data.size) + 644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 416] = return_data.size
                            mem[ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = this.address
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 485] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 517] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 100
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 549] = 32
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 581] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 613 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 713] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 645 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 645] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 645])
                                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 645]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if itemInfo[arg1].field_3072 >= 3:
                            revert with 0, 33
                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                    else:
                        if not sub_d7879c80[arg1].field_1024:
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + 452] = this.address
                                    mem[ceil32(return_data.size) + 484] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + 416] = 100
                                    mem[ceil32(return_data.size) + 452 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + 548] = 32
                                    mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + 712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                            if not mem[ceil32(return_data.size) + 644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if itemInfo[arg1].field_3072 >= 3:
                                revert with 0, 33
                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                        else:
                            mem[ceil32(return_data.size) + 452] = msg.sender
                            mem[ceil32(return_data.size) + 484] = this.address
                            mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_1024
                            mem[ceil32(return_data.size) + 416] = 100
                            mem[ceil32(return_data.size) + 452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(return_data.size) + 548] = 32
                            mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0
                            mem[ceil32(return_data.size) + 712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_d7879c80[arg1].field_1024, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                else:
                                    if sub_d7879c80[arg1].field_768:
                                        mem[ceil32(return_data.size) + 648] = this.address
                                        mem[ceil32(return_data.size) + 680] = sub_d7879c80[arg1].field_256
                                        mem[ceil32(return_data.size) + 712] = sub_d7879c80[arg1].field_768
                                        mem[ceil32(return_data.size) + 612] = 100
                                        mem[ceil32(return_data.size) + 644 len 4] = unknown_0x23b872dd(?????)
                                        mem[ceil32(return_data.size) + 744] = 32
                                        mem[ceil32(return_data.size) + 776] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 808 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[ceil32(return_data.size) + 908] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(return_data.size) + 840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 840] == bool(mem[ceil32(return_data.size) + 840])
                                                if not mem[ceil32(return_data.size) + 840]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if itemInfo[arg1].field_3072 >= 3:
                                    revert with 0, 33
                                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                            else:
                                mem[ceil32(return_data.size) + 612] = return_data.size
                                mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                    if not mem[ceil32(return_data.size) + 644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                    if itemInfo[arg1].field_3072 >= 3:
                                        revert with 0, 33
                                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                else:
                                    if not sub_d7879c80[arg1].field_768:
                                        if itemInfo[arg1].field_3072 >= 3:
                                            revert with 0, 33
                                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                    else:
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 649] = this.address
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 681] = sub_d7879c80[arg1].field_256
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 713] = sub_d7879c80[arg1].field_768
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 613] = 100
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 645 len 4] = unknown_0x23b872dd(?????)
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 745] = 32
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 809 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 909] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, sub_d7879c80[arg1].field_1024, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                        else:
                                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 809] = return_data.size
                                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 814] = 32
                                                mem[(4 * ceil32(return_data.size)) + 846] = 32
                                                mem[(4 * ceil32(return_data.size)) + 878] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + 810
                                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 841] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 841])
                                                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 841]:
                                                    mem[(4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 814] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 846] = 42
                                                    mem[(4 * ceil32(return_data.size)) + 878] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(4 * ceil32(return_data.size)) + 910] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + 810
                                                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            mem[(4 * ceil32(return_data.size)) + 810] = itemInfo[arg1].field_768
                                            mem[(4 * ceil32(return_data.size)) + 842] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + 874] = itemInfo[arg1].field_1280
                                            mem[(4 * ceil32(return_data.size)) + 906] = itemInfo[arg1].field_1536
                                            mem[(4 * ceil32(return_data.size)) + 938] = itemInfo[arg1].field_1792
                                            mem[(4 * ceil32(return_data.size)) + 970] = itemInfo[arg1].field_2816
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            mem[(4 * ceil32(return_data.size)) + 1002] = itemInfo[arg1].field_3072
                                            mem[(4 * ceil32(return_data.size)) + 1034] = itemInfo[arg1].field_3328
                                            mem[(4 * ceil32(return_data.size)) + 1066] = sub_d7879c80[arg1].field_1024
                                            emit 0x38a08401: mem[(4 * ceil32(return_data.size)) + 810 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 288], arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
    else:
        if not itemInfo[arg1].field_1280:
            if msg.value < itemInfo[arg1].field_1536:
                revert with 0, 'bnb amount is not enough'
            mem[256] = sub_d7879c80[arg1].field_0
            if not sub_d7879c80[arg1].field_0:
                mem[256] = arg1
                mem[288] = msg.sender
                mem[320] = itemInfo[arg1].field_1536
                mem[352] = itemInfo[arg1].field_1536
                if itemInfo[arg1].field_1536 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[384] = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_0 = arg1
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_768 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_1024 = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                if itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value itemInfo[arg1].field_1536 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if itemInfo[arg1].field_1536:
                            mem[452] = msg.sender
                            mem[484] = this.address
                            mem[516] = itemInfo[arg1].field_1536
                            mem[416] = 100
                            mem[452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[448 len 4] = unknown_0x23b872dd(?????)
                            mem[548] = 32
                            mem[580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0
                            mem[712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[644] == bool(mem[644])
                                    if not mem[644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if itemInfo[arg1].field_3072 >= 3:
                    revert with 0, 33
                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
            else:
                mem[288] = msg.sender
                mem[320] = itemInfo[arg1].field_1536
                mem[352] = itemInfo[arg1].field_1536
                if itemInfo[arg1].field_1536 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[384] = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_768 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_1024 = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                if not itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call sub_d7879c80[arg1].field_256 with:
                           value sub_d7879c80[arg1].field_768 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if sub_d7879c80[arg1].field_768:
                            mem[452] = this.address
                            mem[484] = sub_d7879c80[arg1].field_256
                            mem[516] = sub_d7879c80[arg1].field_768
                            mem[416] = 100
                            mem[452 len 28] = address(this.address) << 64
                            mem[448 len 4] = unknown_0x23b872dd(?????)
                            mem[548] = 32
                            mem[580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                            mem[712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[644] == bool(mem[644])
                                    if not mem[644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if itemInfo[arg1].field_3072 >= 3:
                        revert with 0, 33
                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                else:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value itemInfo[arg1].field_1536 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[452] = this.address
                                    mem[484] = sub_d7879c80[arg1].field_256
                                    mem[516] = sub_d7879c80[arg1].field_768
                                    mem[416] = 100
                                    mem[452 len 28] = address(this.address) << 64
                                    mem[448 len 4] = unknown_0x23b872dd(?????)
                                    mem[548] = 32
                                    mem[580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[644] == bool(mem[644])
                                            if not mem[644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[416] = return_data.size
                            mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + 453] = this.address
                                    mem[ceil32(return_data.size) + 485] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + 517] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + 417] = 100
                                    mem[ceil32(return_data.size) + 453 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + 449 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + 549] = 32
                                    mem[ceil32(return_data.size) + 581] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 613 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + 713] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 645 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 645] == bool(mem[ceil32(return_data.size) + 645])
                                            if not mem[ceil32(return_data.size) + 645]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if itemInfo[arg1].field_3072 >= 3:
                            revert with 0, 33
                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                    else:
                        if not itemInfo[arg1].field_1536:
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[452] = this.address
                                    mem[484] = sub_d7879c80[arg1].field_256
                                    mem[516] = sub_d7879c80[arg1].field_768
                                    mem[416] = 100
                                    mem[452 len 28] = address(this.address) << 64
                                    mem[448 len 4] = unknown_0x23b872dd(?????)
                                    mem[548] = 32
                                    mem[580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[644] == bool(mem[644])
                                            if not mem[644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if itemInfo[arg1].field_3072 >= 3:
                                revert with 0, 33
                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                        else:
                            mem[452] = msg.sender
                            mem[484] = this.address
                            mem[516] = itemInfo[arg1].field_1536
                            mem[416] = 100
                            mem[452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[448 len 4] = unknown_0x23b872dd(?????)
                            mem[548] = 32
                            mem[580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0
                            mem[712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                else:
                                    if sub_d7879c80[arg1].field_768:
                                        mem[648] = this.address
                                        mem[680] = sub_d7879c80[arg1].field_256
                                        mem[712] = sub_d7879c80[arg1].field_768
                                        mem[612] = 100
                                        mem[644 len 4] = unknown_0x23b872dd(?????)
                                        mem[744] = 32
                                        mem[776] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[808 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[908] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[840] == bool(mem[840])
                                                if not mem[840]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if itemInfo[arg1].field_3072 >= 3:
                                    revert with 0, 33
                                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                            else:
                                mem[612] = return_data.size
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[644] == bool(mem[644])
                                    if not mem[644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                    if itemInfo[arg1].field_3072 >= 3:
                                        revert with 0, 33
                                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                else:
                                    if not sub_d7879c80[arg1].field_768:
                                        if itemInfo[arg1].field_3072 >= 3:
                                            revert with 0, 33
                                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                    else:
                                        mem[ceil32(return_data.size) + 649] = this.address
                                        mem[ceil32(return_data.size) + 681] = sub_d7879c80[arg1].field_256
                                        mem[ceil32(return_data.size) + 713] = sub_d7879c80[arg1].field_768
                                        mem[ceil32(return_data.size) + 613] = 100
                                        mem[ceil32(return_data.size) + 645 len 4] = unknown_0x23b872dd(?????)
                                        mem[ceil32(return_data.size) + 745] = 32
                                        mem[ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 809 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[ceil32(return_data.size) + 909] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                        else:
                                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 910 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 841] == bool(mem[ceil32(return_data.size) + 841])
                                                if not mem[ceil32(return_data.size) + 841]:
                                                    revert with 0, 
                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                mem[(2 * ceil32(return_data.size)) + 942 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, mem[(2 * ceil32(return_data.size)) + 1098 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
        else:
            if msg.value:
                revert with 0, 'bnb amount should be zero if payment is using token'
            mem[260] = msg.sender
            mem[292] = this.address
            staticcall itemInfo[arg1].field_1280.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < itemInfo[arg1].field_1536:
                revert with 0, 'token allowance error'
            mem[ceil32(return_data.size) + 256] = sub_d7879c80[arg1].field_0
            if not sub_d7879c80[arg1].field_0:
                mem[ceil32(return_data.size) + 256] = arg1
                mem[ceil32(return_data.size) + 288] = msg.sender
                mem[ceil32(return_data.size) + 320] = itemInfo[arg1].field_1536
                mem[ceil32(return_data.size) + 352] = itemInfo[arg1].field_1536
                if itemInfo[arg1].field_1536 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 384] = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_0 = arg1
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_768 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_1024 = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                if itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value itemInfo[arg1].field_1536 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if itemInfo[arg1].field_1536:
                            mem[ceil32(return_data.size) + 452] = msg.sender
                            mem[ceil32(return_data.size) + 484] = this.address
                            mem[ceil32(return_data.size) + 516] = itemInfo[arg1].field_1536
                            mem[ceil32(return_data.size) + 416] = 100
                            mem[ceil32(return_data.size) + 452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(return_data.size) + 548] = 32
                            mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0
                            mem[ceil32(return_data.size) + 712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                    if not mem[ceil32(return_data.size) + 644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if itemInfo[arg1].field_3072 >= 3:
                    revert with 0, 33
                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
            else:
                mem[ceil32(return_data.size) + 288] = msg.sender
                mem[ceil32(return_data.size) + 320] = itemInfo[arg1].field_1536
                mem[ceil32(return_data.size) + 352] = itemInfo[arg1].field_1536
                if itemInfo[arg1].field_1536 > !itemInfo[arg1].field_1792:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 384] = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                sub_d7879c80[arg1].field_256 = msg.sender
                sub_d7879c80[arg1].field_512 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_768 = itemInfo[arg1].field_1536
                sub_d7879c80[arg1].field_1024 = itemInfo[arg1].field_1536 + itemInfo[arg1].field_1792
                if not itemInfo[arg1].field_1280:
                    if not itemInfo[arg1].field_1280:
                        call sub_d7879c80[arg1].field_256 with:
                           value sub_d7879c80[arg1].field_768 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to transfer bid BNB to `to`'
                    else:
                        if sub_d7879c80[arg1].field_768:
                            mem[ceil32(return_data.size) + 452] = this.address
                            mem[ceil32(return_data.size) + 484] = sub_d7879c80[arg1].field_256
                            mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_768
                            mem[ceil32(return_data.size) + 416] = 100
                            mem[ceil32(return_data.size) + 452 len 28] = address(this.address) << 64
                            mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(return_data.size) + 548] = 32
                            mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                            mem[ceil32(return_data.size) + 712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                    if not mem[ceil32(return_data.size) + 644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if itemInfo[arg1].field_3072 >= 3:
                        revert with 0, 33
                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                else:
                    if not itemInfo[arg1].field_1280:
                        call this.address with:
                           value itemInfo[arg1].field_1536 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + 452] = this.address
                                    mem[ceil32(return_data.size) + 484] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + 416] = 100
                                    mem[ceil32(return_data.size) + 452 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + 548] = 32
                                    mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + 712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                            if not mem[ceil32(return_data.size) + 644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 416] = return_data.size
                            mem[ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Failed to transfer bid BNB to `to`'
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = this.address
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 485] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 517] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 417] = 100
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 449 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 549] = 32
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 581] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 613 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 713] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 645 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 645] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 645])
                                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 645]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if itemInfo[arg1].field_3072 >= 3:
                            revert with 0, 33
                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                    else:
                        if not itemInfo[arg1].field_1536:
                            if not itemInfo[arg1].field_1280:
                                call sub_d7879c80[arg1].field_256 with:
                                   value sub_d7879c80[arg1].field_768 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer bid BNB to `to`'
                            else:
                                if sub_d7879c80[arg1].field_768:
                                    mem[ceil32(return_data.size) + 452] = this.address
                                    mem[ceil32(return_data.size) + 484] = sub_d7879c80[arg1].field_256
                                    mem[ceil32(return_data.size) + 516] = sub_d7879c80[arg1].field_768
                                    mem[ceil32(return_data.size) + 416] = 100
                                    mem[ceil32(return_data.size) + 452 len 28] = address(this.address) << 64
                                    mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                                    mem[ceil32(return_data.size) + 548] = 32
                                    mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                                    if not ext_code.size(itemInfo[arg1].field_1280):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                    mem[ceil32(return_data.size) + 712] = 0
                                    call itemInfo[arg1].field_1280 with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if sub_d7879c80[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len sub_d7879c80[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if sub_d7879c80[arg1].field_0:
                                            require sub_d7879c80[arg1].field_0 >= 32
                                            require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                            if not sub_d7879c80[arg1].field_256:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                            if not mem[ceil32(return_data.size) + 644]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if itemInfo[arg1].field_3072 >= 3:
                                revert with 0, 33
                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                        else:
                            mem[ceil32(return_data.size) + 452] = msg.sender
                            mem[ceil32(return_data.size) + 484] = this.address
                            mem[ceil32(return_data.size) + 516] = itemInfo[arg1].field_1536
                            mem[ceil32(return_data.size) + 416] = 100
                            mem[ceil32(return_data.size) + 452 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 448 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(return_data.size) + 548] = 32
                            mem[ceil32(return_data.size) + 580] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(itemInfo[arg1].field_1280):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 612 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0
                            mem[ceil32(return_data.size) + 712] = 0
                            call itemInfo[arg1].field_1280 with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), itemInfo[arg1].field_1536, 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if sub_d7879c80[arg1].field_0:
                                        revert with memory
                                          from 128
                                           len sub_d7879c80[arg1].field_0
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if sub_d7879c80[arg1].field_0:
                                    require sub_d7879c80[arg1].field_0 >= 32
                                    require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                    if not sub_d7879c80[arg1].field_256:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                else:
                                    if sub_d7879c80[arg1].field_768:
                                        mem[ceil32(return_data.size) + 648] = this.address
                                        mem[ceil32(return_data.size) + 680] = sub_d7879c80[arg1].field_256
                                        mem[ceil32(return_data.size) + 712] = sub_d7879c80[arg1].field_768
                                        mem[ceil32(return_data.size) + 612] = 100
                                        mem[ceil32(return_data.size) + 644 len 4] = unknown_0x23b872dd(?????)
                                        mem[ceil32(return_data.size) + 744] = 32
                                        mem[ceil32(return_data.size) + 776] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 808 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[ceil32(return_data.size) + 908] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(return_data.size) + 840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 840] == bool(mem[ceil32(return_data.size) + 840])
                                                if not mem[ceil32(return_data.size) + 840]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if itemInfo[arg1].field_3072 >= 3:
                                    revert with 0, 33
                                emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                            else:
                                mem[ceil32(return_data.size) + 612] = return_data.size
                                mem[ceil32(return_data.size) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 644] == bool(mem[ceil32(return_data.size) + 644])
                                    if not mem[ceil32(return_data.size) + 644]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if not itemInfo[arg1].field_1280:
                                    call sub_d7879c80[arg1].field_256 with:
                                       value sub_d7879c80[arg1].field_768 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer bid BNB to `to`'
                                    if itemInfo[arg1].field_3072 >= 3:
                                        revert with 0, 33
                                    emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                else:
                                    if not sub_d7879c80[arg1].field_768:
                                        if itemInfo[arg1].field_3072 >= 3:
                                            revert with 0, 33
                                        emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                    else:
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 649] = this.address
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 681] = sub_d7879c80[arg1].field_256
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 713] = sub_d7879c80[arg1].field_768
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 613] = 100
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 645 len 4] = unknown_0x23b872dd(?????)
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 745] = 32
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(itemInfo[arg1].field_1280):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 809 len 128] = 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 909] = 0
                                        call itemInfo[arg1].field_1280 with:
                                           funct Mask(32, 224, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(768, -544, 0, address(this.address), sub_d7879c80[arg1].field_256, sub_d7879c80[arg1].field_768, 0) << 544)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if sub_d7879c80[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len sub_d7879c80[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if sub_d7879c80[arg1].field_0:
                                                require sub_d7879c80[arg1].field_0 >= 32
                                                require sub_d7879c80[arg1].field_256 == bool(sub_d7879c80[arg1].field_256)
                                                if not sub_d7879c80[arg1].field_256:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            emit 0x38a08401: itemInfo[arg1].field_768, msg.sender, itemInfo[arg1].field_1280, itemInfo[arg1].field_1536, itemInfo[arg1].field_1792, itemInfo[arg1].field_2816, itemInfo[arg1].field_3072, itemInfo[arg1].field_3328, itemInfo[arg1].field_1536, arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
                                        else:
                                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 809] = return_data.size
                                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 814] = 32
                                                mem[(4 * ceil32(return_data.size)) + 846] = 32
                                                mem[(4 * ceil32(return_data.size)) + 878] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from (4 * ceil32(return_data.size)) + 810
                                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 841] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 841])
                                                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 841]:
                                                    mem[(4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 814] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 846] = 42
                                                    mem[(4 * ceil32(return_data.size)) + 878] = 'SafeERC20: ERC20 operation did n'
                                                    mem[(4 * ceil32(return_data.size)) + 910] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from (4 * ceil32(return_data.size)) + 810
                                                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            mem[(4 * ceil32(return_data.size)) + 810] = itemInfo[arg1].field_768
                                            mem[(4 * ceil32(return_data.size)) + 842] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + 874] = itemInfo[arg1].field_1280
                                            mem[(4 * ceil32(return_data.size)) + 906] = itemInfo[arg1].field_1536
                                            mem[(4 * ceil32(return_data.size)) + 938] = itemInfo[arg1].field_1792
                                            mem[(4 * ceil32(return_data.size)) + 970] = itemInfo[arg1].field_2816
                                            if itemInfo[arg1].field_3072 >= 3:
                                                revert with 0, 33
                                            mem[(4 * ceil32(return_data.size)) + 1002] = itemInfo[arg1].field_3072
                                            mem[(4 * ceil32(return_data.size)) + 1034] = itemInfo[arg1].field_3328
                                            mem[(4 * ceil32(return_data.size)) + 1066] = itemInfo[arg1].field_1536
                                            emit 0x38a08401: mem[(4 * ceil32(return_data.size)) + 810 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 288], arg1, itemInfo[arg1].field_256, itemInfo[arg1].field_512
    stor151 = 1
}



}
