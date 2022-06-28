contract main {




// =====================  Runtime code  =====================


#
#  - sub_e5771e59(?)
#
address storageAddress;
mapping of struct sub_fa194dcb;
uint256 stor2;
uint256 sub_3fc9a06b;
address tokenAddress;
address stor6;

function getStorage() payable {
    return storageAddress
}

function sub_3fc9a06b(?) payable {
    return sub_3fc9a06b
}

function sub_fa194dcb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_fa194dcb[arg1].field_0 >= 9:
        revert with 'NH{q', 33
    return sub_fa194dcb[arg1].field_0, 
           bool(sub_fa194dcb[arg1].field_8),
           sub_fa194dcb[arg1].field_256,
           sub_fa194dcb[arg1].field_512,
           sub_fa194dcb[arg1].field_768,
           sub_fa194dcb[arg1].field_1024,
           sub_fa194dcb[arg1].field_1280,
           sub_fa194dcb[arg1].field_1536,
           sub_fa194dcb[arg1].field_1792,
           sub_fa194dcb[arg1].field_2048,
           sub_fa194dcb[arg1].field_2304,
           sub_fa194dcb[arg1].field_2560,
           sub_fa194dcb[arg1].field_2816,
           sub_fa194dcb[arg1].field_3072,
           sub_fa194dcb[arg1].field_3328,
           sub_fa194dcb[arg1].field_3584,
           sub_fa194dcb[arg1].field_3840
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_b3364ac9(?) payable {
    require ext_code.size(storageAddress)
    call storageAddress.0x571f24c2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6adfa56a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller not the Owner'
    sub_3fc9a06b = arg1
}

function sub_40643e0f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x40643e0f with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getPerformance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x47625694 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool(ceil32(return_data.size) + 864 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 9
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 64 >= 384
    if not bool(ceil32(return_data.size) + 1248 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == ext_call.return_data[512]
    if ext_call.return_data[0] >= 9:
        revert with 'NH{q', 33
    return ext_call.return_data[0], 
           bool(ext_call.return_data[32]),
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288],
           ext_call.return_data[320],
           ext_call.return_data[352],
           ext_call.return_data[384],
           ext_call.return_data[416],
           ext_call.return_data[448],
           ext_call.return_data[480],
           ext_call.return_data[512]
}

function sub_5a899135(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x47625694 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 9
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 64 >= 384
    if not bool(ceil32(return_data.size) + 672 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == ext_call.return_data[512]
    if not ext_call.return_data[32]:
        sub_fa194dcb[arg1].field_0 = 4
        sub_fa194dcb[arg1].field_8 = 1
        sub_fa194dcb[arg1].field_256 = arg1
        sub_fa194dcb[arg1].field_512 = 1
        sub_fa194dcb[arg1].field_768 = 1
        sub_fa194dcb[arg1].field_1024 = 0
        sub_fa194dcb[arg1].field_1280 = 0
        sub_fa194dcb[arg1].field_1536 = 0
        sub_fa194dcb[arg1].field_1792 = 0
        sub_fa194dcb[arg1].field_2048 = 0
        sub_fa194dcb[arg1].field_2304 = 0
        sub_fa194dcb[arg1].field_2560 = 0
        sub_fa194dcb[arg1].field_2816 = arg2
        sub_fa194dcb[arg1].field_3072 = arg3
        sub_fa194dcb[arg1].field_3328 = 0
        sub_fa194dcb[arg1].field_3584 = 0
        sub_fa194dcb[arg1].field_3840 = 0
        if sub_fa194dcb[arg1].field_0 >= 9:
            revert with 'NH{q', 33
        require ext_code.size(storageAddress)
        call storageAddress.0x9b203f21 with:
             gas gas_remaining wei
            args arg1, sub_fa194dcb[arg1].field_0, bool(sub_fa194dcb[arg1].field_8), sub_fa194dcb[arg1].field_256, sub_fa194dcb[arg1].field_512, sub_fa194dcb[arg1].field_768, sub_fa194dcb[arg1].field_1024, sub_fa194dcb[arg1].field_1280, sub_fa194dcb[arg1].field_1536, sub_fa194dcb[arg1].field_1792, sub_fa194dcb[arg1].field_2048, sub_fa194dcb[arg1].field_2304, sub_fa194dcb[arg1].field_2560, sub_fa194dcb[arg1].field_2816, sub_fa194dcb[arg1].field_3072, sub_fa194dcb[arg1].field_3328, sub_fa194dcb[arg1].field_3584, sub_fa194dcb[arg1].field_3840
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9284e765(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x9284e76500000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x9284e765 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (544 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 544
        _49 = mem[64]
        if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 256
        require mem[s] < 2
        mem[_49] = mem[s]
        require mem[s + 32] < 2
        mem[_49 + 32] = mem[s + 32]
        require mem[s + 64] < 5
        mem[_49 + 64] = mem[s + 64]
        require mem[s + 96] < 9
        mem[_49 + 96] = mem[s + 96]
        require mem[s + 128] < 9
        mem[_49 + 128] = mem[s + 128]
        require mem[s + 160] < 9
        mem[_49 + 160] = mem[s + 160]
        require return_data.size + -s - 96 >= 320
        _63 = mem[64]
        if mem[64] + 320 > test266151307() or mem[64] + 320 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 320
        require mem[s + 192] == mem[s + 192]
        mem[_63] = mem[s + 192]
        require mem[s + 224] == mem[s + 224]
        mem[_63 + 32] = mem[s + 224]
        require mem[s + 256] == mem[s + 256]
        mem[_63 + 64] = mem[s + 256]
        require mem[s + 288] == mem[s + 288]
        mem[_63 + 96] = mem[s + 288]
        require mem[s + 320] == mem[s + 320]
        mem[_63 + 128] = mem[s + 320]
        require mem[s + 352] == mem[s + 352]
        mem[_63 + 160] = mem[s + 352]
        require mem[s + 384] == mem[s + 384]
        mem[_63 + 192] = mem[s + 384]
        require mem[s + 416] == mem[s + 416]
        mem[_63 + 224] = mem[s + 416]
        require mem[s + 448] == mem[s + 448]
        mem[_63 + 256] = mem[s + 448]
        require mem[s + 480] == mem[s + 480]
        mem[_63 + 288] = mem[s + 480]
        mem[_49 + 192] = _63
        require mem[s + 512] == bool(mem[s + 512])
        mem[_49 + 224] = mem[s + 512]
        mem[t] = _49
        idx = idx + 1
        s = s + 544
        t = t + 32
        continue 
    _48 = mem[64]
    mem[mem[64]] = 32
    _50 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _50:
        _89 = mem[s]
        if mem[mem[s]] >= 2:
            revert with 'NH{q', 33
        mem[t] = mem[mem[s]]
        if mem[_89 + 32] >= 2:
            revert with 'NH{q', 33
        mem[t + 32] = mem[_89 + 32]
        if mem[_89 + 64] >= 5:
            revert with 'NH{q', 33
        mem[t + 64] = mem[_89 + 64]
        if mem[_89 + 96] >= 9:
            revert with 'NH{q', 33
        mem[t + 96] = mem[_89 + 96]
        if mem[_89 + 128] >= 9:
            revert with 'NH{q', 33
        mem[t + 128] = mem[_89 + 128]
        if mem[_89 + 160] >= 9:
            revert with 'NH{q', 33
        mem[t + 160] = mem[_89 + 160]
        _97 = mem[_89 + 192]
        mem[t + 192] = mem[mem[_89 + 192]]
        mem[t + 224] = mem[_97 + 32]
        mem[t + 256] = mem[_97 + 64]
        mem[t + 288] = mem[_97 + 96]
        mem[t + 320] = mem[_97 + 128]
        mem[t + 352] = mem[_97 + 160]
        mem[t + 384] = mem[_97 + 192]
        mem[t + 416] = mem[_97 + 224]
        mem[t + 448] = mem[_97 + 256]
        mem[t + 480] = mem[_97 + 288]
        mem[t + 512] = bool(mem[_89 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 544
        continue 
    return memory
      from mem[64]
       len _48 + (544 * _50) + -mem[64] + 64
}

function getStake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[288] = 352
    mem[320] = 0
    mem[672] = 0x9284e76500000000000000000000000000000000000000000000000000000000
    mem[676] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0x9284e765 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 672
    require return_data.size >= 32
    _6 = mem[672 len 4], address(arg1) << 64
    require mem[672 len 4], address(arg1) << 64 <= test266151307()
    require mem[672 len 4], address(arg1) << 64 + 703 < return_data.size + 672
    _7 = mem[mem[672 len 4], address(arg1) << 64 + 672]
    if mem[mem[672 len 4], address(arg1) << 64 + 672] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[672 len 4], address(arg1) << 64 + 672]) + 673 > test266151307() or floor32(mem[mem[672 len 4], address(arg1) << 64 + 672]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[672 len 4], address(arg1) << 64 + 672]) + 673
    mem[ceil32(return_data.size) + 672] = mem[mem[672 len 4], address(arg1) << 64 + 672]
    require _6 + (544 * _7) + 32 <= return_data.size
    idx = 0
    s = _6 + 704
    t = ceil32(return_data.size) + 704
    while idx < _7:
        require return_data.size + -s + 672 >= 544
        _52 = mem[64]
        if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 256
        require mem[s] < 2
        mem[_52] = mem[s]
        require mem[s + 32] < 2
        mem[_52 + 32] = mem[s + 32]
        require mem[s + 64] < 5
        mem[_52 + 64] = mem[s + 64]
        require mem[s + 96] < 9
        mem[_52 + 96] = mem[s + 96]
        require mem[s + 128] < 9
        mem[_52 + 128] = mem[s + 128]
        require mem[s + 160] < 9
        mem[_52 + 160] = mem[s + 160]
        require return_data.size + -s + 480 >= 320
        _65 = mem[64]
        if mem[64] + 320 > test266151307() or mem[64] + 320 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 320
        require mem[s + 192] == mem[s + 192]
        mem[_65] = mem[s + 192]
        require mem[s + 224] == mem[s + 224]
        mem[_65 + 32] = mem[s + 224]
        require mem[s + 256] == mem[s + 256]
        mem[_65 + 64] = mem[s + 256]
        require mem[s + 288] == mem[s + 288]
        mem[_65 + 96] = mem[s + 288]
        require mem[s + 320] == mem[s + 320]
        mem[_65 + 128] = mem[s + 320]
        require mem[s + 352] == mem[s + 352]
        mem[_65 + 160] = mem[s + 352]
        require mem[s + 384] == mem[s + 384]
        mem[_65 + 192] = mem[s + 384]
        require mem[s + 416] == mem[s + 416]
        mem[_65 + 224] = mem[s + 416]
        require mem[s + 448] == mem[s + 448]
        mem[_65 + 256] = mem[s + 448]
        require mem[s + 480] == mem[s + 480]
        mem[_65 + 288] = mem[s + 480]
        mem[_52 + 192] = _65
        require mem[s + 512] == bool(mem[s + 512])
        mem[_52 + 224] = mem[s + 512]
        mem[t] = _52
        idx = idx + 1
        s = s + 544
        t = t + 32
        continue 
    if arg2 >= mem[ceil32(return_data.size) + 672]:
        revert with 'NH{q', 50
    _51 = mem[(32 * arg2) + ceil32(return_data.size) + 704]
    if mem[mem[(32 * arg2) + ceil32(return_data.size) + 704]] >= 2:
        revert with 'NH{q', 33
    mem[mem[64]] = mem[mem[(32 * arg2) + ceil32(return_data.size) + 704]]
    if mem[_51 + 32] >= 2:
        revert with 'NH{q', 33
    mem[mem[64] + 32] = mem[_51 + 32]
    if mem[_51 + 64] >= 5:
        revert with 'NH{q', 33
    mem[mem[64] + 64] = mem[_51 + 64]
    if mem[_51 + 96] >= 9:
        revert with 'NH{q', 33
    mem[mem[64] + 96] = mem[_51 + 96]
    if mem[_51 + 128] >= 9:
        revert with 'NH{q', 33
    mem[mem[64] + 128] = mem[_51 + 128]
    if mem[_51 + 160] >= 9:
        revert with 'NH{q', 33
    mem[mem[64] + 160] = mem[_51 + 160]
    _69 = mem[_51 + 192]
    mem[mem[64] + 192] = mem[mem[_51 + 192]]
    mem[mem[64] + 224] = mem[_69 + 32]
    mem[mem[64] + 256] = mem[_69 + 64]
    mem[mem[64] + 288] = mem[_69 + 96]
    mem[mem[64] + 320] = mem[_69 + 128]
    mem[mem[64] + 352] = mem[_69 + 160]
    mem[mem[64] + 384] = mem[_69 + 192]
    mem[mem[64] + 416] = mem[_69 + 224]
    mem[mem[64] + 448] = mem[_69 + 256]
    mem[mem[64] + 480] = mem[_69 + 288]
    mem[mem[64] + 512] = bool(mem[_51 + 224])
    return memory
      from mem[64]
       len 544
}

function sub_a04da9f5(?) payable {
    require calldata.size - 4 >= 544
    require arg1 < 2
    require arg2 < 2
    require arg3 < 5
    require arg4 < 9
    require arg5 < 9
    require arg6 < 9
    require calldata.size - 196 >= 320
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg13 == arg13
    require arg14 == arg14
    require arg15 == arg15
    require arg16 == arg16
    require arg17 == bool(arg17)
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x8b18c7e3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Not a Logic contract'
    if arg7 <= block.timestamp:
        revert with 0, 'Time In the past'
    if not sub_3fc9a06b:
        revert with 0, 'Stake Paused'
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x40643e0f with:
            gas gas_remaining wei
           args msg.sender, arg12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0]:
        revert with 0, 'Already Staked on this Event'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg9:
        revert with 3561700450
    if arg1 >= 2:
        revert with 'NH{q', 33
    if arg2 >= 2:
        revert with 'NH{q', 33
    if arg3 >= 5:
        revert with 'NH{q', 33
    if arg4 >= 9:
        revert with 'NH{q', 33
    if arg5 >= 9:
        revert with 'NH{q', 33
    if arg6 >= 9:
        revert with 'NH{q', 33
    require ext_code.size(storageAddress)
    call storageAddress.0xff65376c with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, bool(arg17)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor6, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(storageAddress)
    staticcall storageAddress.0xdb9bdc15 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(storageAddress)
    call storageAddress.0xfec14687 with:
         gas gas_remaining wei
        args msg.sender, arg12, 1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(storageAddress)
    call storageAddress.0xdb7d48f2 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x47625694 with:
            gas gas_remaining wei
           args arg12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool((8 * ceil32(return_data.size)) + 992 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 9
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 64 >= 384
    if not bool((8 * ceil32(return_data.size)) + 1376 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == ext_call.return_data[512]
    if not ext_call.return_data[32]:
        sub_fa194dcb[arg12].field_0 = 4
        sub_fa194dcb[arg12].field_8 = 1
        sub_fa194dcb[arg12].field_256 = arg12
        sub_fa194dcb[arg12].field_512 = 1
        sub_fa194dcb[arg12].field_768 = 1
        sub_fa194dcb[arg12].field_1024 = 0
        sub_fa194dcb[arg12].field_1280 = 0
        sub_fa194dcb[arg12].field_1536 = 0
        sub_fa194dcb[arg12].field_1792 = 0
        sub_fa194dcb[arg12].field_2048 = 0
        sub_fa194dcb[arg12].field_2304 = 0
        sub_fa194dcb[arg12].field_2560 = 0
        sub_fa194dcb[arg12].field_2816 = arg10
        sub_fa194dcb[arg12].field_3072 = arg11
        sub_fa194dcb[arg12].field_3328 = 0
        sub_fa194dcb[arg12].field_3584 = 0
        sub_fa194dcb[arg12].field_3840 = 0
        if sub_fa194dcb[arg12].field_0 >= 9:
            revert with 'NH{q', 33
        require ext_code.size(storageAddress)
        call storageAddress.0x9b203f21 with:
             gas gas_remaining wei
            args arg12, sub_fa194dcb[arg12].field_0, bool(sub_fa194dcb[arg12].field_8), sub_fa194dcb[arg12].field_256, sub_fa194dcb[arg12].field_512, sub_fa194dcb[arg12].field_768, sub_fa194dcb[arg12].field_1024, sub_fa194dcb[arg12].field_1280, sub_fa194dcb[arg12].field_1536, sub_fa194dcb[arg12].field_1792, sub_fa194dcb[arg12].field_2048, sub_fa194dcb[arg12].field_2304, sub_fa194dcb[arg12].field_2560, sub_fa194dcb[arg12].field_2816, sub_fa194dcb[arg12].field_3072, sub_fa194dcb[arg12].field_3328, sub_fa194dcb[arg12].field_3584, sub_fa194dcb[arg12].field_3840
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_52f00595(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x8b18c7e3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Not a Logic contract'
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x47625694 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 9
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 64 >= 384
    if not bool((2 * ceil32(return_data.size)) + 672 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == ext_call.return_data[512]
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 8:
            revert with 'NH{q', 33
        if ext_call.return_data[0] == 4:
            if block.timestamp > -7201:
                revert with 'NH{q', 17
            if ext_call.return_data[224] < block.timestamp + (2 * 3600):
                require ext_code.size(storageAddress)
                if arg2 > arg3:
                    if arg4 > arg5:
                        call storageAddress.0x9b203f21 with:
                             gas gas_remaining wei
                            args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], 0, 0
                    else:
                        if arg4 < arg5:
                            call storageAddress.0x9b203f21 with:
                                 gas gas_remaining wei
                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], 1, 0
                        else:
                            if arg4 == arg5:
                                call storageAddress.0x9b203f21 with:
                                     gas gas_remaining wei
                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, 2, 0
                            else:
                                if not ext_call.return_data[480]:
                                    call storageAddress.0x9b203f21 with:
                                         gas gas_remaining wei
                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], ext_call.return_data[480], 0
                                else:
                                    if ext_call.return_data[480] == 1:
                                        call storageAddress.0x9b203f21 with:
                                             gas gas_remaining wei
                                            args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], ext_call.return_data[480], 0
                                    else:
                                        if ext_call.return_data[480] != 2:
                                            call storageAddress.0x9b203f21 with:
                                                 gas gas_remaining wei
                                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], 0, ext_call.return_data[480], 0
                                        else:
                                            call storageAddress.0x9b203f21 with:
                                                 gas gas_remaining wei
                                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, ext_call.return_data[480], 0
                else:
                    if arg2 < arg3:
                        if arg4 > arg5:
                            call storageAddress.0x9b203f21 with:
                                 gas gas_remaining wei
                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], 0, 1
                        else:
                            if arg4 < arg5:
                                call storageAddress.0x9b203f21 with:
                                     gas gas_remaining wei
                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], 1, 1
                            else:
                                if arg4 == arg5:
                                    call storageAddress.0x9b203f21 with:
                                         gas gas_remaining wei
                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, 2, 1
                                else:
                                    if not ext_call.return_data[480]:
                                        call storageAddress.0x9b203f21 with:
                                             gas gas_remaining wei
                                            args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], ext_call.return_data[480], 1
                                    else:
                                        if ext_call.return_data[480] == 1:
                                            call storageAddress.0x9b203f21 with:
                                                 gas gas_remaining wei
                                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], ext_call.return_data[480], 1
                                        else:
                                            if ext_call.return_data[480] != 2:
                                                call storageAddress.0x9b203f21 with:
                                                     gas gas_remaining wei
                                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], 0, ext_call.return_data[480], 1
                                            else:
                                                call storageAddress.0x9b203f21 with:
                                                     gas gas_remaining wei
                                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, ext_call.return_data[480], 1
                    else:
                        if arg2 != arg3:
                            if arg4 > arg5:
                                call storageAddress.0x9b203f21 with:
                                     gas gas_remaining wei
                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], 0, ext_call.return_data[512]
                            else:
                                if arg4 < arg5:
                                    call storageAddress.0x9b203f21 with:
                                         gas gas_remaining wei
                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], 1, ext_call.return_data[512]
                                else:
                                    if arg4 == arg5:
                                        call storageAddress.0x9b203f21 with:
                                             gas gas_remaining wei
                                            args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, 2, ext_call.return_data[512]
                                    else:
                                        if not ext_call.return_data[480]:
                                            call storageAddress.0x9b203f21 with:
                                                 gas gas_remaining wei
                                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], ext_call.return_data[480], ext_call.return_data[512]
                                        else:
                                            if ext_call.return_data[480] == 1:
                                                call storageAddress.0x9b203f21 with:
                                                     gas gas_remaining wei
                                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], ext_call.return_data[480], ext_call.return_data[512]
                                            else:
                                                if ext_call.return_data[480] != 2:
                                                    call storageAddress.0x9b203f21 with:
                                                         gas gas_remaining wei
                                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], 0, ext_call.return_data[480], ext_call.return_data[512]
                                                else:
                                                    call storageAddress.0x9b203f21 with:
                                                         gas gas_remaining wei
                                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, ext_call.return_data[480], ext_call.return_data[512]
                        else:
                            if arg4 > arg5:
                                call storageAddress.0x9b203f21 with:
                                     gas gas_remaining wei
                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], 0, 2
                            else:
                                if arg4 < arg5:
                                    call storageAddress.0x9b203f21 with:
                                         gas gas_remaining wei
                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], 1, 2
                                else:
                                    if arg4 == arg5:
                                        call storageAddress.0x9b203f21 with:
                                             gas gas_remaining wei
                                            args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, 2, 2
                                    else:
                                        if not ext_call.return_data[480]:
                                            call storageAddress.0x9b203f21 with:
                                                 gas gas_remaining wei
                                                args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[384], ext_call.return_data[480], 2
                                        else:
                                            if ext_call.return_data[480] == 1:
                                                call storageAddress.0x9b203f21 with:
                                                     gas gas_remaining wei
                                                    args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], ext_call.return_data[416], ext_call.return_data[480], 2
                                            else:
                                                if ext_call.return_data[480] != 2:
                                                    call storageAddress.0x9b203f21 with:
                                                         gas gas_remaining wei
                                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], 0, ext_call.return_data[480], 2
                                                else:
                                                    call storageAddress.0x9b203f21 with:
                                                         gas gas_remaining wei
                                                        args arg1, 3, bool(ext_call.return_data[32]), ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128], arg4, arg5, ext_call.return_data[224], ext_call.return_data[256], ext_call.return_data[288], arg2, arg3, ext_call.return_data[384], ext_call.return_data[416], stor2, ext_call.return_data[480], 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x893d20e8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, 10 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ce62a63e(?) payable {
    require calldata.size - 4 >= 576
    require arg1 == arg1
    require calldata.size - 36 >= 544
    require arg2 < 2
    require arg3 < 2
    require arg4 < 5
    require arg5 < 9
    require arg6 < 9
    require arg7 < 9
    require calldata.size - 228 >= 320
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg13 == arg13
    require arg14 == arg14
    require arg15 == arg15
    require arg16 == arg16
    require arg17 == arg17
    require arg18 == bool(arg18)
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x8b18c7e3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Not a Logic contract'
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x47625694 with:
            gas gas_remaining wei
           args arg13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool((2 * ceil32(return_data.size)) + 864 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 9
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 64 >= 384
    if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == ext_call.return_data[512]
    if arg4 > 4:
        revert with 'NH{q', 33
    if arg4 != 2:
        if arg2 >= 2:
            revert with 'NH{q', 33
        if arg3 >= 2:
            revert with 'NH{q', 33
        if arg4 >= 5:
            revert with 'NH{q', 33
        if arg5 >= 9:
            revert with 'NH{q', 33
        if arg6 >= 9:
            revert with 'NH{q', 33
        if block.timestamp >= arg9:
            require ext_code.size(storageAddress)
            call storageAddress.0xdc12e1ed with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 5, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
        else:
            if arg7 >= 9:
                revert with 'NH{q', 33
            require ext_code.size(storageAddress)
            call storageAddress.0xdc12e1ed with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
    else:
        if ext_call.return_data[0] > 8:
            revert with 'NH{q', 33
        if ext_call.return_data[0] != 3:
            if arg2 >= 2:
                revert with 'NH{q', 33
            if arg3 >= 2:
                revert with 'NH{q', 33
            if arg4 >= 5:
                revert with 'NH{q', 33
            if arg5 >= 9:
                revert with 'NH{q', 33
            if arg6 >= 9:
                revert with 'NH{q', 33
            if block.timestamp >= arg9:
                require ext_code.size(storageAddress)
                call storageAddress.0xdc12e1ed with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 5, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
            else:
                if arg7 >= 9:
                    revert with 'NH{q', 33
                require ext_code.size(storageAddress)
                call storageAddress.0xdc12e1ed with:
                     gas gas_remaining wei
                    args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
        else:
            if arg6 > 8:
                revert with 'NH{q', 33
            if arg6 != 8:
                if ext_call.return_data[448] == stor2:
                    if arg8 > -1296001:
                        revert with 'NH{q', 17
                    if arg2 >= 2:
                        revert with 'NH{q', 33
                    if arg3 >= 2:
                        revert with 'NH{q', 33
                    if arg4 >= 5:
                        revert with 'NH{q', 33
                    if arg5 >= 9:
                        revert with 'NH{q', 33
                    if arg6 >= 9:
                        revert with 'NH{q', 33
                    require ext_code.size(storageAddress)
                    if ext_call.return_data[448] == arg14:
                        call storageAddress.0xdc12e1ed with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                    else:
                        if block.timestamp < arg8 + (360 * 24 * 3600):
                            call storageAddress.0xdc12e1ed with:
                                 gas gas_remaining wei
                                args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                        else:
                            call storageAddress.0xdc12e1ed with:
                                 gas gas_remaining wei
                                args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                else:
                    if arg8 > -2592001:
                        revert with 'NH{q', 17
                    if arg2 >= 2:
                        revert with 'NH{q', 33
                    if arg3 >= 2:
                        revert with 'NH{q', 33
                    if arg4 >= 5:
                        revert with 'NH{q', 33
                    if arg5 >= 9:
                        revert with 'NH{q', 33
                    if arg6 >= 9:
                        revert with 'NH{q', 33
                    require ext_code.size(storageAddress)
                    if ext_call.return_data[448] == arg14:
                        call storageAddress.0xdc12e1ed with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                    else:
                        if block.timestamp < arg8 + (720 * 24 * 3600):
                            call storageAddress.0xdc12e1ed with:
                                 gas gas_remaining wei
                                args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                        else:
                            call storageAddress.0xdc12e1ed with:
                                 gas gas_remaining wei
                                args msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
            else:
                if ext_call.return_data[448] == stor2:
                    if ext_call.return_data[512] != ext_call.return_data[480]:
                        if ext_call.return_data[448] == stor2:
                            if arg8 > -1296001:
                                revert with 'NH{q', 17
                            if arg2 >= 2:
                                revert with 'NH{q', 33
                            if arg3 >= 2:
                                revert with 'NH{q', 33
                            if arg5 >= 9:
                                revert with 'NH{q', 33
                            require ext_code.size(storageAddress)
                            if ext_call.return_data[448] == arg14:
                                call storageAddress.0xdc12e1ed with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if block.timestamp < arg8 + (360 * 24 * 3600):
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                        else:
                            if arg8 > -2592001:
                                revert with 'NH{q', 17
                            if arg2 >= 2:
                                revert with 'NH{q', 33
                            if arg3 >= 2:
                                revert with 'NH{q', 33
                            if arg5 >= 9:
                                revert with 'NH{q', 33
                            require ext_code.size(storageAddress)
                            if ext_call.return_data[448] == arg14:
                                call storageAddress.0xdc12e1ed with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if block.timestamp < arg8 + (720 * 24 * 3600):
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                    else:
                        if ext_call.return_data[512] == 2:
                            if ext_call.return_data[448] == stor2:
                                if arg8 > -1296001:
                                    revert with 'NH{q', 17
                                if arg2 >= 2:
                                    revert with 'NH{q', 33
                                if arg3 >= 2:
                                    revert with 'NH{q', 33
                                if arg5 >= 9:
                                    revert with 'NH{q', 33
                                require ext_code.size(storageAddress)
                                if ext_call.return_data[448] == arg14:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if block.timestamp < arg8 + (360 * 24 * 3600):
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if arg8 > -2592001:
                                    revert with 'NH{q', 17
                                if arg2 >= 2:
                                    revert with 'NH{q', 33
                                if arg3 >= 2:
                                    revert with 'NH{q', 33
                                if arg5 >= 9:
                                    revert with 'NH{q', 33
                                require ext_code.size(storageAddress)
                                if ext_call.return_data[448] == arg14:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if block.timestamp < arg8 + (720 * 24 * 3600):
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                        else:
                            if ext_call.return_data[480] != 2:
                                if ext_call.return_data[448] == stor2:
                                    if arg8 > -1296001:
                                        revert with 'NH{q', 17
                                    if arg2 >= 2:
                                        revert with 'NH{q', 33
                                    if arg3 >= 2:
                                        revert with 'NH{q', 33
                                    if arg5 >= 9:
                                        revert with 'NH{q', 33
                                    require ext_code.size(storageAddress)
                                    if ext_call.return_data[448] == arg14:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if block.timestamp < arg8 + (360 * 24 * 3600):
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if arg8 > -2592001:
                                        revert with 'NH{q', 17
                                    if arg2 >= 2:
                                        revert with 'NH{q', 33
                                    if arg3 >= 2:
                                        revert with 'NH{q', 33
                                    if arg5 >= 9:
                                        revert with 'NH{q', 33
                                    require ext_code.size(storageAddress)
                                    if ext_call.return_data[448] == arg14:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if block.timestamp < arg8 + (720 * 24 * 3600):
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if ext_call.return_data[448] == stor2:
                                    if arg8 > -1296001:
                                        revert with 'NH{q', 17
                                    if arg2 >= 2:
                                        revert with 'NH{q', 33
                                    if arg3 >= 2:
                                        revert with 'NH{q', 33
                                    if arg5 >= 9:
                                        revert with 'NH{q', 33
                                    require ext_code.size(storageAddress)
                                    if ext_call.return_data[448] == arg14:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if block.timestamp < arg8 + (360 * 24 * 3600):
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if arg8 > -2592001:
                                        revert with 'NH{q', 17
                                    if arg2 >= 2:
                                        revert with 'NH{q', 33
                                    if arg3 >= 2:
                                        revert with 'NH{q', 33
                                    if arg5 >= 9:
                                        revert with 'NH{q', 33
                                    require ext_code.size(storageAddress)
                                    if ext_call.return_data[448] == arg14:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if block.timestamp < arg8 + (720 * 24 * 3600):
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                else:
                    if ext_call.return_data[448] != arg14:
                        if ext_call.return_data[448] == stor2:
                            if arg8 > -1296001:
                                revert with 'NH{q', 17
                            if arg2 >= 2:
                                revert with 'NH{q', 33
                            if arg3 >= 2:
                                revert with 'NH{q', 33
                            if arg5 >= 9:
                                revert with 'NH{q', 33
                            require ext_code.size(storageAddress)
                            if ext_call.return_data[448] == arg14:
                                call storageAddress.0xdc12e1ed with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1, arg2, arg3, 1, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if block.timestamp < arg8 + (360 * 24 * 3600):
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 1, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 1, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                        else:
                            if arg8 > -2592001:
                                revert with 'NH{q', 17
                            if arg2 >= 2:
                                revert with 'NH{q', 33
                            if arg3 >= 2:
                                revert with 'NH{q', 33
                            if arg5 >= 9:
                                revert with 'NH{q', 33
                            require ext_code.size(storageAddress)
                            if ext_call.return_data[448] == arg14:
                                call storageAddress.0xdc12e1ed with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1, arg2, arg3, 1, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if block.timestamp < arg8 + (720 * 24 * 3600):
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 1, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 1, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                    else:
                        if ext_call.return_data[512] != ext_call.return_data[480]:
                            if ext_call.return_data[448] == stor2:
                                if arg8 > -1296001:
                                    revert with 'NH{q', 17
                                if arg2 >= 2:
                                    revert with 'NH{q', 33
                                if arg3 >= 2:
                                    revert with 'NH{q', 33
                                if arg5 >= 9:
                                    revert with 'NH{q', 33
                                require ext_code.size(storageAddress)
                                if ext_call.return_data[448] == arg14:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if block.timestamp < arg8 + (360 * 24 * 3600):
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if arg8 > -2592001:
                                    revert with 'NH{q', 17
                                if arg2 >= 2:
                                    revert with 'NH{q', 33
                                if arg3 >= 2:
                                    revert with 'NH{q', 33
                                if arg5 >= 9:
                                    revert with 'NH{q', 33
                                require ext_code.size(storageAddress)
                                if ext_call.return_data[448] == arg14:
                                    call storageAddress.0xdc12e1ed with:
                                         gas gas_remaining wei
                                        args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if block.timestamp < arg8 + (720 * 24 * 3600):
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                        else:
                            if ext_call.return_data[512] == 2:
                                if ext_call.return_data[448] == stor2:
                                    if arg8 > -1296001:
                                        revert with 'NH{q', 17
                                    if arg2 >= 2:
                                        revert with 'NH{q', 33
                                    if arg3 >= 2:
                                        revert with 'NH{q', 33
                                    if arg5 >= 9:
                                        revert with 'NH{q', 33
                                    require ext_code.size(storageAddress)
                                    if ext_call.return_data[448] == arg14:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if block.timestamp < arg8 + (360 * 24 * 3600):
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if arg8 > -2592001:
                                        revert with 'NH{q', 17
                                    if arg2 >= 2:
                                        revert with 'NH{q', 33
                                    if arg3 >= 2:
                                        revert with 'NH{q', 33
                                    if arg5 >= 9:
                                        revert with 'NH{q', 33
                                    require ext_code.size(storageAddress)
                                    if ext_call.return_data[448] == arg14:
                                        call storageAddress.0xdc12e1ed with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if block.timestamp < arg8 + (720 * 24 * 3600):
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                            else:
                                if ext_call.return_data[480] != 2:
                                    if ext_call.return_data[448] == stor2:
                                        if arg8 > -1296001:
                                            revert with 'NH{q', 17
                                        if arg2 >= 2:
                                            revert with 'NH{q', 33
                                        if arg3 >= 2:
                                            revert with 'NH{q', 33
                                        if arg5 >= 9:
                                            revert with 'NH{q', 33
                                        require ext_code.size(storageAddress)
                                        if ext_call.return_data[448] == arg14:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            if block.timestamp < arg8 + (360 * 24 * 3600):
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                            else:
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if arg8 > -2592001:
                                            revert with 'NH{q', 17
                                        if arg2 >= 2:
                                            revert with 'NH{q', 33
                                        if arg3 >= 2:
                                            revert with 'NH{q', 33
                                        if arg5 >= 9:
                                            revert with 'NH{q', 33
                                        require ext_code.size(storageAddress)
                                        if ext_call.return_data[448] == arg14:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            if block.timestamp < arg8 + (720 * 24 * 3600):
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                            else:
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 0, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                else:
                                    if ext_call.return_data[448] == stor2:
                                        if arg8 > -1296001:
                                            revert with 'NH{q', 17
                                        if arg2 >= 2:
                                            revert with 'NH{q', 33
                                        if arg3 >= 2:
                                            revert with 'NH{q', 33
                                        if arg5 >= 9:
                                            revert with 'NH{q', 33
                                        require ext_code.size(storageAddress)
                                        if ext_call.return_data[448] == arg14:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            if block.timestamp < arg8 + (360 * 24 * 3600):
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                            else:
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (360 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                    else:
                                        if arg8 > -2592001:
                                            revert with 'NH{q', 17
                                        if arg2 >= 2:
                                            revert with 'NH{q', 33
                                        if arg3 >= 2:
                                            revert with 'NH{q', 33
                                        if arg5 >= 9:
                                            revert with 'NH{q', 33
                                        require ext_code.size(storageAddress)
                                        if ext_call.return_data[448] == arg14:
                                            call storageAddress.0xdc12e1ed with:
                                                 gas gas_remaining wei
                                                args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                        else:
                                            if block.timestamp < arg8 + (720 * 24 * 3600):
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 6, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
                                            else:
                                                call storageAddress.0xdc12e1ed with:
                                                     gas gas_remaining wei
                                                    args msg.sender, arg1, arg2, arg3, 3, arg5, 7, 5, arg8, arg8 + (720 * 24 * 3600), arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, bool(arg18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x8b18c7e3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Not a Logic contract'
    require ext_code.size(storageAddress)
    staticcall storageAddress.0x47625694 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 9
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 64 >= 384
    if not bool((2 * ceil32(return_data.size)) + 672 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == ext_call.return_data[512]
    require ext_code.size(storageAddress)
    staticcall storageAddress.0xcfd47663 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 544
    if not bool((4 * ceil32(return_data.size)) + 928 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] < 2
    require ext_call.return_data[32] < 2
    require ext_call.return_data[64] < 5
    require ext_call.return_data[96] < 9
    require ext_call.return_data[128] < 9
    require ext_call.return_data[160] < 9
    require return_data.size - 192 >= 320
    if not bool((4 * ceil32(return_data.size)) + 1248 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[320]
    require ext_call.return_data[352] == ext_call.return_data[352]
    require ext_call.return_data[384] == ext_call.return_data[384]
    require ext_call.return_data[416] == ext_call.return_data[416]
    require ext_call.return_data[448] == ext_call.return_data[448]
    require ext_call.return_data[480] == ext_call.return_data[480]
    require ext_call.return_data[512] == bool(ext_call.return_data[512])
    if not ext_call.return_data[32]:
        revert with 0, 'Performance Does not exist'
    if ext_call.return_data[0] > 8:
        revert with 'NH{q', 33
    if ext_call.return_data[0] != 3:
        revert with 0, 'Performance Not yet calculated'
    if ext_call.return_data[320] > -ext_call.return_data[352] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[160] > ext_call.return_data[192]:
        if ext_call.return_data[160] < ext_call.return_data[192]:
            revert with 'NH{q', 17
        if ext_call.return_data[160] - ext_call.return_data[192] <= 0:
            if ext_call.return_data[32] > 1:
                revert with 'NH{q', 33
            if ext_call.return_data[32]:
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and 1 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] and 50 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(50 * ext_call.return_data[256] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (50 * ext_call.return_data[256] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 1:
                        if ext_call.return_data[64] > 4:
                            revert with 'NH{q', 33
                        if ext_call.return_data[64] != 3:
                            return 0
                    if ext_call.return_data[256] and 0 > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -1:
                        revert with 'NH{q', 17
                    return ext_call.return_data[256]
            else:
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 1 > -1 / 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 17
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 50 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(50 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (50 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] == 1:
                        if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 40 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 3:
                        return 0
                    if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 30 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -(30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[256] + (30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
            ('eq', ('ext_call.return_data', 32, 32), 1)
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and 1 > -1 / 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 17
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if ext_call.return_data[64] > 4:
                revert with 'NH{q', 33
            if not ext_call.return_data[64]:
                if ext_call.return_data[256] and 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                    revert with 'NH{q', 17
                if ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and 50 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 17
                if ext_call.return_data[256] > -(50 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[256] + (50 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
        else:
            if ext_call.return_data[160] - ext_call.return_data[192] / 2 > -bool(ext_call.return_data[160] - ext_call.return_data[192]) - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 1:
                revert with 'NH{q', 33
            if ext_call.return_data[32]:
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and 1 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] and 50 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(50 * ext_call.return_data[256] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (50 * ext_call.return_data[256] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 1:
                        if ext_call.return_data[64] > 4:
                            revert with 'NH{q', 33
                        if ext_call.return_data[64] != 3:
                            return 0
                    if ext_call.return_data[256] and 0 > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -1:
                        revert with 'NH{q', 17
                    return ext_call.return_data[256]
            else:
                if (ext_call.return_data[160] - ext_call.return_data[192] / 2) + bool(ext_call.return_data[160] - ext_call.return_data[192]) > -2:
                    revert with 'NH{q', 17
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and (ext_call.return_data[160] - ext_call.return_data[192] / 2) + bool(ext_call.return_data[160] - ext_call.return_data[192]) + 1 > -1 / 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 17
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and (100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]) + (ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]) + (bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]) > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if (100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) and 50 > -1 / (100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -((50 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + ((50 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] == 1:
                        if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 40 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 3:
                        return 0
                    if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 30 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -(30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[256] + (30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
            ('eq', ('ext_call.return_data', 32, 32), 1)
            if (ext_call.return_data[160] - ext_call.return_data[192] / 2) + bool(ext_call.return_data[160] - ext_call.return_data[192]) > -2:
                revert with 'NH{q', 17
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and (ext_call.return_data[160] - ext_call.return_data[192] / 2) + bool(ext_call.return_data[160] - ext_call.return_data[192]) + 1 > -1 / 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 17
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if ext_call.return_data[64] > 4:
                revert with 'NH{q', 33
            if not ext_call.return_data[64]:
                if ext_call.return_data[256] and (100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]) + (ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]) + (bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]) > -1 / ext_call.return_data[256]:
                    revert with 'NH{q', 17
                if (100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) and 50 > -1 / (100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]):
                    revert with 'NH{q', 17
                if ext_call.return_data[256] > -((50 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000) - 1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[256] + ((50 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[160] - ext_call.return_data[192] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[160] - ext_call.return_data[192]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000))
    else:
        if ext_call.return_data[192] < ext_call.return_data[160]:
            revert with 'NH{q', 17
        if ext_call.return_data[192] - ext_call.return_data[160] <= 0:
            if ext_call.return_data[32] > 1:
                revert with 'NH{q', 33
            if ext_call.return_data[32]:
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and 1 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] and 50 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(50 * ext_call.return_data[256] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (50 * ext_call.return_data[256] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 1:
                        if ext_call.return_data[64] > 4:
                            revert with 'NH{q', 33
                        if ext_call.return_data[64] != 3:
                            return 0
                    if ext_call.return_data[256] and 0 > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -1:
                        revert with 'NH{q', 17
                    return ext_call.return_data[256]
            else:
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 1 > -1 / 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 17
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 50 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(50 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (50 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] == 1:
                        if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 40 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 3:
                        return 0
                    if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 30 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -(30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[256] + (30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
            ('eq', ('ext_call.return_data', 32, 32), 1)
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and 1 > -1 / 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 17
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if ext_call.return_data[64] > 4:
                revert with 'NH{q', 33
            if not ext_call.return_data[64]:
                if ext_call.return_data[256] and 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                    revert with 'NH{q', 17
                if ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and 50 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 17
                if ext_call.return_data[256] > -(50 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[256] + (50 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
        else:
            if ext_call.return_data[192] - ext_call.return_data[160] / 2 > -bool(ext_call.return_data[192] - ext_call.return_data[160]) - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 1:
                revert with 'NH{q', 33
            if ext_call.return_data[32]:
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and 1 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] and 50 > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(50 * ext_call.return_data[256] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (50 * ext_call.return_data[256] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 1:
                        if ext_call.return_data[64] > 4:
                            revert with 'NH{q', 33
                        if ext_call.return_data[64] != 3:
                            return 0
                    if ext_call.return_data[256] and 0 > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -1:
                        revert with 'NH{q', 17
                    return ext_call.return_data[256]
            else:
                if (ext_call.return_data[192] - ext_call.return_data[160] / 2) + bool(ext_call.return_data[192] - ext_call.return_data[160]) > -2:
                    revert with 'NH{q', 17
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and (ext_call.return_data[192] - ext_call.return_data[160] / 2) + bool(ext_call.return_data[192] - ext_call.return_data[160]) + 1 > -1 / 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 17
                if ext_call.return_data[320] and 100 > -1 / ext_call.return_data[320]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[320] + ext_call.return_data[352]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] > 1:
                    revert with 'NH{q', 33
                if ext_call.return_data[32] != 1:
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[256] and (100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]) + (ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]) + (bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]) > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if (100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) and 50 > -1 / (100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -((50 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + ((50 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] == 1:
                        if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 40 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[256] > -(40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[256] + (40 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
                    if ext_call.return_data[64] > 4:
                        revert with 'NH{q', 33
                    if ext_call.return_data[64] != 3:
                        return 0
                    if ext_call.return_data[256] and 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] and 30 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[256] > -(30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[256] + (30 * ext_call.return_data[256] * 100 * ext_call.return_data[320] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
            ('eq', ('ext_call.return_data', 32, 32), 1)
            if (ext_call.return_data[192] - ext_call.return_data[160] / 2) + bool(ext_call.return_data[192] - ext_call.return_data[160]) > -2:
                revert with 'NH{q', 17
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and (ext_call.return_data[192] - ext_call.return_data[160] / 2) + bool(ext_call.return_data[192] - ext_call.return_data[160]) + 1 > -1 / 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 17
            if ext_call.return_data[352] and 100 > -1 / ext_call.return_data[352]:
                revert with 'NH{q', 17
            if not ext_call.return_data[320] + ext_call.return_data[352]:
                revert with 'NH{q', 18
            if ext_call.return_data[64] > 4:
                revert with 'NH{q', 33
            if not ext_call.return_data[64]:
                if ext_call.return_data[256] and (100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]) + (ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]) + (bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]) > -1 / ext_call.return_data[256]:
                    revert with 'NH{q', 17
                if (100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) and 50 > -1 / (100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]):
                    revert with 'NH{q', 17
                if ext_call.return_data[256] > -((50 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000) - 1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[256] + ((50 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * ext_call.return_data[192] - ext_call.return_data[160] / 2 * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) + (50 * bool(ext_call.return_data[192] - ext_call.return_data[160]) * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] * ext_call.return_data[256]) / 10000))
    ('iszero', ('iszero', ('ext_call.return_data', 64, 32)))
    if ext_call.return_data[64] > 4:
        revert with 'NH{q', 33
    if ext_call.return_data[64] == 1:
        if ext_call.return_data[256] and 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
            revert with 'NH{q', 17
        if ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and 40 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
            revert with 'NH{q', 17
        if ext_call.return_data[256] > -(40 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[256] + (40 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
    if ext_call.return_data[64] > 4:
        revert with 'NH{q', 33
    if ext_call.return_data[64] != 3:
        return 0
    if ext_call.return_data[256] and 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] > -1 / ext_call.return_data[256]:
        revert with 'NH{q', 17
    if ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] and 30 > -1 / ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352]:
        revert with 'NH{q', 17
    if ext_call.return_data[256] > -(30 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[256] + (30 * ext_call.return_data[256] * 100 * ext_call.return_data[352] / ext_call.return_data[320] + ext_call.return_data[352] / 10000))
}



}
