contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address sub_596891d6Address;
address wbnbAddress;
uint256 stor4; offset 32
uint256 inAmount;

function sub_596891d6(?) {
    return sub_596891d6Address
}

function wbnbAddress() {
    return wbnbAddress
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function inAmount() {
    return inAmount
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

function setInfo(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
    sub_596891d6Address = arg2
    inAmount = arg3
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function swap() {
    mem[96] = 4
    mem[128] = wbnbAddress
    mem[160] = tokenAddress
    mem[192] = sub_596891d6Address
    mem[224] = wbnbAddress
    mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[260] = inAmount
    mem[292] = 64
    mem[324] = 4
    mem[356 len 0] = None
    require ext_code.size(0xbd67d157502a23309db761c41965600c2ec788b2)
    staticcall 0xbd67d157502a23309db761c41965600c2ec788b2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args inAmount, Array(len=4, data=mem[356 len 128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _81 = mem[256 len 4], stor4
    require mem[256 len 4], stor4 <= 4294967296
    require mem[256 len 4], stor4 + 32 <= return_data.size
    require mem[mem[256 len 4], stor4 + 256] <= 4294967296 and mem[256 len 4], stor4 + (32 * mem[mem[256 len 4], stor4 + 256]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], stor4 + 256]
    _84 = mem[_81 + 256]
    mem[ceil32(return_data.size) + 288 len floor32(mem[_81 + 256])] = mem[_81 + 288 len floor32(mem[_81 + 256])]
    mem[64] = (32 * _84) + ceil32(return_data.size) + 288
    require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
    if mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288] > inAmount:
        mem[(32 * _84) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(0xbd67d157502a23309db761c41965600c2ec788b2)
        call 0xbd67d157502a23309db761c41965600c2ec788b2.0x50e27df3 with:
           value inAmount wei
             gas gas_remaining wei
            args inAmount, Array(len=4, data=mem[(32 * _84) + ceil32(return_data.size) + 452 len 128]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[128] = wbnbAddress
        mem[160] = sub_596891d6Address
        mem[192] = tokenAddress
        mem[224] = wbnbAddress
        mem[(32 * _84) + ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _84) + ceil32(return_data.size) + 292] = inAmount
        mem[(32 * _84) + ceil32(return_data.size) + 324] = 64
        mem[(32 * _84) + ceil32(return_data.size) + 356] = 4
        mem[(32 * _84) + ceil32(return_data.size) + 388 len 0] = None
        require ext_code.size(0xbd67d157502a23309db761c41965600c2ec788b2)
        staticcall 0xbd67d157502a23309db761c41965600c2ec788b2.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args inAmount, Array(len=4, data=mem[(32 * _84) + ceil32(return_data.size) + 388 len 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _84) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _84) + (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _214 = mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4
        require mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4 <= 4294967296
        require mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4 + 32 <= return_data.size
        require mem[mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4 + (32 * _84) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4 + (32 * mem[mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4 + (32 * _84) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
        mem[(32 * _84) + (2 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _84) + ceil32(return_data.size) + 288 len 4], stor4 + (32 * _84) + ceil32(return_data.size) + 288]
        _220 = mem[_214 + (32 * _84) + ceil32(return_data.size) + 288]
        mem[(32 * _84) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_214 + (32 * _84) + ceil32(return_data.size) + 288])] = mem[_214 + (32 * _84) + ceil32(return_data.size) + 320 len floor32(mem[_214 + (32 * _84) + ceil32(return_data.size) + 288])]
        mem[64] = (32 * _220) + (32 * _84) + (2 * ceil32(return_data.size)) + 320
        require mem[(32 * _84) + (2 * ceil32(return_data.size)) + 288] - 1 < mem[(32 * _84) + (2 * ceil32(return_data.size)) + 288]
        if mem[(32 * mem[(32 * _84) + (2 * ceil32(return_data.size)) + 288] - 1) + (32 * _84) + (2 * ceil32(return_data.size)) + 320] > inAmount:
            mem[(32 * _220) + (32 * _84) + (2 * ceil32(return_data.size)) + 484 len 0] = None
            require ext_code.size(0xbd67d157502a23309db761c41965600c2ec788b2)
            call 0xbd67d157502a23309db761c41965600c2ec788b2.0x50e27df3 with:
               value inAmount wei
                 gas gas_remaining wei
                args inAmount, Array(len=4, data=mem[(32 * _220) + (32 * _84) + (2 * ceil32(return_data.size)) + 484 len 128]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wbnbAddress)
    staticcall wbnbAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(wbnbAddress)
        call wbnbAddress.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Balance going down'
}



}
