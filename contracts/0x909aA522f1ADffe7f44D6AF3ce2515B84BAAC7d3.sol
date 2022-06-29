contract main {




// =====================  Runtime code  =====================


const sub_4e0cd799(?) = 1000


uint256 stor0;
address owner;
address stor2;
address sub_126b88feAddress;
address sub_002703a2Address;
address projectTokenAddress;
uint256 startPresale;
uint256 endPresale;
uint256 startClaim;
uint256 sub_fa1ec3f9;
uint256 stor10; offset 32
uint256 sub_c73798ab;
big736 stor10;
uint256 maxInvestment;
uint256 raisingAmount;
uint256 totalAmountInvested;
mapping of struct userInfo;
array of address addressList;
array of struct sub_0476dc1f;
array of struct sub_8c42d7c4;
array of struct sub_4090aec8;
mapping of uint8 stor19;
mapping of uint8 stor20;

function sub_002703a2(?) payable {
    return sub_002703a2Address
}

function maxInvestment() payable {
    return maxInvestment
}

function sub_0476dc1f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0476dc1f.length
    return sub_0476dc1f[arg1].field_0
}

function startPresale() payable {
    return startPresale
}

function sub_126b88fe(?) payable {
    return sub_126b88feAddress
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           bool(userInfo[arg1].field_1280),
           bool(userInfo[arg1].field_1288),
           bool(userInfo[arg1].field_1296)
}

function isBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[address(arg1)])
}

function sub_4090aec8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4090aec8.length
    return sub_4090aec8[arg1].field_0
}

function projectToken() payable {
    return projectTokenAddress
}

function sub_8c42d7c4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8c42d7c4.length
    return sub_8c42d7c4[arg1].field_0
}

function owner() payable {
    return owner
}

function raisingAmount() payable {
    return raisingAmount
}

function endPresale() payable {
    return endPresale
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return address(addressList[arg1])
}

function isWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[address(arg1)])
}

function sub_c73798ab(?) payable {
    return sub_c73798ab
}

function startClaim() payable {
    return startClaim
}

function totalAmountInvested() payable {
    return totalAmountInvested
}

function sub_fa1ec3f9(?) payable {
    return sub_fa1ec3f9
}

function getAddressListLength() payable {
    return addressList.length
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function sub_7f497645(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    startClaim = arg1
}

function sub_bb1eb5c3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_fa1ec3f9 = arg1
}

function sub_e078a88f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_c73798ab = arg1
}

function sub_c92651a7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxInvestment = arg1
}

function sub_efe9c9e2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    projectTokenAddress = arg1
}

function setEndPresale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    endPresale = arg1
}

function setStartPresale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    startPresale = arg1
}

function setRaisingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    raisingAmount = arg1
}

function setBlacklist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor20[address(arg1)] = uint8(arg2)
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor19[address(arg1)] = uint8(arg2)
}

function sub_0e75416f(?) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_0 > maxInvestment:
        revert with 0, 'SafeMath: subtraction overflow'
    return (maxInvestment - userInfo[address(arg1)].field_0)
}

function pullManagement() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor2);
    owner = stor2
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor2 = arg1
}

function sub_e7b82c34(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if 1 == arg1:
        sub_0476dc1f.length++
        sub_0476dc1f[sub_0476dc1f.length].field_0 = arg2
    else:
        if 2 == arg1:
            sub_8c42d7c4.length++
            sub_8c42d7c4[sub_8c42d7c4.length].field_0 = arg2
        else:
            if 3 == arg1:
                sub_4090aec8.length++
                sub_4090aec8[sub_4090aec8.length].field_0 = arg2
}

function getUserAllocation(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userInfo[address(arg1)].field_0:
        if not totalAmountInvested:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalAmountInvested / 10^6)
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmountInvested:
        revert with 0, 'SafeMath: division by zero'
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6)
}

function sub_ceed45c5(?) payable {
    require calldata.size - 4 >= 64
    if not userInfo[address(arg1)].field_0:
        if not totalAmountInvested:
            revert with 0, 'SafeMath: division by zero'
        if not arg2:
            return 0
        if 0 / totalAmountInvested / 10^6 * arg2 / arg2 != 0 / totalAmountInvested / 10^6:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (0 / totalAmountInvested / 10^6 * arg2 / 10^6)
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmountInvested:
        revert with 0, 'SafeMath: division by zero'
    if not arg2:
        return 0
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * arg2 / arg2 != 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * arg2 / 10^6)
}

