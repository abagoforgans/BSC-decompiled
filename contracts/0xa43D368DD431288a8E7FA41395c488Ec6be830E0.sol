contract main {




// =====================  Runtime code  =====================


const balanceOfThis = eth.balance(this.address)


uint32 stor0;
address _OWNER_;
uint256 stor0;
address _NEW_OWNER_;
mapping of uint8 stor2;
address sub_02d8f66fAddress;
address sub_d1622b91Address;

function sub_02d8f66f(?) {
    return sub_02d8f66fAddress
}

function _OWNER_() {
    return address(_OWNER_)
}

function _NEW_OWNER_() {
    return _NEW_OWNER_
}

function sub_d1622b91(?) {
    return sub_d1622b91Address
}

function _fallback() payable {
    revert
}

function setV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_02d8f66fAddress = arg1
}

function setV3Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_d1622b91Address = arg1
}

function approveTraderAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor2[address(arg1)] = 1
}

function claimOwnership() {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(address(_OWNER_), _NEW_OWNER_);
    address(_OWNER_) = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function removeTraderAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor2[address(arg1)]:
        revert with 0, 'TRADER_NOT_IN_LIST'
    stor2[address(arg1)] = 0
}

function withdrawAllFunds() {
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAllFundsToOwner() {
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    call address(_OWNER_) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    emit OwnershipTransferPrepared(address(_OWNER_), arg1);
    _NEW_OWNER_ = arg1
}

function withdrawFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function swapWETHtoETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require ext_code.size(sub_02d8f66fAddress)
    staticcall sub_02d8f66fAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapETHtoWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require ext_code.size(sub_02d8f66fAddress)
    staticcall sub_02d8f66fAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawAllToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[ceil32(return_data.size) + 352 len 4] = 0
    mem[ceil32(return_data.size) + 324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 370 len 22]
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 352 len 4] = 0
    mem[ceil32(return_data.size) + 324 len 0] = 0
    call arg2 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 370 len 22]
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
}

function withdrawAllTokenToOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(_OWNER_)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    mem[ceil32(return_data.size) + 352 len 4] = 0
    mem[ceil32(return_data.size) + 324 len 0] = 0
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 370 len 22]
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
}

function withdrawTokensToOnwer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(_OWNER_)
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 352 len 4] = 0
    mem[ceil32(return_data.size) + 324 len 0] = 0
    call arg2 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 370 len 22]
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 371 len 22]
}

function sub_854705d5(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require 2 == ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 128] = 2
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 160] = mem[140 len 20]
    require 1 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 192] = mem[172 len 20]
    mem[(32 * ('cd', 36).length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 228] = cd[4]
    mem[(32 * ('cd', 36).length) + 260] = cd[68]
    mem[(32 * ('cd', 36).length) + 292] = 160
    mem[(32 * ('cd', 36).length) + 388] = 2
    idx = 0
    s = (32 * ('cd', 36).length) + 420
    t = (32 * ('cd', 36).length) + 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 324] = this.address
    mem[(32 * ('cd', 36).length) + 356] = block.timestamp + 15
    require ext_code.size(sub_02d8f66fAddress)
    call sub_02d8f66fAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], cd[68], Array(len=2, data=mem[(32 * ('cd', 36).length) + 420 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _67 = mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 36).length) + return_data.size + 224 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 255
    _68 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
    require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224] <= test266151307()
    require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 256 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 256
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 224] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
    require return_data.size >= _67 + (32 * _68) + 32
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 256 len 32 * _68] = mem[(32 * ('cd', 36).length) + _67 + 256 len 32 * _68]
    require 1 < _68
    require 0 < ('cd', 36).length
    require ('cd', 36).length - 1 < ('cd', 36).length
    emit InsertOrderV2(cd[4], mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 288], address(mem[128]), mem[(32 * ('cd', 36).length - 1) + 140 len 20]);
    return memory
      from (32 * ('cd', 36).length) + ceil32(return_data.size) + 288
       len 32
}

