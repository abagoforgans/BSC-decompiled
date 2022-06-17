contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address busdAddress;
address sub_59b3b805Address;
uint32 stor4;
address DAOAddress;
uint256 sub_0452804a;
uint256 sub_2669403a;
uint256 minBuyAmount;
uint256 maxBuyAmount;
uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function sub_0452804a(?) payable {
    return sub_0452804a
}

function initialized() payable {
    return bool(stor9)
}

function sub_1fd9c23a(?) payable {
    return sub_2669403a
}

function sub_2669403a(?) payable {
    return sub_2669403a
}

function busd() payable {
    return busdAddress
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function purchased(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_59b3b805(?) payable {
    return sub_59b3b805Address
}

function maxBuyAmount() payable {
    return maxBuyAmount
}

function owner() payable {
    return owner
}

function DAO() payable {
    return address(DAOAddress)
}

function minBuyAmount() payable {
    return minBuyAmount
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function sub_945be8ee(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_0452804a = arg1
    return arg1
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor10[address(arg1)] = 1
    return 1
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if stor9:
        revert with 0, 'Already initialized'
    if minBuyAmount >= arg6:
        revert with 0, 'Not valid'
    sub_59b3b805Address = arg1
    busdAddress = arg2
    sub_0452804a = arg4
    minBuyAmount = arg5
    maxBuyAmount = arg6
    address(DAOAddress) = arg3
    stor9 = 1
}

function approveBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while arg1.length > idx:
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 10
        stor10[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    return arg1.length
}

function withdrawTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
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
    return 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor10[msg.sender]:
        revert with 0, 'Buyer not approved.'
    if stor11[msg.sender]:
        revert with 0, 'Already purchased'
    if arg1 < minBuyAmount:
        revert with 0, 'Amount too low'
    if arg1 > maxBuyAmount:
        revert with 0, 'Amount too high'
    if not sub_0452804a:
        revert with 0, 'SafeMath: division by zero'
    if not ext_code.size(busdAddress):
        revert with 0, 'Address: call to non-contract'
    mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
    mem[480 len 4] = 0
    call busdAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[452 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[388]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 467 len 22]
    if not ext_code.size(sub_59b3b805Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * arg1 / sub_0452804a) >> 32
    mem[ceil32(return_data.size) + 585 len 0] = 0
    call sub_59b3b805Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, 10^18 * arg1 / sub_0452804a) << 224, mem[ceil32(return_data.size) + 585 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 553]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 632 len 22]
    emit Purchase(arg1, msg.sender);
    stor11[msg.sender] = 1
    sub_2669403a += arg1
    return 1
}



}
