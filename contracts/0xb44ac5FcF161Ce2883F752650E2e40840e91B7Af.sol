contract main {




// =====================  Runtime code  =====================


address owner;
address devAddr;
address sub_5002f3d9Address;
uint256 sub_0bc9ede4;
uint256 stor4;
uint256 maxProfit;
address luckAddress;

function sub_0bc9ede4(?) {
    return sub_0bc9ede4
}

function sub_5002f3d9(?) {
    return sub_5002f3d9Address
}

function luck() {
    return luckAddress
}

function owner() {
    return owner
}

function maxProfit() {
    return maxProfit
}

function devAddr() {
    return devAddr
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

function sub_f652f8fb(?) {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'DevTools::FORBIDDEN'
    sub_0bc9ede4 = arg1
    emit 0xb2db3ac3: sub_0bc9ede4
}

function transferOwnershipOfToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(luckAddress)
    call luckAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxProfit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x774c75636b4d61737465723a3a7365744d617850726f6669743a3a4d415850524f4649545f4f55545f4f465f52414e47,
                    mem[212 len 16]
    maxProfit = arg1
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

function sub_b4482685(?) {
    if devAddr != msg.sender:
        revert with 0, 'DevTools::FORBIDDEN'
    if not sub_5002f3d9Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x73446576546f6f6c733a3a636f6e6669726d4465763a3a494e56414c49445f4e45575f4445565f414444524553,
                    mem[209 len 19]
    devAddr = sub_5002f3d9Address
    sub_5002f3d9Address = 0
    emit UpdateDev(sub_5002f3d9Address);
}

function changeDev(address arg1) {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'DevTools::FORBIDDEN'
    if arg1 == devAddr:
        revert with 0, 'DevTools::changeDev::ALREADY_DEV'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x53446576546f6f6c733a3a6368616e67654465763a3a494e56414c49445f414444524553,
                    mem[200 len 28]
    if arg1 == sub_5002f3d9Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x45446576546f6f6c733a3a6368616e67654465763a3a414c52454144595f4e45575f4445,
                    mem[200 len 28]
    sub_5002f3d9Address = arg1
    emit 0xf2660028: sub_5002f3d9Address
}

function recoverERC20(address arg1) {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'DevTools::FORBIDDEN'
    require arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x45446576546f6f6c733a3a7265636f76657245524332303a3a5452414e534645525f4641494c45,
                    mem[203 len 25]
}

function bet(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor4 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor4 = 2
    require ext_code.size(luckAddress)
    staticcall luckAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x4f4c75636b4d61737465723a3a6265743a3a414d4f554e545f4849474845525f5448414e5f42414c414e43,
                    mem[207 len 21]
    if arg2 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x454c75636b4d61737465723a3a6265743a3a4d4f44554c4f5f4f55545f4f465f52414e47,
                    mem[200 len 28]
    if arg2 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x454c75636b4d61737465723a3a6265743a3a4d4f44554c4f5f4f55545f4f465f52414e47,
                    mem[200 len 28]
    if arg3 < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x454c75636b4d61737465723a3a6265743a3a414d4f554e545f4f55545f4f465f52414e47,
                    mem[200 len 28]
    if arg3 > 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x454c75636b4d61737465723a3a6265743a3a414d4f554e545f4f55545f4f465f52414e47,
                    mem[200 len 28]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x564c75636b4d61737465723a3a6265743a3a4d41534b5f4f55545f4f465f52414e47,
                    mem[198 len 30]
    if arg1 >= 1099511627776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x564c75636b4d61737465723a3a6265743a3a4d41534b5f4f55545f4f465f52414e47,
                    mem[198 len 30]
    if arg2 <= 40:
        if 0 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x454c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a57494e5f4f55545f4f465f52414e47,
                        mem[210 len 18]
        if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x454c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a57494e5f4f55545f4f465f52414e47,
                        mem[210 len 18]
        if not arg3:
            if 3 * 10^14 > arg3:
                revert with 0, 
                            32,
                            53,
                            0x444c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a4245545f4e4f5f434f5645525f484f5553455f454447,
                            mem[281 len 11]
            if not arg3 - 3 * 10^14:
                if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg3 + maxProfit:
                    revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                require arg2
                if arg2 > 40:
                    if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if arg3 > 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(luckAddress)
                        call luckAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                else:
                    if not 2^(sha3(msg.sender, block.hash(block.number - 1)) % arg2) or not arg1:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if arg3 > 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(luckAddress)
                        call luckAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
            else:
                require arg3 - 3 * 10^14
                if (-3 * 10^14 * arg2) + (arg3 * arg2) / arg3 - 3 * 10^14 != arg2:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg3 + maxProfit:
                    revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                require arg2
                if arg2 > 40:
                    if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if arg3 > (-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(luckAddress)
                        call luckAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, ((-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                else:
                    if not 2^(sha3(msg.sender, block.hash(block.number - 1)) % arg2) or not arg1:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if arg3 > (-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(luckAddress)
                        call luckAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, ((-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
        else:
            require arg3
            if arg3 / arg3 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg3 / 100 >= 3 * 10^14:
                if arg3 / 100 > arg3:
                    revert with 0, 
                                32,
                                53,
                                0x444c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a4245545f4e4f5f434f5645525f484f5553455f454447,
                                mem[281 len 11]
                if not arg3 - (arg3 / 100):
                    if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                    if 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 > 40:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                    else:
                        if not 2^(sha3(msg.sender, block.hash(block.number - 1)) % arg2) or not arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                else:
                    require arg3 - (arg3 / 100)
                    if (arg3 * arg2) - (arg3 / 100 * arg2) / arg3 - (arg3 / 100) != arg2:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                    if (arg3 * arg2) - (arg3 / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 > 40:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > (arg3 * arg2) - (arg3 / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((arg3 * arg2) - (arg3 / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                    else:
                        if not 2^(sha3(msg.sender, block.hash(block.number - 1)) % arg2) or not arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > (arg3 * arg2) - (arg3 / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((arg3 * arg2) - (arg3 / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
            else:
                if 3 * 10^14 > arg3:
                    revert with 0, 
                                32,
                                53,
                                0x444c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a4245545f4e4f5f434f5645525f484f5553455f454447,
                                mem[281 len 11]
                if not arg3 - 3 * 10^14:
                    if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                    if 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 > 40:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                    else:
                        if not 2^(sha3(msg.sender, block.hash(block.number - 1)) % arg2) or not arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > 0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                else:
                    require arg3 - 3 * 10^14
                    if (-3 * 10^14 * arg2) + (arg3 * arg2) / arg3 - 3 * 10^14 != arg2:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                    if (-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 > 40:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > (-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
                    else:
                        if not 2^(sha3(msg.sender, block.hash(block.number - 1)) % arg2) or not arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > (-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((-3 * 10^14 * arg2) + (arg3 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63) - arg3
    else:
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x534c75636b4d61737465723a3a6265743a3a4245544d41534b5f4c41524745525f5448414e5f4d4f44554c,
                        mem[207 len 21]
        if arg1 > arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x534c75636b4d61737465723a3a6265743a3a4245544d41534b5f4c41524745525f5448414e5f4d4f44554c,
                        mem[207 len 21]
        if 0 >= arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x454c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a57494e5f4f55545f4f465f52414e47,
                        mem[210 len 18]
        if arg1 > arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x454c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a57494e5f4f55545f4f465f52414e47,
                        mem[210 len 18]
        if not arg3:
            if 3 * 10^14 > arg3:
                revert with 0, 
                            32,
                            53,
                            0x444c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a4245545f4e4f5f434f5645525f484f5553455f454447,
                            mem[281 len 11]
            if not arg3 - 3 * 10^14:
                if arg1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg1
                if 0 / arg1 > arg3 + maxProfit:
                    revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                require arg2
                if arg2 <= 40:
                    require ext_code.size(luckAddress)
                    call luckAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3
                else:
                    if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= arg1:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if arg3 > 0 / arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(luckAddress)
                        call luckAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, (0 / arg1) - arg3
            else:
                require arg3 - 3 * 10^14
                if (-3 * 10^14 * arg2) + (arg3 * arg2) / arg3 - 3 * 10^14 != arg2:
                    revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if arg1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg1
                if (-3 * 10^14 * arg2) + (arg3 * arg2) / arg1 > arg3 + maxProfit:
                    revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                require arg2
                if arg2 <= 40:
                    require ext_code.size(luckAddress)
                    call luckAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3
                else:
                    if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= arg1:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if arg3 > (-3 * 10^14 * arg2) + (arg3 * arg2) / arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(luckAddress)
                        call luckAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, ((-3 * 10^14 * arg2) + (arg3 * arg2) / arg1) - arg3
        else:
            require arg3
            if arg3 / arg3 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg3 / 100 >= 3 * 10^14:
                if arg3 / 100 > arg3:
                    revert with 0, 
                                32,
                                53,
                                0x444c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a4245545f4e4f5f434f5645525f484f5553455f454447,
                                mem[281 len 11]
                if not arg3 - (arg3 / 100):
                    if arg1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg1
                    if 0 / arg1 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 <= 40:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > 0 / arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / arg1) - arg3
                else:
                    require arg3 - (arg3 / 100)
                    if (arg3 * arg2) - (arg3 / 100 * arg2) / arg3 - (arg3 / 100) != arg2:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if arg1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg1
                    if (arg3 * arg2) - (arg3 / 100 * arg2) / arg1 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 <= 40:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > (arg3 * arg2) - (arg3 / 100 * arg2) / arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((arg3 * arg2) - (arg3 / 100 * arg2) / arg1) - arg3
            else:
                if 3 * 10^14 > arg3:
                    revert with 0, 
                                32,
                                53,
                                0x444c75636b4d61737465723a3a6765744469636557696e416d6f756e743a3a4245545f4e4f5f434f5645525f484f5553455f454447,
                                mem[281 len 11]
                if not arg3 - 3 * 10^14:
                    if arg1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg1
                    if 0 / arg1 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 <= 40:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > 0 / arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / arg1) - arg3
                else:
                    require arg3 - 3 * 10^14
                    if (-3 * 10^14 * arg2) + (arg3 * arg2) / arg3 - 3 * 10^14 != arg2:
                        revert with 0, 32, 33, 0x45536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if arg1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg1
                    if (-3 * 10^14 * arg2) + (arg3 * arg2) / arg1 > arg3 + maxProfit:
                        revert with 0, 'LuckMaster::bet::MAXPROFIT_LIMIT'
                    require arg2
                    if arg2 <= 40:
                        require ext_code.size(luckAddress)
                        call luckAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg3
                    else:
                        if sha3(msg.sender, block.hash(block.number - 1)) % arg2 >= arg1:
                            require ext_code.size(luckAddress)
                            call luckAddress.burn(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if arg3 > (-3 * 10^14 * arg2) + (arg3 * arg2) / arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(luckAddress)
                            call luckAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, ((-3 * 10^14 * arg2) + (arg3 * arg2) / arg1) - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0bc9ede4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_0bc9ede4
    require ext_code.size(luckAddress)
    call luckAddress.0x40c10f19 with:
         gas gas_remaining wei
        args devAddr, arg3 / sub_0bc9ede4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Bet(arg1, arg2, arg3, sha3(msg.sender, block.hash(block.number - 1)) % arg2, msg.sender);
    stor4 = 1
}



}
