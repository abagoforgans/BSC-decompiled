contract main {




// =====================  Runtime code  =====================


address owner;
address upTokenAddress;
uint256 sub_40e26487;
uint256 sub_5f358df0;
uint8 stor4;
array of uint256 sub_ce58b96a;
mapping of uint256 sub_de57bcf1;

function sub_40e26487(?) payable {
    return sub_40e26487
}

function sub_5f358df0(?) payable {
    return sub_5f358df0
}

function upToken() payable {
    return upTokenAddress
}

function owner() payable {
    return owner
}

function sub_ce58b96a(?) payable {
    return sub_ce58b96a[address(arg1)][0 len sub_ce58b96a[address(arg1)].length]
}

function sub_daabcc39(?) payable {
    return bool(stor4)
}

function sub_de57bcf1(?) payable {
    require calldata.size - 4 >= 32
    return sub_de57bcf1[address(arg1)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_30f42fb6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint8(arg1)
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    upTokenAddress = arg1
}

function transferOwnership(address arg1) payable {
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

function sub_b56effbb(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 33, 0x645361666549544f4b454e3a206c6f772d6c6576656c2063616c6c206661696c65, mem[297 len 31]
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 44, 0x735361666549544f4b454e3a2049544f4b454e206f7065726174696f6e20646964206e6f7420737563636565, mem[308 len 20]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        33,
                        0x645361666549544f4b454e3a206c6f772d6c6576656c2063616c6c206661696c65,
                        mem[ceil32(return_data.size) + 298 len 31]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            44,
                            0x735361666549544f4b454e3a2049544f4b454e206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 309 len 20]
}

function sub_84314655(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_de57bcf1[address(msg.sender)] <= 0:
        revert with 0, 'Please Deposit BNB first'
    sub_ce58b96a[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x8aac3bdf: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 224] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32]
        emit 0x8aac3bdf: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 224 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}

function sub_abcf34eb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor4:
        revert with 0, 'UNFIRewards: Deposit Disabled'
    mem[0] = msg.sender
    mem[32] = 6
    if not sub_de57bcf1[address(msg.sender)]:
        if sub_40e26487 + 1 < sub_40e26487:
            revert with 0, 'SafeMath: addition overflow'
        sub_40e26487++
    mem[ceil32(arg2.length) + 164] = msg.sender
    mem[ceil32(arg2.length) + 196] = this.address
    mem[ceil32(arg2.length) + 228] = arg1
    mem[ceil32(arg2.length) + 128] = 100
    mem[64] = ceil32(arg2.length) + 260
    mem[ceil32(arg2.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg2.length) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(arg2.length) + 260 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 292 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    call upTokenAddress.mem[ceil32(arg2.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 264 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 33, 0x645361666549544f4b454e3a206c6f772d6c6576656c2063616c6c206661696c65, mem[ceil32(arg2.length) + 361 len 31]
        if arg2.length > 0:
            require arg2.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            44,
                            0x735361666549544f4b454e3a2049544f4b454e206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg2.length) + 372 len 20]
    else:
        mem[ceil32(arg2.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        33,
                        0x645361666549544f4b454e3a206c6f772d6c6576656c2063616c6c206661696c65,
                        mem[ceil32(arg2.length) + ceil32(return_data.size) + 362 len 31]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(arg2.length) + 292]:
                revert with 0, 
                            32,
                            44,
                            0x735361666549544f4b454e3a2049544f4b454e206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg2.length) + ceil32(return_data.size) + 373 len 20]
    if sub_5f358df0 + arg1 < sub_5f358df0:
        revert with 0, 'SafeMath: addition overflow'
    sub_5f358df0 += arg1
    sub_ce58b96a[address(msg.sender)][] = Array(len=arg2.length, data=arg2[all])
    if sub_de57bcf1[address(msg.sender)] + arg1 < sub_de57bcf1[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_de57bcf1[address(msg.sender)] += arg1
    emit 0xef8e709e: msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
}



}
