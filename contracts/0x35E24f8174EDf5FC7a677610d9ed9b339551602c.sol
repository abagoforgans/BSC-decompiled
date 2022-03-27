contract main {




// =====================  Runtime code  =====================


#
#  - run(bytes arg1)
#  - _fallback()
#
address owner;
uint256 stor2;

function owner() payable {
    return owner
}

function update() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1bb4a268(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if bool(Mask(256, -uint8(arg2), uint8(arg1)) << -uint8(arg2)) == 1:
        return 1
    else:
        return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function sub_de35f282(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6b657e7d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    require arg1.length >= 160
    require bool(ceil32(arg1.length) + 448 <= test266151307())
    require mem[160] == mem[172 len 20]
    require mem[256] == mem[268 len 20]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14]
    return mem[224] <= 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
}

function sub_44980d1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 96
    require arg1.length >= 32
    require mem[128] <= test266151307()
    require arg1.length - mem[128] >= 160
    require bool(ceil32(arg1.length) + 448 <= test266151307())
    mem[64] = ceil32(arg1.length) + 448
    require mem[mem[128] + 128] == mem[mem[128] + 140 len 20]
    mem[ceil32(arg1.length) + 288] = mem[mem[128] + 128]
    mem[ceil32(arg1.length) + 320] = mem[mem[128] + 160]
    mem[ceil32(arg1.length) + 352] = mem[mem[128] + 192]
    require mem[mem[128] + 224] == mem[mem[128] + 236 len 20]
    mem[ceil32(arg1.length) + 384] = mem[mem[128] + 224]
    _10 = mem[mem[128] + 256]
    require mem[mem[128] + 256] <= test266151307()
    require mem[128] + mem[mem[128] + 256] + 159 < arg1.length + 128
    _11 = mem[mem[128] + mem[mem[128] + 256] + 128]
    require mem[mem[128] + mem[mem[128] + 256] + 128] <= test266151307()
    require (32 * mem[mem[128] + mem[mem[128] + 256] + 128]) + 480 >= 448 and ceil32(arg1.length) + (32 * mem[mem[128] + mem[mem[128] + 256] + 128]) + 480 <= test266151307()
    mem[64] = ceil32(arg1.length) + (32 * mem[mem[128] + mem[mem[128] + 256] + 128]) + 480
    mem[ceil32(arg1.length) + 448] = _11
    require arg1.length + 32 >= mem[128] + _10 + (32 * _11) + 64
    idx = 0
    s = mem[128] + _10 + 160
    t = ceil32(arg1.length) + 480
    while idx < _11:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + 416] = ceil32(arg1.length) + 448
    _33 = mem[ceil32(arg1.length) + 288]
    _34 = mem[ceil32(arg1.length) + 320]
    _36 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _34
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = _11
    idx = 0
    s = ceil32(arg1.length) + 480
    t = mem[64] + 100
    while idx < _11:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(_33))
    staticcall address(_33).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _36 + (32 * _11) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _54 = mem[_53]
    require mem[_53] <= test266151307()
    require _53 + return_data.size > _53 + mem[_53] + 31
    _55 = mem[_53 + mem[_53]]
    require mem[_53 + mem[_53]] <= test266151307()
    require (32 * mem[_53 + mem[_53]]) + 32 >= 0 and _53 + ceil32(return_data.size) + (32 * mem[_53 + mem[_53]]) + 32 <= test266151307()
    mem[64] = _53 + ceil32(return_data.size) + (32 * mem[_53 + mem[_53]]) + 32
    mem[_53 + ceil32(return_data.size)] = _55
    require return_data.size >= _54 + (32 * _55) + 32
    mem[_53 + ceil32(return_data.size) + 32 len 32 * _55] = mem[_53 + _54 + 32 len 32 * _55]
    require _55 - 1 < _55
    mem[mem[64]] = mem[ceil32(arg1.length) + 352] <= mem[(32 * _55 - 1) + _53 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}



}
