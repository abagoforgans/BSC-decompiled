contract main {




// =====================  Runtime code  =====================


#
#  - sub_61618449(?)
#
address owner;
address stor1;
uint256 stor3;
uint256 stor4;
address stor7;

function owner() payable {
    return owner
}

function destroySmartContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_832aecaf(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x544f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_6545f2a0(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_14c334ce(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
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

function sub_b75409a1(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(this.address) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(this.address) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(this.address) << 64:
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

function sub_bdc011dc(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
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

function sub_3bf3c7ee(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(this.address) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(this.address) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(this.address) << 64:
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

function sub_2b4b8abe(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'SOwnable: caller is not the owne'
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'b'
    require 0 < ('cd', 4).length
    mem[100] = stor7
    mem[132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    if ('cd', 4).length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[96]
            _1100 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _1107 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1166 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_1107)
                    _1167 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1169 = sha3(mem[_1167 + 32 len mem[_1167]])
                    mem[_1166 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1166 + 105] = Mask(160, 96, stor1)
                    mem[_1166 + 125] = _1169
                    mem[_1166 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1166 + 72] = 85
                    if address(_1100) == address(_1107):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1166 + 292 len 29]
                    if address(_1100) < address(_1107):
                        if not address(_1100):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1166 + 221] = address(_1100)
                        mem[_1166 + 241] = address(_1107)
                        mem[_1166 + 189] = 40
                        mem[_1166 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1166 + 294] = Mask(160, 96, stor1)
                        mem[_1166 + 314] = sha3(address(_1100), address(_1107))
                        mem[_1166 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1166 + 261] = 85
                        mem[64] = _1166 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1107):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1166 + 221] = address(_1107)
                        mem[_1166 + 241] = address(_1100)
                        mem[_1166 + 189] = 40
                        mem[_1166 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1166 + 294] = Mask(160, 96, stor1)
                        mem[_1166 + 314] = sha3(address(_1107), address(_1100))
                        mem[_1166 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1166 + 261] = 85
                        mem[64] = _1166 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1166 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1166 + 487 len 23]
                    if address(_1100) == address(_1100):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1166 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1166 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1166 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1166 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1173 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_1100)
                    _1174 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1176 = sha3(mem[_1174 + 32 len mem[_1174]])
                    mem[_1173 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1173 + 105] = Mask(160, 96, stor1)
                    mem[_1173 + 125] = _1176
                    mem[_1173 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1173 + 72] = 85
                    if address(_1100) == address(_1107):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1173 + 292 len 29]
                    if address(_1100) < address(_1107):
                        if not address(_1100):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1173 + 221] = address(_1100)
                        mem[_1173 + 241] = address(_1107)
                        mem[_1173 + 189] = 40
                        mem[_1173 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1173 + 294] = Mask(160, 96, stor1)
                        mem[_1173 + 314] = sha3(address(_1100), address(_1107))
                        mem[_1173 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1173 + 261] = 85
                        mem[64] = _1173 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1107):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1173 + 221] = address(_1107)
                        mem[_1173 + 241] = address(_1100)
                        mem[_1173 + 189] = 40
                        mem[_1173 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1173 + 294] = Mask(160, 96, stor1)
                        mem[_1173 + 314] = sha3(address(_1107), address(_1100))
                        mem[_1173 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1173 + 261] = 85
                        mem[64] = _1173 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1173 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1173 + 487 len 23]
                    if address(_1100) == address(_1100):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1173 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1173 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1173 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1173 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1180 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_1107)
                    _1181 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1183 = sha3(mem[_1181 + 32 len mem[_1181]])
                    mem[_1180 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1180 + 105] = Mask(160, 96, stor1)
                    mem[_1180 + 125] = _1183
                    mem[_1180 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1180 + 72] = 85
                    if address(_1100) == address(_1107):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1180 + 292 len 29]
                    if address(_1100) < address(_1107):
                        if not address(_1100):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1180 + 221] = address(_1100)
                        mem[_1180 + 241] = address(_1107)
                        mem[_1180 + 189] = 40
                        mem[_1180 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1180 + 294] = Mask(160, 96, stor1)
                        mem[_1180 + 314] = sha3(address(_1100), address(_1107))
                        mem[_1180 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1180 + 261] = 85
                        mem[64] = _1180 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1107):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1180 + 221] = address(_1107)
                        mem[_1180 + 241] = address(_1100)
                        mem[_1180 + 189] = 40
                        mem[_1180 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1180 + 294] = Mask(160, 96, stor1)
                        mem[_1180 + 314] = sha3(address(_1107), address(_1100))
                        mem[_1180 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1180 + 261] = 85
                        mem[64] = _1180 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1180 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1180 + 487 len 23]
                    if address(_1107) == address(_1100):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1180 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1180 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1180 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1180 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1187 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_1100)
                    _1188 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1190 = sha3(mem[_1188 + 32 len mem[_1188]])
                    mem[_1187 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1187 + 105] = Mask(160, 96, stor1)
                    mem[_1187 + 125] = _1190
                    mem[_1187 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1187 + 72] = 85
                    if address(_1100) == address(_1107):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1187 + 292 len 29]
                    if address(_1100) < address(_1107):
                        if not address(_1100):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1187 + 221] = address(_1100)
                        mem[_1187 + 241] = address(_1107)
                        mem[_1187 + 189] = 40
                        mem[_1187 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1187 + 294] = Mask(160, 96, stor1)
                        mem[_1187 + 314] = sha3(address(_1100), address(_1107))
                        mem[_1187 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1187 + 261] = 85
                        mem[64] = _1187 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1100), address(_1107)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1107):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1187 + 221] = address(_1107)
                        mem[_1187 + 241] = address(_1100)
                        mem[_1187 + 189] = 40
                        mem[_1187 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1187 + 294] = Mask(160, 96, stor1)
                        mem[_1187 + 314] = sha3(address(_1107), address(_1100))
                        mem[_1187 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1187 + 261] = 85
                        mem[64] = _1187 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1107), address(_1100)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1187 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1187 + 487 len 23]
                    if address(_1107) == address(_1100):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1187 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1187 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1187 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1187 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
            idx = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require 0 < ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        idx = 0
        while idx < ('cd', 4).length - 1:
            require idx < mem[96]
            _1104 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _1109 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1194 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_1109)
                    _1195 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1197 = sha3(mem[_1195 + 32 len mem[_1195]])
                    mem[_1194 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1194 + 105] = Mask(160, 96, stor1)
                    mem[_1194 + 125] = _1197
                    mem[_1194 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1194 + 72] = 85
                    if address(_1104) == address(_1109):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1194 + 292 len 29]
                    if address(_1104) < address(_1109):
                        if not address(_1104):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1194 + 221] = address(_1104)
                        mem[_1194 + 241] = address(_1109)
                        mem[_1194 + 189] = 40
                        mem[_1194 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1194 + 294] = Mask(160, 96, stor1)
                        mem[_1194 + 314] = sha3(address(_1104), address(_1109))
                        mem[_1194 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1194 + 261] = 85
                        mem[64] = _1194 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1109):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1194 + 221] = address(_1109)
                        mem[_1194 + 241] = address(_1104)
                        mem[_1194 + 189] = 40
                        mem[_1194 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1194 + 294] = Mask(160, 96, stor1)
                        mem[_1194 + 314] = sha3(address(_1109), address(_1104))
                        mem[_1194 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1194 + 261] = 85
                        mem[64] = _1194 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1194 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1194 + 487 len 23]
                    if address(_1104) == address(_1104):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1194 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1194 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1194 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1194 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1201 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_1104)
                    _1202 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1204 = sha3(mem[_1202 + 32 len mem[_1202]])
                    mem[_1201 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1201 + 105] = Mask(160, 96, stor1)
                    mem[_1201 + 125] = _1204
                    mem[_1201 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1201 + 72] = 85
                    if address(_1104) == address(_1109):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1201 + 292 len 29]
                    if address(_1104) < address(_1109):
                        if not address(_1104):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1201 + 221] = address(_1104)
                        mem[_1201 + 241] = address(_1109)
                        mem[_1201 + 189] = 40
                        mem[_1201 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1201 + 294] = Mask(160, 96, stor1)
                        mem[_1201 + 314] = sha3(address(_1104), address(_1109))
                        mem[_1201 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1201 + 261] = 85
                        mem[64] = _1201 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1109):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1201 + 221] = address(_1109)
                        mem[_1201 + 241] = address(_1104)
                        mem[_1201 + 189] = 40
                        mem[_1201 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1201 + 294] = Mask(160, 96, stor1)
                        mem[_1201 + 314] = sha3(address(_1109), address(_1104))
                        mem[_1201 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1201 + 261] = 85
                        mem[64] = _1201 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1201 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1201 + 487 len 23]
                    if address(_1104) == address(_1104):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1201 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1201 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1201 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1201 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1208 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_1109)
                    _1209 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1211 = sha3(mem[_1209 + 32 len mem[_1209]])
                    mem[_1208 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1208 + 105] = Mask(160, 96, stor1)
                    mem[_1208 + 125] = _1211
                    mem[_1208 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1208 + 72] = 85
                    if address(_1104) == address(_1109):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1208 + 292 len 29]
                    if address(_1104) < address(_1109):
                        if not address(_1104):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1208 + 221] = address(_1104)
                        mem[_1208 + 241] = address(_1109)
                        mem[_1208 + 189] = 40
                        mem[_1208 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1208 + 294] = Mask(160, 96, stor1)
                        mem[_1208 + 314] = sha3(address(_1104), address(_1109))
                        mem[_1208 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1208 + 261] = 85
                        mem[64] = _1208 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1109):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1208 + 221] = address(_1109)
                        mem[_1208 + 241] = address(_1104)
                        mem[_1208 + 189] = 40
                        mem[_1208 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1208 + 294] = Mask(160, 96, stor1)
                        mem[_1208 + 314] = sha3(address(_1109), address(_1104))
                        mem[_1208 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1208 + 261] = 85
                        mem[64] = _1208 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1208 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1208 + 487 len 23]
                    if address(_1109) == address(_1104):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1208 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1208 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1208 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1208 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _1215 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_1104)
                    _1216 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1218 = sha3(mem[_1216 + 32 len mem[_1216]])
                    mem[_1215 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1215 + 105] = Mask(160, 96, stor1)
                    mem[_1215 + 125] = _1218
                    mem[_1215 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                    mem[_1215 + 72] = 85
                    if address(_1104) == address(_1109):
                        revert with 0, 32, 35, 0x6c50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_1215 + 292 len 29]
                    if address(_1104) < address(_1109):
                        if not address(_1104):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1215 + 221] = address(_1104)
                        mem[_1215 + 241] = address(_1109)
                        mem[_1215 + 189] = 40
                        mem[_1215 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 294] = Mask(160, 96, stor1)
                        mem[_1215 + 314] = sha3(address(_1104), address(_1109))
                        mem[_1215 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1215 + 261] = 85
                        mem[64] = _1215 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1104), address(_1109)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    else:
                        if not address(_1109):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[_1215 + 221] = address(_1109)
                        mem[_1215 + 241] = address(_1104)
                        mem[_1215 + 189] = 40
                        mem[_1215 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 294] = Mask(160, 96, stor1)
                        mem[_1215 + 314] = sha3(address(_1109), address(_1104))
                        mem[_1215 + 346] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                        mem[_1215 + 261] = 85
                        mem[64] = _1215 + 378
                        require ext_code.size(address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
                        staticcall address(sha3(0, stor1, sha3(address(_1109), address(_1104)), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).getReserves() with:
                                gas gas_remaining wei
                    mem[_1215 + 378 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[_1215 + 487 len 23]
                    if address(_1109) == address(_1104):
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1215 + 484 len 26]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1215 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[50 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                    else:
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1215 + 484 len 26]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 38, 0x6450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1215 + 484 len 26]
                        if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] / 9975 != mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                        else:
                            require ext_call.return_data[18 len 14]
                            if 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) < 10000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
                            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160] = 9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
            idx = idx + 1
            continue 
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + 128]
    if not stor3:
        if stor4 <= 0:
            revert with 0, 'ds-math-div-overflow'
        require stor4
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0 / stor4, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), this.address, block.timestamp + 120
    else:
        require stor3
        if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + 160] * stor3 / stor3 != mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + 160]:
            revert with 0, 'ds-math-mul-overflow'
        if stor4 <= 0:
            revert with 0, 'ds-math-div-overflow'
        require stor4
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + 160] * stor3 / stor4, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
