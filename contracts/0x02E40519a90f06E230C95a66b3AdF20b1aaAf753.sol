contract main {




// =====================  Runtime code  =====================


#
#  - sub_964c0dcd(?)
#
const sub_1dcb216b(?) = 1

const sub_22d13e8d(?) = 4101

const sub_26d68c5f(?) = 4099

const sub_544485cf(?) = 10^16

const sub_5e011ec0(?) = (25 * 10^14 * 3600)

const sub_a79d2739(?) = 3

const sub_aaef1ead(?) = 2

const sub_bc9f9830(?) = 50000

const sub_d2d3160b(?) = 10^16

const sub_d76a8675(?) = ''

const sub_dcb2af4b(?) = 4102

const sub_fc73c8b5(?) = 4098


mapping of struct stor0;
mapping of uint256 sub_9710e7f6;
mapping of struct sub_9bb3357a;
mapping of address sub_66be7945;
uint64 sub_d891ccb2;
uint64 sub_dac3f64f; offset 64
uint64 sub_4e4a70e6; offset 128
uint64 sub_bd038949; offset 192
uint64 sub_716c9dd5;
uint64 sub_5da9b1f2; offset 64

function sub_4e4a70e6(?) {
    return sub_4e4a70e6
}

function sub_5da9b1f2(?) {
    return sub_5da9b1f2
}

function sub_66be7945(?) {
    require calldata.size - 4 >= 32
    return sub_66be7945[arg1]
}

function sub_716c9dd5(?) {
    return sub_716c9dd5
}

function sub_9710e7f6(?) {
    require calldata.size - 4 >= 32
    return sub_9710e7f6[arg1]
}

function sub_9bb3357a(?) {
    require calldata.size - 4 >= 32
    return sub_9bb3357a[arg1].field_0
}

function sub_bd038949(?) {
    return sub_bd038949
}

function sub_d891ccb2(?) {
    return sub_d891ccb2
}

function sub_dac3f64f(?) {
    return sub_dac3f64f
}

function _fallback() payable {
    revert
}

function sub_df014119(?) {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280
}

function sub_e1063635(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = mem[128]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function expireBind(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if block.timestamp <= stor0[mem[128]].field_1032:
        revert with 0, 'bind request is not expired'
    stor0[mem[128]].field_0 = 0
    stor0[mem[128]].field_256 = 0
    stor0[mem[128]].field_512 = 0
    stor0[mem[128]].field_768 = 0
    stor0[mem[128]].field_1024 = 0
    stor0[mem[128]].field_1280 = 0
    sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
    emit 0x4781c2d0: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
    return 1
}

function sub_f5d31519(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if 97 <= uint8(mem[idx + 128]) >> 248:
            require idx < arg1.length
            if uint8(mem[idx + 128]) >> 248 <= 122:
                require idx < arg1.length
                require idx < arg1.length
                mem[idx + 128 len 8] = Mask(8, -(12664759760331458874453076485325239921451404572804436691815673250865498554368, 0) + 256, 0) << (12664759760331458874453076485325239921451404572804436691815673250865498554368, 0) - 256
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    mem[64] = mem[64] + 64
    mem[_21 + 32] = arg2
    idx = 0
    while idx < arg1.length:
        require idx < mem[_21]
        require idx < arg1.length
        if not Mask(8, 248, mem[idx + 128]):
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function rejectBind(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 != stor0[mem[128]].field_256:
        revert with 0, 
                    32,
                    69,
                    0x1f636f6e74616374206164647265737320646f65736e277420657175616c20746f2074686520636f6e7472616374206164647265737320696e2062696e6420726571756573,
                    mem[ceil32(arg2.length) + 713 len 27]
    require ext_code.size(arg1)
    staticcall arg1.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only erc20 owner can reject'
    stor0[mem[128]].field_0 = 0
    stor0[mem[128]].field_256 = 0
    stor0[mem[128]].field_512 = 0
    stor0[mem[128]].field_768 = 0
    stor0[mem[128]].field_1024 = 0
    stor0[mem[128]].field_1280 = 0
    sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
    emit 0x341e20b0: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
    return 1
}

function sub_d43b8c5b(?) payable {
    require calldata.size - 4 >= 160
    if arg5 % 10^10:
        revert with 0, 'relayFee is must be N*10^10'
    if arg5 < 10^16:
        revert with 0, 'relayFee is too little'
    if arg4 < block.timestamp + 120:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe65787069726554696d65206d7573742062652074776f206d696e75746573206c617465,
                    mem[200 len 28]
    if not arg1:
        if arg3 + arg5 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        76,
                        0x74726563656976656420424e4220616d6f756e7420646f65736e277420657175616c20746f207468652073756d206f66207472616e7366657220616d6f756e7420616e642072656c61794665,
                        mem[240 len 20]
        sub_bd038949 = uint64(sub_bd038949 + 1)
        emit 0x5bd451c5: sub_d891ccb2, msg.sender, address(arg2), arg3 / 10^10, arg1, 0x424e420000000000000000000000000000000000000000000000000000000000, arg4, arg5 / 10^10
    else:
        if sub_9bb3357a[address(arg1)].field_0 > 8:
            require 10^(sub_9bb3357a[address(arg1)].field_0 - 8)
            if arg3 % 10^(sub_9bb3357a[address(arg1)].field_0 - 8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            60,
                            0x6e696e76616c6964207472616e7366657220616d6f756e743a20707265636973696f6e206c6f737320696e20616d6f756e7420636f6e76657273696f,
                            mem[224 len 4]
        if not sub_9710e7f6[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x7374686520636f6e747261637420686173206e6f74206265656e2062696e6420746f20616e79206265703220746f6b65,
                        mem[212 len 16]
        if arg5 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x73726563656976656420424e4220616d6f756e7420646f65736e277420657175616c20746f2072656c61794665,
                        mem[209 len 19]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require 10^sub_9bb3357a[address(arg1)].field_0
        if 100 * 10^6 * arg3 / 10^sub_9bb3357a[address(arg1)].field_0 > 25 * 10^14 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x94616d6f756e7420697320746f6f206c617267652c20696e743634206f766572666c6f,
                        mem[199 len 29]
        sub_bd038949 = uint64(sub_bd038949 + 1)
        emit 0x5bd451c5: sub_d891ccb2, msg.sender, address(arg2), 100 * 10^6 * arg3 / 10^sub_9bb3357a[address(arg1)].field_0, arg1, sub_9710e7f6[address(arg1)], arg4, arg5 / 10^10
    return 1
}

function sub_2eb881b0(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(4099)
    staticcall 0x1003.isHeaderSynced(uint64 rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'reference header is not synced'
    require ext_code.size(4102)
    staticcall 0x1006.isRelayer(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'the msg sender is not a relayer'
    if sub_d891ccb2 != arg4:
        revert with 0, 'wrong bind sequence'
    if arg1.length != 157:
        revert with 0, 'wrong bind package size'
    require ext_code.size(4099)
    staticcall 0x1003.getAppHash(uint64 rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[452] = 14
    mem[484] = mem[210 len 14]
    mem[516] = arg1.length
    mem[ceil32(arg1.length) + 548] = arg2.length
    mem[ceil32(arg1.length) + 580 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 580] = 0
    require ext_code.size(0x1b424bfbf72bdb4f47639df6f779140ff3b7c6ca)
    delegate 0x1b424bfbf72bdb4f47639df6f779140ff3b7c6ca.0x8c60e815 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 160, 224, 288, ceil32(arg1.length) + 320, 3, 0, 14, mem[210 len 14], arg1.length, arg1[all], 0, mem[arg1.length + 580 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'invalid merkle proof'
    sub_d891ccb2 = uint64(sub_d891ccb2 + 1)
    require ext_code.size(4099)
    staticcall 0x1003.getSubmitter(uint64 rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[480 len arg1.length] = arg1[all]
    mem[arg1.length + 480] = 0
    mem[ceil32(arg1.length) + 480] = 0
    mem[ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 544] = 0
    mem[ceil32(arg1.length) + 576] = 0
    mem[ceil32(arg1.length) + 608] = 0
    mem[ceil32(arg1.length) + 832] = mem[596 len 1]
    mem[ceil32(arg1.length) + 864] = mem[597 len 8]
    require ext_code.size(4101)
    call 0x1005.addReward(address rg1, address rg2) with:
       value mem[605] wei
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0[mem[480]].field_0 = mem[480]
    stor0[mem[480]].field_256 = mem[512 len 4], Mask(128, 128, arg1.length) >> 128
    stor0[mem[480]].field_512 = uint128(arg1.length), mem[548 len 16]
    stor0[mem[480]].field_768 = mem[564]
    stor0[mem[480]].field_1024 = mem[ceil32(arg1.length) + 863 len 1]
    stor0[mem[480]].field_1032 = mem[ceil32(arg1.length) + 888 len 8]
    stor0[mem[480]].field_1280 = mem[605]
    emit 0xf8608cf3: mem[512 len 4], Mask(128, 128, arg1.length) >> 128, mem[480], uint128(arg1.length), mem[548 len 16], mem[564]
    return 1
}

function sub_ccb27f6a(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(4099)
    staticcall 0x1003.isHeaderSynced(uint64 rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'reference header is not synced'
    require ext_code.size(4102)
    staticcall 0x1006.isRelayer(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'the msg sender is not a relayer'
    if sub_4e4a70e6 != arg4:
        revert with 0, 'wrong refund sequence'
    if arg1.length != 74:
        revert with 0, 'wrong refund package size'
    require ext_code.size(4099)
    staticcall 0x1003.getAppHash(uint64 rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388] = 3
    mem[420] = 0
    mem[452] = 14
    mem[484] = mem[210 len 14]
    mem[516] = arg1.length
    mem[356] = ceil32(arg1.length) + 320
    mem[ceil32(arg1.length) + 548] = arg2.length
    mem[ceil32(arg1.length) + 580 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 580] = 0
    require ext_code.size(0x1b424bfbf72bdb4f47639df6f779140ff3b7c6ca)
    delegate 0x1b424bfbf72bdb4f47639df6f779140ff3b7c6ca.0x8c60e815 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 160, 224, 288, ceil32(arg1.length) + 320, 3, 0, 14, mem[210 len 14], arg1.length, arg1[all], 0, mem[arg1.length + 580 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'invalid merkle proof'
    sub_4e4a70e6 = uint64(sub_4e4a70e6 + 1)
    require ext_code.size(4099)
    staticcall 0x1003.getSubmitter(uint64 rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(4098)
    call 0x1002.claimRewards(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 2 * 10^15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(4098)
    call 0x1002.claimRewards(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, 8 * 10^15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len arg1.length] = arg1[all]
    mem[arg1.length + 384] = 0
    mem[ceil32(arg1.length) + 384] = 0
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 448] = 0
    mem[ceil32(arg1.length) + 480] = 0
    mem[ceil32(arg1.length) + 512] = mem[384 len 4], 0
    mem[ceil32(arg1.length) + 544] = 3, 0
    mem[ceil32(arg1.length) + 576] = 0
    mem[ceil32(arg1.length) + 608] = 0
    if not address(3, 0):
        if eth.balance(this.address) < mem[384 len 4], 0:
            emit 0x3c4b6baf: address(3, 0), 0, mem[384 len 4], 0, 0, eth.balance(this.address)
        else:
            call 0x0 with:
               value mem[384 len 4], 0 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0x5d287c29: address(3, 0), 0, mem[384 len 4], 0, 0
                return 1
            emit 0x3721ecc1: address(3, 0), 0, mem[384 len 4], 0, 0
    else:
        if not sub_9710e7f6[address(3, 0)]:
            emit 0xc9f4828e: address(3, 0), 0, mem[384 len 4], 0, 0
        else:
            mem[ceil32(arg1.length) + 644] = 0
            mem[ceil32(arg1.length) + 676] = mem[384 len 4], 0
            require ext_code.size(address(3, 0))
            call address(3, 0).0xa9059cbb with:
                 gas 50000 wei
                args 0, mem[384 len 4], 0
            if not ext_call.success:
                if not return_data.size:
                    mem[ceil32(arg1.length) + 736] = 0
                    emit 0x3721ecc1: address(3, 0), 0, mem[384 len 4], 0, 0
                    mem[ceil32(arg1.length) + 640] = address(3, 0)
                    mem[ceil32(arg1.length) + 672] = 64
                    mem[ceil32(arg1.length) + 704] = ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        mem[ceil32(arg1.length) + 736] = 0x6962630000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg1.length) + 768 len floor32(ext_call.return_data[0] - 1)] = 14, 0, 0, sub_d891ccb2, mem[206 len 18], 0, 0, 0, 0, arg1.length, mem[384 len 4], 3, 0, 14, mem[210 len 14], arg1.length, mem[548 len floor32(ext_call.return_data[0] - 1) - 388]
                    emit 0x72f6f8b6: address(3, 0), Array(len=ext_call.return_data[0], data=mem[ceil32(arg1.length) + 736 len ext_call.return_data[0]])
                else:
                    mem[ceil32(arg1.length) + 640] = return_data.size
                    mem[ceil32(arg1.length) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 737] = 0
                    emit 0x3721ecc1: address(3, 0), 0, mem[384 len 4], 0, 0
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 641] = address(3, 0)
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 673] = 64
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 705] = return_data.size
                    if return_data.size:
                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 737] = mem[ceil32(arg1.length) + 672 len 4], Mask(224, 32, mem[384 len 4], 0) >> 32
                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 769 len floor32(return_data.size - 1)] = mem[ceil32(arg1.length) + 704 len floor32(return_data.size - 1)]
                    emit 0x72f6f8b6: address(3, 0), Array(len=return_data.size, data=mem[ceil32(arg1.length) + ceil32(return_data.size) + 737 len return_data.size])
            else:
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    emit 0x5d287c29: address(3, 0), 0, mem[384 len 4], 0, 0
                    return 1
                mem[ceil32(arg1.length) + 644] = this.address
                require ext_code.size(address(3, 0))
                staticcall address(3, 0).0x70a08231 with:
                        gas 50000 wei
                       args this.address
                if ext_call.success:
                    require return_data.size >= 32
                    emit 0x3c4b6baf: address(3, 0), 0, mem[384 len 4], 0, 0, ext_call.return_data[0]
                else:
                    if not return_data.size:
                        mem[ceil32(arg1.length) + 736] = 0
                        emit 0x3721ecc1: address(3, 0), 0, mem[384 len 4], 0, 0
                        mem[ceil32(arg1.length) + 640] = address(3, 0)
                        mem[ceil32(arg1.length) + 672] = 64
                        mem[ceil32(arg1.length) + 704] = ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            mem[ceil32(arg1.length) + 736] = 0x6962630000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg1.length) + 768 len floor32(ext_call.return_data[0] - 1)] = 14, 0, 0, sub_d891ccb2, mem[206 len 18], 0, 0, 0, 0, arg1.length, mem[384 len 4], 3, 0, 14, mem[210 len 14], arg1.length, mem[548 len floor32(ext_call.return_data[0] - 1) - 388]
                        emit 0x72f6f8b6: address(3, 0), Array(len=ext_call.return_data[0], data=mem[ceil32(arg1.length) + 736 len ext_call.return_data[0]])
                    else:
                        mem[ceil32(arg1.length) + 640] = return_data.size
                        mem[ceil32(arg1.length) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 737] = 0
                        emit 0x3721ecc1: address(3, 0), 0, mem[384 len 4], 0, 0
                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 641] = address(3, 0)
                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 673] = 64
                        mem[ceil32(arg1.length) + ceil32(return_data.size) + 705] = return_data.size
                        if return_data.size:
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 737] = mem[ceil32(arg1.length) + 672 len 4], Mask(224, 32, mem[384 len 4], 0) >> 32
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 769 len floor32(return_data.size - 1)] = mem[ceil32(arg1.length) + 704 len floor32(return_data.size - 1)]
                        emit 0x72f6f8b6: address(3, 0), Array(len=return_data.size, data=mem[ceil32(arg1.length) + ceil32(return_data.size) + 737 len return_data.size])
    return 0
}

function approveBind(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[0] = mem[128]
    mem[32] = 0
    mem[ceil32(arg2.length) + 544] = stor0[mem[128]].field_1280
    if arg1 != stor0[mem[128]].field_256:
        revert with 0, 
                    32,
                    69,
                    0x1f636f6e74616374206164647265737320646f65736e277420657175616c20746f2074686520636f6e7472616374206164647265737320696e2062696e6420726571756573,
                    mem[ceil32(arg2.length) + 713 len 27]
    require ext_code.size(arg1)
    staticcall arg1.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    46,
                    0x6e6f6e6c79206572633230206f776e65722063616e20617070726f766520746869732062696e6420726571756573,
                    mem[ceil32(arg2.length) + 690 len 18]
    mem[ceil32(arg2.length) + 580] = msg.sender
    mem[ceil32(arg2.length) + 612] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor0[mem[128]].field_512 - stor0[mem[128]].field_768:
        revert with 0, 
                    32,
                    54,
                    0xc616c6c6f77616e636520646f65736e277420657175616c20746f2028746f74616c537570706c79202d207065676779416d6f756e74,
                    mem[ceil32(arg2.length) + 698 len 10]
    if stor0[mem[128]].field_1032 < block.timestamp:
        sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
        emit 0x4781c2d0: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
        stor0[mem[128]].field_0 = 0
        stor0[mem[128]].field_256 = 0
        stor0[mem[128]].field_512 = 0
        stor0[mem[128]].field_768 = 0
        stor0[mem[128]].field_1024 = 0
        stor0[mem[128]].field_1280 = 0
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 576] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 576
    require return_data.size >= 32
    _35 = mem[ceil32(arg2.length) + 576]
    require mem[ceil32(arg2.length) + 576] <= 4294967296
    require mem[ceil32(arg2.length) + 576] + 32 <= return_data.size
    require return_data.size >= mem[ceil32(arg2.length) + mem[ceil32(arg2.length) + 576] + 576] + mem[ceil32(arg2.length) + 576] + 32 and mem[ceil32(arg2.length) + mem[ceil32(arg2.length) + 576] + 576] <= 4294967296
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 576] = mem[ceil32(arg2.length) + mem[ceil32(arg2.length) + 576] + 576]
    _38 = mem[ceil32(arg2.length) + _35 + 576]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 608 len ceil32(mem[ceil32(arg2.length) + _35 + 576])] = mem[ceil32(arg2.length) + _35 + 608 len ceil32(mem[ceil32(arg2.length) + _35 + 576])]
    if not _38 % 32:
        idx = 0
        while idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]:
            require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
            if 97 <= uint8(mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608]) >> 248:
                require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
                if uint8(mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608]) >> 248 <= 122:
                    require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
                    require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
                    mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608 len 8] = Mask(8, -(12664759760331458874453076485325239921451404572804436691815673250865498554368, 0) + 256, 0) << (12664759760331458874453076485325239921451404572804436691815673250865498554368, 0) - 256
            idx = idx + 1
            continue 
        mem[_38 + ceil32(arg2.length) + ceil32(return_data.size) + 608] = 32
        mem[64] = _38 + ceil32(arg2.length) + ceil32(return_data.size) + 672
        mem[_38 + ceil32(arg2.length) + ceil32(return_data.size) + 640] = mem[128]
    else:
        mem[floor32(_38) + ceil32(arg2.length) + ceil32(return_data.size) + 608] = mem[floor32(_38) + ceil32(arg2.length) + ceil32(return_data.size) + -(_38 % 32) + 640 len _38 % 32]
        idx = 0
        while idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]:
            require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
            if 97 <= uint8(mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608]) >> 248:
                require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
                if uint8(mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608]) >> 248 <= 122:
                    require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
                    require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
                    mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608 len 8] = Mask(8, -(12664759760331458874453076485325239921451404572804436691815673250865498554368, 0) + 256, 0) << (12664759760331458874453076485325239921451404572804436691815673250865498554368, 0) - 256
            idx = idx + 1
            continue 
        mem[floor32(_38) + ceil32(arg2.length) + ceil32(return_data.size) + 640] = 32
        mem[64] = floor32(_38) + ceil32(arg2.length) + ceil32(return_data.size) + 704
        mem[floor32(_38) + ceil32(arg2.length) + ceil32(return_data.size) + 672] = mem[128]
    idx = 0
    while idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]:
        require idx < 32
        require idx < mem[ceil32(arg2.length) + ceil32(return_data.size) + 576]
        if not Mask(8, 248, mem[idx + ceil32(arg2.length) + ceil32(return_data.size) + 608]):
            idx = idx + 1
            continue 
        stor0[mem[128]].field_0 = 0
        stor0[mem[128]].field_256 = 0
        stor0[mem[128]].field_512 = 0
        stor0[mem[128]].field_768 = 0
        stor0[mem[128]].field_1024 = 0
        stor0[mem[128]].field_1280 = 0
        sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
        emit 0x2117f993: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
        return 0
    if sub_66be7945[stor0[mem[128]].field_0]:
        stor0[mem[128]].field_0 = 0
        stor0[mem[128]].field_256 = 0
        stor0[mem[128]].field_512 = 0
        stor0[mem[128]].field_768 = 0
        stor0[mem[128]].field_1024 = 0
        stor0[mem[128]].field_1280 = 0
        sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
        emit 0x2117f993: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
        return 0
    if sub_9710e7f6[stor0[mem[128]].field_256]:
        stor0[mem[128]].field_0 = 0
        stor0[mem[128]].field_256 = 0
        stor0[mem[128]].field_512 = 0
        stor0[mem[128]].field_768 = 0
        stor0[mem[128]].field_1024 = 0
        stor0[mem[128]].field_1280 = 0
        sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
        emit 0x2117f993: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
        return 0
    require ext_code.size(stor0[mem[128]].field_256)
    staticcall stor0[mem[128]].field_256.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor0[mem[128]].field_512:
        stor0[mem[128]].field_0 = 0
        stor0[mem[128]].field_256 = 0
        stor0[mem[128]].field_512 = 0
        stor0[mem[128]].field_768 = 0
        stor0[mem[128]].field_1024 = 0
        stor0[mem[128]].field_1280 = 0
        sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
        emit 0x2117f993: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
        return 0
    if ext_call.return_data[0] != stor0[mem[128]].field_1024:
        stor0[mem[128]].field_0 = 0
        stor0[mem[128]].field_256 = 0
        stor0[mem[128]].field_512 = 0
        stor0[mem[128]].field_768 = 0
        stor0[mem[128]].field_1024 = 0
        stor0[mem[128]].field_1280 = 0
        sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
        emit 0x2117f993: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0
        return 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, stor0[mem[128]].field_512 - stor0[mem[128]].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_9710e7f6[stor0[mem[128]].field_256] = stor0[mem[128]].field_0
    sub_9bb3357a[stor0[mem[128]].field_256].field_0 = stor0[mem[128]].field_1024
    sub_9bb3357a[stor0[mem[128]].field_256].field_8 = 0
    sub_66be7945[stor0[mem[128]].field_0] = stor0[mem[128]].field_256
    stor0[mem[128]].field_0 = 0
    stor0[mem[128]].field_256 = 0
    stor0[mem[128]].field_512 = 0
    stor0[mem[128]].field_768 = 0
    stor0[mem[128]].field_1024 = 0
    stor0[mem[128]].field_1280 = 0
    sub_716c9dd5 = uint64(sub_716c9dd5 + 1)
    emit 0x8005b935: sub_716c9dd5, stor0[mem[128]].field_256, stor0[mem[128]].field_0, stor0[mem[128]].field_512, stor0[mem[128]].field_768, ext_call.return_data[0]
    return 1
}