function sub_fab6e54a(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_e36d317c(?) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if userInfo[address(arg1)].field_512:
        if not ext_code.size(projectTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, userInfo[address(arg1)].field_544
        call projectTokenAddress with:
             gas gas_remaining wei
            args userInfo[address(arg1)].field_512, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, userInfo[address(arg1)].field_512
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        userInfo[address(arg1)].field_512 = 0
        emit Claim(userInfo[address(arg1)].field_512, msg.sender);
    stor0 = 1
}

function sub_010cb327(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < endPresale:
        if userInfo[address(arg1)].field_1024 > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        else:
            return 0
    if startClaim <= block.timestamp:
        if 0 > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        return userInfo[address(arg1)].field_1024
    if endPresale > startClaim:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp > startClaim:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[address(arg1)].field_768:
        if not startClaim - endPresale:
            revert with 0, 'SafeMath: division by zero'
        if 0 / startClaim - endPresale > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        return (userInfo[address(arg1)].field_1024 - (0 / startClaim - endPresale))
    if (startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != startClaim - block.timestamp:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
    if not startClaim - endPresale:
        revert with 0, 'SafeMath: division by zero'
    if (startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale > userInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userInfo[address(arg1)].field_1024 - ((startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale))
}

function sub_28eb310e(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(projectTokenAddress)
    staticcall projectTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(projectTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call projectTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_55f18631(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(projectTokenAddress)
    staticcall projectTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough project token'
    if not ext_code.size(projectTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call projectTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_37a8b261(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_002703a2Address)
    staticcall sub_002703a2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalAmountInvested > raisingAmount:
        if totalAmountInvested - raisingAmount > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 > ext_call.return_data[0] - totalAmountInvested + raisingAmount:
            revert with 0, 'not enough investment tokens'
    else:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'not enough investment tokens'
    if not ext_code.size(sub_002703a2Address):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_002703a2Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}

function sub_8555c2aa(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_002703a2Address)
    staticcall sub_002703a2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalAmountInvested > raisingAmount:
        if totalAmountInvested - raisingAmount > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(sub_002703a2Address):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalAmountInvested + raisingAmount) >> 32
        call sub_002703a2Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - totalAmountInvested + raisingAmount) << 224, mem[388 len 4]
    else:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(sub_002703a2Address):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call sub_002703a2Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}

function sub_9a765ac7(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if 1 == arg1:
        idx = 0
        while uint8(idx) < sub_0476dc1f.length:
            mem[0] = 16
            if sub_0476dc1f[uint8(idx)].field_0 == arg2:
                s = uint8(idx)
                while s < sub_0476dc1f.length - 1:
                    require s + 1 < sub_0476dc1f.length
                    require s < sub_0476dc1f.length
                    mem[0] = 16
                    sub_0476dc1f[s].field_0 = sub_0476dc1f[s].field_256
                    s = s + 1
                    continue 
                require sub_0476dc1f.length
                mem[0] = 16
                sub_0476dc1f[sub_0476dc1f.length].field_0 = 0
                sub_0476dc1f.length--
            idx = idx + 1
            continue 
    else:
        if 2 == arg1:
            idx = 0
            while uint8(idx) < sub_8c42d7c4.length:
                mem[0] = 17
                if sub_8c42d7c4[uint8(idx)].field_0 == arg2:
                    s = uint8(idx)
                    while s < sub_8c42d7c4.length - 1:
                        require s + 1 < sub_8c42d7c4.length
                        require s < sub_8c42d7c4.length
                        mem[0] = 17
                        sub_8c42d7c4[s].field_0 = sub_8c42d7c4[s].field_256
                        s = s + 1
                        continue 
                    require sub_8c42d7c4.length
                    mem[0] = 17
                    sub_8c42d7c4[sub_8c42d7c4.length].field_0 = 0
                    sub_8c42d7c4.length--
                idx = idx + 1
                continue 
        else:
            if 3 == arg1:
                idx = 0
                while uint8(idx) < sub_4090aec8.length:
                    mem[0] = 18
                    if sub_4090aec8[uint8(idx)].field_0 == arg2:
                        s = uint8(idx)
                        while s < sub_4090aec8.length - 1:
                            require s + 1 < sub_4090aec8.length
                            require s < sub_4090aec8.length
                            mem[0] = 18
                            sub_4090aec8[s].field_0 = sub_4090aec8[s].field_256
                            s = s + 1
                            continue 
                        require sub_4090aec8.length
                        mem[0] = 18
                        sub_4090aec8[sub_4090aec8.length].field_0 = 0
                        sub_4090aec8.length--
                    idx = idx + 1
                    continue 
}

function sub_83ab15bd(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    s = 0
    while uint8(idx) < sub_0476dc1f.length:
        mem[0] = 16
        require ext_code.size(sub_0476dc1f[uint8(idx)].field_0)
        staticcall sub_0476dc1f[uint8(idx)].field_0.bondInfo(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 224
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0]
        s = ext_call.return_data[0] + s
        continue 
    idx = 0
    s = _35 * None
    while uint8(idx) < sub_8c42d7c4.length:
        mem[0] = 17
        require ext_code.size(sub_8c42d7c4[uint8(idx)].field_0)
        staticcall sub_8c42d7c4[uint8(idx)].field_0.bondInfo(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        if not ext_call.return_data[32]:
            if _35 * None < _35 * None:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 2 * ext_call.return_data[32] / ext_call.return_data[32] != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if (2 * ext_call.return_data[32]) + (_35 * None) < _35 * None:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[32]
        continue 
    idx = 0
    t = s
    while uint8(idx) < sub_4090aec8.length:
        mem[0] = 18
        require ext_code.size(sub_4090aec8[uint8(idx)].field_0)
        staticcall sub_4090aec8[uint8(idx)].field_0.bondInfo(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        if not ext_call.return_data[32]:
            if _35 * None < _35 * None:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 2 * ext_call.return_data[32] / ext_call.return_data[32] != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if (2 * ext_call.return_data[32]) + (_35 * None) < _35 * None:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = ext_call.return_data[32]
        continue 
    return (_35 * None)
}

function sub_917d9692(?) payable {
    require calldata.size - 4 >= 32
    if stor19[address(arg1)]:
        return bool(stor19[address(arg1)])
    idx = 0
    s = 0
    s = 0
    while uint8(idx) < sub_0476dc1f.length:
        mem[0] = 16
        require ext_code.size(sub_0476dc1f[uint8(idx)].field_0)
        staticcall sub_0476dc1f[uint8(idx)].field_0.bondInfo(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 224
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0]
        s = ext_call.return_data[0] + s
        continue 
    idx = 0
    s = _38 * None
    while uint8(idx) < sub_8c42d7c4.length:
        mem[0] = 17
        require ext_code.size(sub_8c42d7c4[uint8(idx)].field_0)
        staticcall sub_8c42d7c4[uint8(idx)].field_0.bondInfo(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        if not ext_call.return_data[32]:
            if _38 * None < _38 * None:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 2 * ext_call.return_data[32] / ext_call.return_data[32] != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if (2 * ext_call.return_data[32]) + (_38 * None) < _38 * None:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[32]
        continue 
    idx = 0
    t = s
    while uint8(idx) < sub_4090aec8.length:
        mem[0] = 18
        require ext_code.size(sub_4090aec8[uint8(idx)].field_0)
        staticcall sub_4090aec8[uint8(idx)].field_0.bondInfo(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 256
        if not ext_call.return_data[32]:
            if _38 * None < _38 * None:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if 2 * ext_call.return_data[32] / ext_call.return_data[32] != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if (2 * ext_call.return_data[32]) + (_38 * None) < _38 * None:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = ext_call.return_data[32]
        continue 
    return _38 * None >= sub_fa1ec3f9
}

function sub_b25e3355(?) payable {
    require calldata.size - 4 >= 32
    if totalAmountInvested > raisingAmount:
        if not userInfo[address(arg1)].field_0:
            if not totalAmountInvested:
                revert with 0, 'SafeMath: division by zero'
            if not raisingAmount:
                if 0 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256 > 1000:
                    return (userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256)
            else:
                if 0 / totalAmountInvested / 10^6 * raisingAmount / raisingAmount != 0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 0 / totalAmountInvested / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6):
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256 > 1000:
                    return (userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256)
        else:
            if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalAmountInvested:
                revert with 0, 'SafeMath: division by zero'
            if not raisingAmount:
                if 0 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256 > 1000:
                    return (userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256)
            else:
                if 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6):
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256 > 1000:
                    return (userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256)
        return 0
    else:
        return 0
}

function sub_ee9bf82d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = arg2
    while idx <= arg3:
        require idx < addressList.length
        mem[0] = address(addressList[idx])
        mem[32] = 14
        if not userInfo[address(stor15[idx])].field_0:
            _55 = mem[64]
            mem[64] = mem[64] + 64
            mem[_55] = 26
            mem[_55 + 32] = 'SafeMath: division by zero'
            if not totalAmountInvested:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _55 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _73 = mem[64]
            mem[64] = mem[64] + 64
            mem[_73] = 26
            mem[_73 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _85 = mem[64]
                mem[64] = mem[64] + 64
                mem[_85] = 26
                mem[_85 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 0
            else:
                if 0 / totalAmountInvested / 10^6 * arg1 / arg1 != 0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 26
                mem[_87 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 0 / totalAmountInvested / 10^6 * arg1 / 10^6
        else:
            if 10^12 * userInfo[address(stor15[idx])].field_0 / userInfo[address(stor15[idx])].field_0 != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _56 = mem[64]
            mem[64] = mem[64] + 64
            mem[_56] = 26
            mem[_56 + 32] = 'SafeMath: division by zero'
            if not totalAmountInvested:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _56 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 26
            mem[_76 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 26
                mem[_86 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 0
            else:
                if 10^12 * userInfo[address(stor15[idx])].field_0 / totalAmountInvested / 10^6 * arg1 / arg1 != 10^12 * userInfo[address(stor15[idx])].field_0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _88 = mem[64]
                mem[64] = mem[64] + 64
                mem[_88] = 26
                mem[_88 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 10^12 * userInfo[address(stor15[idx])].field_0 / totalAmountInvested / 10^6 * arg1 / 10^6
        idx = idx + 1
        continue 
}

function sub_34308d98(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx <= addressList.length - 1:
        require idx < addressList.length
        mem[0] = address(addressList[idx])
        mem[32] = 14
        if not userInfo[address(stor15[idx])].field_0:
            _55 = mem[64]
            mem[64] = mem[64] + 64
            mem[_55] = 26
            mem[_55 + 32] = 'SafeMath: division by zero'
            if not totalAmountInvested:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _55 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _73 = mem[64]
            mem[64] = mem[64] + 64
            mem[_73] = 26
            mem[_73 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _85 = mem[64]
                mem[64] = mem[64] + 64
                mem[_85] = 26
                mem[_85 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 0
            else:
                if 0 / totalAmountInvested / 10^6 * arg1 / arg1 != 0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 26
                mem[_87 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 0 / totalAmountInvested / 10^6 * arg1 / 10^6
        else:
            if 10^12 * userInfo[address(stor15[idx])].field_0 / userInfo[address(stor15[idx])].field_0 != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _56 = mem[64]
            mem[64] = mem[64] + 64
            mem[_56] = 26
            mem[_56 + 32] = 'SafeMath: division by zero'
            if not totalAmountInvested:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _56 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 26
            mem[_76 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 26
                mem[_86 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 0
            else:
                if 10^12 * userInfo[address(stor15[idx])].field_0 / totalAmountInvested / 10^6 * arg1 / arg1 != 10^12 * userInfo[address(stor15[idx])].field_0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _88 = mem[64]
                mem[64] = mem[64] + 64
                mem[_88] = 26
                mem[_88 + 32] = 'SafeMath: division by zero'
                require idx < addressList.length
                mem[0] = address(addressList[idx])
                mem[32] = 14
                userInfo[address(stor15[idx])].field_512 = 10^12 * userInfo[address(stor15[idx])].field_0 / totalAmountInvested / 10^6 * arg1 / 10^6
        idx = idx + 1
        continue 
}

function sub_8839f533(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < endPresale:
        if userInfo[address(arg1)].field_1024 > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(sub_126b88feAddress):
            revert with 0, 'Address: call to non-contract'
        mem[868 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg1), 0
        mem[992 len 4] = 0
        mem[964 len 0] = 0
        call sub_126b88feAddress with:
             gas gas_remaining wei
            args Mask(736, -512, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg1), 0) << 512, mem[964 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[900]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 979 len 22]
        if 0 > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        else:
            return 0
    if startClaim <= block.timestamp:
        if 0 > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(sub_126b88feAddress):
            revert with 0, 'Address: call to non-contract'
        mem[868 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg1), userInfo[address(arg1)].field_1056
        mem[992 len 4] = 0
        call sub_126b88feAddress with:
             gas gas_remaining wei
            args userInfo[address(arg1)].field_1024, mem[964 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[900]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 979 len 22]
        if userInfo[address(arg1)].field_1024 > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[address(arg1)].field_1024 = 0
        return userInfo[address(arg1)].field_1024
    if endPresale > startClaim:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp > startClaim:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[address(arg1)].field_768:
        if not startClaim - endPresale:
            revert with 0, 'SafeMath: division by zero'
        if 0 / startClaim - endPresale > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_code.size(sub_126b88feAddress):
            revert with 0, 'Address: call to non-contract'
        mem[1060 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg1), Mask(224, 32, userInfo[address(arg1)].field_1024 - (0 / startClaim - endPresale)) >> 32
        mem[1184 len 4] = 0
        call sub_126b88feAddress with:
             gas gas_remaining wei
            args Mask(224, 32, userInfo[address(arg1)].field_1024 - (0 / startClaim - endPresale)) << 480, mem[1156 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[1092]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 1171 len 22]
        if userInfo[address(arg1)].field_1024 - (0 / startClaim - endPresale) > userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[address(arg1)].field_1024 = 0 / startClaim - endPresale
        return (userInfo[address(arg1)].field_1024 - (0 / startClaim - endPresale))
    if (startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / userInfo[address(arg1)].field_768 != startClaim - block.timestamp:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
    if not startClaim - endPresale:
        revert with 0, 'SafeMath: division by zero'
    if (startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale > userInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_code.size(sub_126b88feAddress):
        revert with 0, 'Address: call to non-contract'
    mem[1060 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg1), Mask(224, 32, userInfo[address(arg1)].field_1024 - ((startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale)) >> 32
    mem[1184 len 4] = 0
    call sub_126b88feAddress with:
         gas gas_remaining wei
        args Mask(224, 32, userInfo[address(arg1)].field_1024 - ((startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale)) << 480, mem[1156 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[1092]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 1171 len 22]
    if userInfo[address(arg1)].field_1024 - ((startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale) > userInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[address(arg1)].field_1024 = (startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale
    return (userInfo[address(arg1)].field_1024 - ((startClaim * userInfo[address(arg1)].field_768) - (block.timestamp * userInfo[address(arg1)].field_768) / startClaim - endPresale))
}

function sub_9fa72ed0(?) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if totalAmountInvested > raisingAmount:
        if not userInfo[address(arg1)].field_0:
            if not totalAmountInvested:
                revert with 0, 'SafeMath: division by zero'
            if not raisingAmount:
                if 0 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256 > 1000:
                    if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
                        if not ext_code.size(sub_002703a2Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256) >> 32
                        call sub_002703a2Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0
            else:
                if 0 / totalAmountInvested / 10^6 * raisingAmount / raisingAmount != 0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 0 / totalAmountInvested / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6):
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256 > 1000:
                    if userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256:
                        if not ext_code.size(sub_002703a2Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256) >> 32
                        call sub_002703a2Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) < userInfo[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0 - (0 / totalAmountInvested / 10^6 * raisingAmount / 10^6)
        else:
            if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalAmountInvested:
                revert with 0, 'SafeMath: division by zero'
            if not raisingAmount:
                if 0 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256 > 1000:
                    if userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
                        if not ext_code.size(sub_002703a2Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256) >> 32
                        call sub_002703a2Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0
            else:
                if 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6):
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256 > 1000:
                    if userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256:
                        if not ext_code.size(sub_002703a2Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256) >> 32
                        call sub_002703a2Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) - userInfo[address(arg1)].field_256) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6) < userInfo[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmountInvested / 10^6 * raisingAmount / 10^6)
    stor0 = 1
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= startPresale:
        revert with 0, 'not presale time'
    if block.timestamp >= endPresale:
        revert with 0, 'not presale time'
    if arg1 <= 0:
        revert with 0, 'need _amount > 0'
    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + userInfo[msg.sender].field_0 > maxInvestment:
        revert with 0, 'you cannot invest more'
    if stor19[address(msg.sender)]:
        if stor20[address(msg.sender)]:
            revert with 0, 'YOU cannot invest'
        if stor19[address(msg.sender)]:
            if stor19[msg.sender]:
                userInfo[msg.sender].field_1296 = 1
                if not ext_code.size(sub_002703a2Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                userInfo[msg.sender].field_1280 = 1
                if not ext_code.size(sub_002703a2Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
            call sub_002703a2Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            if not userInfo[msg.sender].field_0:
                addressList.length++
                uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_0 += arg1
            if arg1 + totalAmountInvested < totalAmountInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalAmountInvested += arg1
            emit Invest(arg1, msg.sender);
        else:
            if not ext_code.size(sub_126b88feAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 0, stor10.field_32)
            mem[416 len 4] = 0
            call sub_126b88feAddress with:
                 gas gas_remaining wei
                args Mask(736, 0, stor10.field_0), mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                userInfo[msg.sender].field_768 = sub_c73798ab
                userInfo[msg.sender].field_1024 = sub_c73798ab
                stor19[msg.sender] = 1
                userInfo[msg.sender].field_1288 = 1
                if not ext_code.size(sub_002703a2Address):
                    revert with 0, 'Address: call to non-contract'
                mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[612 len 4] = 0
                call sub_002703a2Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[598 len 14],
                                    0,
                                    mem[616 len 4]
                else:
                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                if not userInfo[msg.sender].field_0:
                    addressList.length++
                    uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_0 += arg1
                if arg1 + totalAmountInvested < totalAmountInvested:
                    revert with 0, 'SafeMath: addition overflow'
                totalAmountInvested += arg1
                emit Invest(arg1, msg.sender);
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                userInfo[msg.sender].field_768 = sub_c73798ab
                userInfo[msg.sender].field_1024 = sub_c73798ab
                stor19[msg.sender] = 1
                userInfo[msg.sender].field_1288 = 1
                if not ext_code.size(sub_002703a2Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call sub_002703a2Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 14],
                                    0,
                                    mem[ceil32(return_data.size) + 617 len 4]
                    if not userInfo[msg.sender].field_0:
                        addressList.length++
                        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_0 += arg1
                    if arg1 + totalAmountInvested < totalAmountInvested:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAmountInvested += arg1
                    emit Invest(arg1, msg.sender);
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeBEP20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not userInfo[msg.sender].field_0:
                        addressList.length++
                        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    userInfo[msg.sender].field_0 += arg1
                    if arg1 + totalAmountInvested < totalAmountInvested:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    totalAmountInvested += arg1
                    emit Invest(address arg1, uint256 arg2):
                                arg1,
                                mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                msg.sender,
    else:
        idx = 0
        s = 0
        s = 0
        while uint8(idx) < sub_0476dc1f.length:
            mem[0] = 16
            require ext_code.size(sub_0476dc1f[uint8(idx)].field_0)
            staticcall sub_0476dc1f[uint8(idx)].field_0.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96 len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 224
            if ext_call.return_data[0] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = ext_call.return_data[0]
            s = ext_call.return_data[0] + s
            continue 
        idx = 0
        s = _2391 * None
        while uint8(idx) < sub_8c42d7c4.length:
            mem[0] = 17
            require ext_code.size(sub_8c42d7c4[uint8(idx)].field_0)
            staticcall sub_8c42d7c4[uint8(idx)].field_0.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96 len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 256
            if not ext_call.return_data[32]:
                if _2391 * None < _2391 * None:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if 2 * ext_call.return_data[32] / ext_call.return_data[32] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if (2 * ext_call.return_data[32]) + (_2391 * None) < _2391 * None:
                    revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = ext_call.return_data[32]
            continue 
        idx = 0
        t = s
        while uint8(idx) < sub_4090aec8.length:
            mem[0] = 18
            require ext_code.size(sub_4090aec8[uint8(idx)].field_0)
            staticcall sub_4090aec8[uint8(idx)].field_0.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96 len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 256
            if not ext_call.return_data[32]:
                if _2391 * None < _2391 * None:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if 2 * ext_call.return_data[32] / ext_call.return_data[32] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if (2 * ext_call.return_data[32]) + (_2391 * None) < _2391 * None:
                    revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = ext_call.return_data[32]
            continue 
        if _2391 * None >= sub_fa1ec3f9:
            if stor20[address(msg.sender)]:
                revert with 0, 'YOU cannot invest'
            if _2391 * None >= sub_fa1ec3f9:
                if not stor19[msg.sender]:
                    userInfo[msg.sender].field_1280 = 1
                else:
                    userInfo[msg.sender].field_1296 = 1
                if not ext_code.size(sub_002703a2Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call sub_002703a2Address with:
                     gas gas_remaining wei
                    args arg1, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if not ext_code.size(sub_126b88feAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 0, stor10.field_32)
                mem[416 len 4] = 0
                call sub_126b88feAddress with:
                     gas gas_remaining wei
                    args sub_c73798ab, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    userInfo[msg.sender].field_768 = sub_c73798ab
                    userInfo[msg.sender].field_1024 = sub_c73798ab
                    stor19[msg.sender] = 1
                    userInfo[msg.sender].field_1288 = 1
                    if not ext_code.size(sub_002703a2Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[612 len 4] = 0
                    call sub_002703a2Address with:
                         gas gas_remaining wei
                        args arg1, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    userInfo[msg.sender].field_768 = sub_c73798ab
                    userInfo[msg.sender].field_1024 = sub_c73798ab
                    stor19[msg.sender] = 1
                    userInfo[msg.sender].field_1288 = 1
                    if not ext_code.size(sub_002703a2Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[ceil32(return_data.size) + 613 len 4] = 0
                    call sub_002703a2Address with:
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
            if not userInfo[msg.sender].field_0:
                addressList.length++
                uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_0 += arg1
            if arg1 + totalAmountInvested < totalAmountInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalAmountInvested += arg1
            emit Invest(arg1, msg.sender);
        else:
            require ext_code.size(sub_126b88feAddress)
            staticcall sub_126b88feAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_c73798ab:
                revert with 0, 'you cannot invest'
            if stor20[address(msg.sender)]:
                revert with 0, 'YOU cannot invest'
            if _2391 * None >= sub_fa1ec3f9:
                if not stor19[msg.sender]:
                    userInfo[msg.sender].field_1280 = 1
                else:
                    userInfo[msg.sender].field_1296 = 1
                if not ext_code.size(sub_002703a2Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call sub_002703a2Address with:
                     gas gas_remaining wei
                    args arg1, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not uint32(msg.sender), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                if not userInfo[msg.sender].field_0:
                    addressList.length++
                    uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_0 += arg1
                if arg1 + totalAmountInvested < totalAmountInvested:
                    revert with 0, 'SafeMath: addition overflow'
                totalAmountInvested += arg1
                emit Invest(arg1, msg.sender);
            else:
                if not ext_code.size(sub_126b88feAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 0, stor10.field_32)
                mem[416 len 4] = 0
                call sub_126b88feAddress with:
                     gas gas_remaining wei
                    args sub_c73798ab, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                    if not uint32(msg.sender), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    userInfo[msg.sender].field_768 = sub_c73798ab
                    userInfo[msg.sender].field_1024 = sub_c73798ab
                    stor19[msg.sender] = 1
                    userInfo[msg.sender].field_1288 = 1
                    if not ext_code.size(sub_002703a2Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[612 len 4] = 0
                    call sub_002703a2Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                        if not uint32(msg.sender), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    if not userInfo[msg.sender].field_0:
                        addressList.length++
                        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_0 += arg1
                    if arg1 + totalAmountInvested < totalAmountInvested:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAmountInvested += arg1
                    emit Invest(arg1, msg.sender);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    userInfo[msg.sender].field_768 = sub_c73798ab
                    userInfo[msg.sender].field_1024 = sub_c73798ab
                    stor19[msg.sender] = 1
                    userInfo[msg.sender].field_1288 = 1
                    if not ext_code.size(sub_002703a2Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[ceil32(return_data.size) + 613 len 4] = 0
                    call sub_002703a2Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_c73798ab
                        if not uint32(msg.sender), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                        if not userInfo[msg.sender].field_0:
                            addressList.length++
                            uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if arg1 + totalAmountInvested < totalAmountInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAmountInvested += arg1
                        emit Invest(arg1, msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeBEP20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if not userInfo[msg.sender].field_0:
                            addressList.length++
                            uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[msg.sender].field_0 += arg1
                        if arg1 + totalAmountInvested < totalAmountInvested:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        totalAmountInvested += arg1
                        emit Invest(address arg1, uint256 arg2):
                                    arg1,
                                    mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                    msg.sender,
}



}