function sub_0b7e96ec(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require 2 == ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 128] = 2
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 160] = mem[140 len 20]
    require 1 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + 192] = mem[172 len 20]
    mem[(32 * ('cd', 36).length) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 228] = cd[4]
    mem[(32 * ('cd', 36).length) + 260] = cd[68]
    mem[(32 * ('cd', 36).length) + 292] = 160
    mem[(32 * ('cd', 36).length) + 388] = 2
    idx = 0
    s = (32 * ('cd', 36).length) + 420
    t = (32 * ('cd', 36).length) + 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 324] = this.address
    mem[(32 * ('cd', 36).length) + 356] = block.timestamp + 15
    require ext_code.size(sub_02d8f66fAddress)
    call sub_02d8f66fAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], cd[68], Array(len=2, data=mem[(32 * ('cd', 36).length) + 420 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _67 = mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 36).length) + return_data.size + 224 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 255
    _68 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
    require mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224] <= test266151307()
    require (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 256 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 256
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 224] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
    require return_data.size >= _67 + (32 * _68) + 32
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 256 len 32 * _68] = mem[(32 * ('cd', 36).length) + _67 + 256 len 32 * _68]
    require 0 < _68
    _84 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 256]
    require 0 < ('cd', 36).length
    _86 = mem[128]
    require ('cd', 36).length - 1 < ('cd', 36).length
    mem[mem[64]] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 256]
    mem[mem[64] + 64] = address(_86)
    mem[mem[64] + 96] = mem[(32 * ('cd', 36).length - 1) + 140 len 20]
    emit InsertOrderV2(mem[mem[64]], cd[4], address(_86), mem[(32 * ('cd', 36).length - 1) + 140 len 20]);
    return _84
}

function sub_84f4de11(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = (32 * ('cd', 36).length) + 160
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == cd[s] % 16777216
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require 2 == ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 288] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 320] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 352] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 384] = 0
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 416] = mem[140 len 20]
    require 1 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 448] = mem[172 len 20]
    require 0 < ('cd', 100).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 480] = mem[(32 * ('cd', 36).length) + 189 len 3]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 512] = this.address
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 544] = block.timestamp + 15
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 576] = cd[4]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 608] = cd[68]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 640] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 676] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 428 len 20]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 708] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 460 len 20]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 740] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 509 len 3]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 772] = this.address
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 804] = block.timestamp + 15
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 836] = cd[4]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 868] = cd[68]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 900] = 0
    require ext_code.size(sub_d1622b91Address)
    call sub_d1622b91Address.exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 676 len 96], address(this.address), block.timestamp + 15, cd[4], cd[68], 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require ('cd', 36).length - 1 < ('cd', 36).length
    emit InsertOrderV3(cd[4], ext_call.return_data[0], address(mem[128]), mem[(32 * ('cd', 36).length - 1) + 140 len 20]);
}

function sub_05615a75(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = (32 * ('cd', 36).length) + 160
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == cd[s] % 16777216
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor2[msg.sender]:
        revert with 0, 'NOT_TRADER'
    require 2 == ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 224] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 288] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 320] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 352] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 384] = 0
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 416] = mem[140 len 20]
    require 1 < ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 448] = mem[172 len 20]
    require 0 < ('cd', 100).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 480] = mem[(32 * ('cd', 36).length) + 189 len 3]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 512] = this.address
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 544] = block.timestamp + 15
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 576] = cd[4]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 608] = cd[68]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 640] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 676] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 428 len 20]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 708] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 460 len 20]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 740] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 509 len 3]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 772] = this.address
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 804] = block.timestamp + 15
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 836] = cd[4]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 868] = cd[68]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 900] = 0
    require ext_code.size(sub_d1622b91Address)
    call sub_d1622b91Address.exactOutputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 676 len 96], address(this.address), block.timestamp + 15, cd[4], cd[68], 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 36).length
    require ('cd', 36).length - 1 < ('cd', 36).length
    emit InsertOrderV3(ext_call.return_data[0], cd[4], address(mem[128]), mem[(32 * ('cd', 36).length - 1) + 140 len 20]);
}



}