function sub_053799cf(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294c656e677468206f6620726563697069656e74416464727320646f65736e277420657175616c20746f206c656e677468206f6620616d6f756e74,
                    mem[223 len 5]
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x654c656e677468206f6620726563697069656e74416464727320646f65736e277420657175616c20746f206c656e677468206f6620726566756e6441646472,
                    mem[227 len 1]
    require ('cd', 36).length
    if cd[164] / ('cd', 36).length < 10^16:
        revert with 0, 'relayFee is too little'
    if cd[164] % 10^10:
        revert with 0, 'relayFee must be N*10^10'
    if cd[132] < block.timestamp + 120:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe65787069726554696d65206d7573742062652074776f206d696e75746573206c617465,
                    mem[200 len 28]
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        idx = idx + 1
        s = cd[((32 * idx) + cd[36] + 36)] + s
        continue 
    mem[96] = ('cd', 36).length
    if not ('cd', 36).length:
        if not address(cd[100]):
            idx = 0
            while ('cd', 36).length > uint8(idx):
                require uint8(idx) < ('cd', 36).length
                if cd[((32 * uint8(idx)) + cd[36] + 36)] % 10^10:
                    revert with 0, 'invalid transfer amount'
                require uint8(idx) < ('cd', 36).length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + cd[36] + 36)] / 10^10
                idx = idx + 1
                continue 
            if (cd[((32 * ('cd', 36).length) + cd[36] + 36)] * ('cd', 36).length) + cd[164] != msg.value:
                revert with 0, 
                            32,
                            76,
                            0x74726563656976656420424e4220616d6f756e7420646f65736e277420657175616c20746f207468652073756d206f66207472616e7366657220616d6f756e7420616e642072656c61794665,
                            mem[(32 * ('cd', 36).length) + 272 len 20]
            mem[(32 * ('cd', 36).length) + 128] = sub_bd038949
            mem[(32 * ('cd', 36).length) + 192] = address(cd[100])
            mem[(32 * ('cd', 36).length) + 224] = 0x424e420000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + 256] = cd[132]
            mem[(32 * ('cd', 36).length) + 288] = cd[164] / 10^10
            mem[(32 * ('cd', 36).length) + 160] = 192
            mem[(32 * ('cd', 36).length) + 320] = mem[96]
            mem[(32 * ('cd', 36).length) + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            emit 0xa18f0343: sub_d891ccb2, 192, address(cd[100]), 0x424e420000000000000000000000000000000000000000000000000000000000, cd[132], cd[164] / 10^10, mem[(32 * ('cd', 36).length) + 320 len (32 * mem[96]) + 32]
        else:
            idx = 0
            while idx < ('cd', 36).length:
                require 10^sub_9bb3357a[address(cd[100])].field_0
                if 100 * 10^6 * cd[((32 * idx) + cd[36] + 36)] % 10^sub_9bb3357a[address(cd[100])].field_0:
                    revert with 0, 'invalid transfer amount'
                require idx < ('cd', 36).length
                require 10^sub_9bb3357a[address(cd[100])].field_0
                if 100 * 10^6 * cd[((32 * idx) + cd[36] + 36)] / 10^sub_9bb3357a[address(cd[100])].field_0 > 25 * 10^14 * 3600:
                    revert with 0, 
                                32,
                                35,
                                0x94616d6f756e7420697320746f6f206c617267652c20696e743634206f766572666c6f,
                                mem[(32 * ('cd', 36).length) + 231 len 29]
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = 100 * 10^6 * cd[((32 * idx) + cd[36] + 36)] / 10^sub_9bb3357a[address(cd[100])].field_0
                idx = idx + 1
                continue 
            if not sub_9710e7f6[address(cd[100])]:
                revert with 0, 
                            32,
                            48,
                            0x7374686520636f6e747261637420686173206e6f74206265656e2062696e6420746f20616e79206265703220746f6b65,
                            mem[(32 * ('cd', 36).length) + 244 len 16]
            if cd[164] != msg.value:
                revert with 0, 
                            32,
                            45,
                            0x73726563656976656420424e4220616d6f756e7420646f65736e277420657175616c20746f2072656c61794665,
                            mem[(32 * ('cd', 36).length) + 241 len 19]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[((32 * ('cd', 36).length) + cd[36] + 36)] * ('cd', 36).length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + 256] = cd[132]
            mem[(32 * ('cd', 36).length) + 288] = cd[164] / 10^10
            mem[(32 * ('cd', 36).length) + 320] = ('cd', 36).length
            mem[(32 * ('cd', 36).length) + 352 len floor32(('cd', 36).length)] = mem[128 len floor32(('cd', 36).length)]
            emit 0xa18f0343: sub_d891ccb2, Array(len=('cd', 36).length, data=mem[128 len floor32(('cd', 36).length)], mem[(32 * ('cd', 36).length) + floor32(('cd', 36).length) + 352 len (32 * ('cd', 36).length) - floor32(('cd', 36).length)]), address(cd[100]), sub_9710e7f6[address(cd[100])], cd[132], cd[164] / 10^10
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if not address(cd[100]):
            idx = 0
            while ('cd', 36).length > uint8(idx):
                require uint8(idx) < ('cd', 36).length
                if cd[((32 * uint8(idx)) + cd[36] + 36)] % 10^10:
                    revert with 0, 'invalid transfer amount'
                require uint8(idx) < ('cd', 36).length
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = cd[((32 * uint8(idx)) + cd[36] + 36)] / 10^10
                idx = idx + 1
                continue 
            if (cd[((32 * ('cd', 36).length) + cd[36] + 36)] * ('cd', 36).length) + cd[164] != msg.value:
                revert with 0, 
                            32,
                            76,
                            0x74726563656976656420424e4220616d6f756e7420646f65736e277420657175616c20746f207468652073756d206f66207472616e7366657220616d6f756e7420616e642072656c61794665,
                            mem[(32 * ('cd', 36).length) + 272 len 20]
            mem[(32 * ('cd', 36).length) + 128] = sub_bd038949
            mem[(32 * ('cd', 36).length) + 192] = address(cd[100])
            mem[(32 * ('cd', 36).length) + 224] = 0x424e420000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + 256] = cd[132]
            mem[(32 * ('cd', 36).length) + 288] = cd[164] / 10^10
            mem[(32 * ('cd', 36).length) + 160] = 192
            mem[(32 * ('cd', 36).length) + 320] = mem[96]
            mem[(32 * ('cd', 36).length) + 352 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            var32001 = floor32(mem[96])
            emit 0xa18f0343: sub_d891ccb2, 192, address(cd[100]), 0x424e420000000000000000000000000000000000000000000000000000000000, cd[132], cd[164] / 10^10, mem[(32 * ('cd', 36).length) + 320 len (32 * mem[96]) + 32]
        else:
            idx = 0
            while idx < ('cd', 36).length:
                require 10^sub_9bb3357a[address(cd[100])].field_0
                if 100 * 10^6 * cd[((32 * idx) + cd[36] + 36)] % 10^sub_9bb3357a[address(cd[100])].field_0:
                    revert with 0, 'invalid transfer amount'
                require idx < ('cd', 36).length
                require 10^sub_9bb3357a[address(cd[100])].field_0
                if 100 * 10^6 * cd[((32 * idx) + cd[36] + 36)] / 10^sub_9bb3357a[address(cd[100])].field_0 > 25 * 10^14 * 3600:
                    revert with 0, 
                                32,
                                35,
                                0x94616d6f756e7420697320746f6f206c617267652c20696e743634206f766572666c6f,
                                mem[(32 * ('cd', 36).length) + 231 len 29]
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = 100 * 10^6 * cd[((32 * idx) + cd[36] + 36)] / 10^sub_9bb3357a[address(cd[100])].field_0
                idx = idx + 1
                continue 
            if not sub_9710e7f6[address(cd[100])]:
                revert with 0, 
                            32,
                            48,
                            0x7374686520636f6e747261637420686173206e6f74206265656e2062696e6420746f20616e79206265703220746f6b65,
                            mem[(32 * ('cd', 36).length) + 244 len 16]
            if cd[164] != msg.value:
                revert with 0, 
                            32,
                            45,
                            0x73726563656976656420424e4220616d6f756e7420646f65736e277420657175616c20746f2072656c61794665,
                            mem[(32 * ('cd', 36).length) + 241 len 19]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[((32 * ('cd', 36).length) + cd[36] + 36)] * ('cd', 36).length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + 256] = cd[132]
            mem[(32 * ('cd', 36).length) + 288] = cd[164] / 10^10
            mem[(32 * ('cd', 36).length) + 320] = ('cd', 36).length
            mem[(32 * ('cd', 36).length) + 352 len floor32(('cd', 36).length)] = mem[128 len floor32(('cd', 36).length)]
            emit 0xa18f0343: sub_d891ccb2, Array(len=('cd', 36).length, data=mem[128 len floor32(('cd', 36).length)], mem[(32 * ('cd', 36).length) + floor32(('cd', 36).length) + 352 len (32 * ('cd', 36).length) - floor32(('cd', 36).length)]), address(cd[100]), sub_9710e7f6[address(cd[100])], cd[132], cd[164] / 10^10
    sub_bd038949 = uint64(sub_bd038949 + 1)
    mem[(32 * ('cd', 36).length) + 256 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + floor32(('cd', 4).length) + 256] = ('cd', 68).length
    emit 0x8740bbd4: sub_d891ccb2, Array(len=('cd', 4).length, data=mem[(32 * ('cd', 36).length) + 256 len floor32(('cd', 4).length) + 32], call.data[cd[68] + 36 len floor32(('cd', 68).length)]), floor32(('cd', 4).length) + 128
    return 1
}



}
