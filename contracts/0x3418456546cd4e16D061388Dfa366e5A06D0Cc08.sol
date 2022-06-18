contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
uint256 stor1;
uint8 stor2;
address tokenAddress; offset 8
address sub_5f221bfeAddress;
uint256 startTime;
uint256 endTime;
mapping of struct sub_8a177eb8;
array of struct sub_56a784ba;
array of struct sub_fd35f8fe;
mapping of uint256 sub_5e328ccf;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint8 stor75276140696391174450305814049576319106646922510300487059720162673006384432783;

function endTime() payable {
    return endTime
}

function sub_56a784ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_56a784ba.length
    return sub_56a784ba[arg1].field_0, 
           sub_56a784ba[arg1].field_256,
           sub_56a784ba[arg1].field_512,
           sub_56a784ba[arg1].field_768,
           sub_56a784ba[arg1].field_1024,
           sub_56a784ba[arg1].field_1280,
           sub_56a784ba[arg1].field_1536,
           bool(sub_56a784ba[arg1].field_1792)
}

function sub_5cd8b52b(?) payable {
    return sub_56a784ba.length
}

function sub_5e328ccf(?) payable {
    require calldata.size - 4 >= 32
    return sub_5e328ccf[arg1]
}

function sub_5f221bfe(?) payable {
    return sub_5f221bfeAddress
}

function startTime() payable {
    return startTime
}

function sub_8a177eb8(?) payable {
    require calldata.size - 4 >= 32
    return sub_8a177eb8[arg1].field_0, 
           sub_8a177eb8[arg1].field_256,
           sub_8a177eb8[arg1].field_512,
           sub_8a177eb8[arg1].field_768,
           sub_8a177eb8[arg1].field_1024,
           sub_8a177eb8[arg1].field_1280,
           sub_8a177eb8[arg1].field_1536,
           bool(sub_8a177eb8[arg1].field_1792)
}

function owner() payable {
    return owner
}

function sub_fb1607c6(?) payable {
    return bool(stor2)
}

function token() payable {
    return tokenAddress
}

function sub_fd35f8fe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_fd35f8fe[arg1].field_0
    return sub_fd35f8fe[arg1][arg2].field_0, 
           sub_fd35f8fe[arg1][arg2].field_256,
           sub_fd35f8fe[arg1][arg2].field_512,
           bool(sub_fd35f8fe[arg1][arg2].field_768)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e6bafb69(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
    endTime = arg2
}

function setNFTAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5f221bfeAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function governanceRecoverUnsupported(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getStakeDetails(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    mem[64] = (32 * sub_fd35f8fe[address(arg1)].field_0) + 128
    mem[96] = sub_fd35f8fe[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_fd35f8fe[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 9)
        _14 = mem[64]
        mem[64] = mem[64] + 128
        mem[_14] = sub_fd35f8fe[address(arg1)][idx].field_0
        mem[_14 + 32] = sub_fd35f8fe[address(arg1)][idx].field_256
        mem[_14 + 64] = sub_fd35f8fe[address(arg1)][idx].field_512
        mem[_14 + 96] = bool(sub_fd35f8fe[address(arg1)][idx].field_768)
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _23 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_23 + 32]
        mem[t + 64] = mem[_23 + 64]
        mem[t + 96] = bool(mem[_23 + 96])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _15 + (128 * _16) + -mem[64] + 64
}

function sub_e97450b0(?) payable {
    require calldata.size - 4 >= 256
    require arg8 == bool(arg8)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != sub_8a177eb8[arg1].field_0:
        revert with 0, 'packageID must be equal objID'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        sub_8a177eb8[arg1].field_256 = arg2
        sub_8a177eb8[arg1].field_512 = arg3
        sub_8a177eb8[arg1].field_768 = arg4
        sub_8a177eb8[arg1].field_1024 = arg5
        sub_8a177eb8[arg1].field_1280 = arg6
        sub_8a177eb8[arg1].field_1536 = arg7
        sub_8a177eb8[arg1].field_1792 = uint8(bool(arg8))
        if arg1 >= sub_56a784ba.length:
            revert with 0, 50
        sub_56a784ba[arg1].field_0 = sub_8a177eb8[arg1].field_0
        sub_56a784ba[arg1].field_256 = arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            sub_8a177eb8[arg1].field_256 = arg2 * 10^ext_call.return_data[31 len 1]
            sub_8a177eb8[arg1].field_512 = arg3
            sub_8a177eb8[arg1].field_768 = arg4
            sub_8a177eb8[arg1].field_1024 = arg5
            sub_8a177eb8[arg1].field_1280 = arg6
            sub_8a177eb8[arg1].field_1536 = arg7
            sub_8a177eb8[arg1].field_1792 = uint8(bool(arg8))
            if arg1 >= sub_56a784ba.length:
                revert with 0, 50
            sub_56a784ba[arg1].field_0 = sub_8a177eb8[arg1].field_0
            sub_56a784ba[arg1].field_256 = arg2 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            sub_8a177eb8[arg1].field_256 = arg2 * s * t
            sub_8a177eb8[arg1].field_512 = arg3
            sub_8a177eb8[arg1].field_768 = arg4
            sub_8a177eb8[arg1].field_1024 = arg5
            sub_8a177eb8[arg1].field_1280 = arg6
            sub_8a177eb8[arg1].field_1536 = arg7
            sub_8a177eb8[arg1].field_1792 = uint8(bool(arg8))
            if arg1 >= sub_56a784ba.length:
                revert with 0, 50
            sub_56a784ba[arg1].field_0 = sub_8a177eb8[arg1].field_0
            sub_56a784ba[arg1].field_256 = arg2 * s * t
    sub_56a784ba[arg1].field_512 = arg3
    sub_56a784ba[arg1].field_768 = arg4
    sub_56a784ba[arg1].field_1024 = arg5
    sub_56a784ba[arg1].field_1280 = arg6
    sub_56a784ba[arg1].field_1536 = arg7
    sub_56a784ba[arg1].field_1792 = uint8(bool(arg8))
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if bool(stor2) == 1:
        revert with 0, 'Staking is paused'
    if startTime > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This event is not available or end'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This event is not available or end'
    if arg1 >= sub_56a784ba.length:
        revert with 0, 'Index out of bound'
    mem[96] = sub_8a177eb8[arg1].field_0
    mem[128] = sub_8a177eb8[arg1].field_256
    mem[160] = sub_8a177eb8[arg1].field_512
    mem[192] = sub_8a177eb8[arg1].field_768
    mem[224] = sub_8a177eb8[arg1].field_1024
    mem[256] = sub_8a177eb8[arg1].field_1280
    mem[288] = sub_8a177eb8[arg1].field_1536
    mem[320] = bool(sub_8a177eb8[arg1].field_1792)
    if sub_8a177eb8[arg1].field_1536 <= sub_5e328ccf[arg1]:
        revert with 0, 'Slot is full'
    if 1 == bool(sub_8a177eb8[arg1].field_1792):
        revert with 0, 'Staking is paused'
    if sub_8a177eb8[arg1].field_256 <= 0:
        revert with 0, 'Amount must > 0'
    if sub_8a177eb8[arg1].field_768 > block.timestamp:
        revert with 0, 'This package is not available or end'
    if block.timestamp >= sub_8a177eb8[arg1].field_1024:
        revert with 0, 'This package is not available or end'
    mem[0] = msg.sender
    mem[32] = 9
    mem[64] = (32 * sub_fd35f8fe[msg.sender].field_0) + 384
    mem[352] = sub_fd35f8fe[msg.sender].field_0
    s = 384
    idx = 0
    while idx < sub_fd35f8fe[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 9)
        _56 = mem[64]
        mem[64] = mem[64] + 128
        mem[_56] = sub_fd35f8fe[msg.sender][idx].field_0
        mem[_56 + 32] = sub_fd35f8fe[msg.sender][idx].field_256
        mem[_56 + 64] = sub_fd35f8fe[msg.sender][idx].field_512
        mem[_56 + 96] = bool(sub_fd35f8fe[msg.sender][idx].field_768)
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[352]:
        if idx >= mem[352]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 384]] == arg1:
            revert with 0, 'Already Staked'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _81 = mem[64]
    mem[64] = mem[64] + 128
    mem[_81 + 64] = 0
    mem[_81 + 96] = 0
    mem[_81 + 32] = block.timestamp
    mem[_81] = arg1
    mem[_81 + 64] = mem[128]
    _84 = mem[128]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = _84
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, _84
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_90] == bool(mem[_90])
    sub_fd35f8fe[msg.sender].field_0++
    sub_fd35f8fe[msg.sender][sub_fd35f8fe[msg.sender].field_0].field_0 = arg1
    sub_fd35f8fe[msg.sender][sub_fd35f8fe[msg.sender].field_0].field_256 = block.timestamp
    sub_fd35f8fe[msg.sender][sub_fd35f8fe[msg.sender].field_0].field_512 = mem[_81 + 64]
    sub_fd35f8fe[msg.sender][sub_fd35f8fe[msg.sender].field_0].field_768 = 0
    if sub_5e328ccf[arg1] > -2:
        revert with 0, 17
    sub_5e328ccf[arg1]++
    emit Staked(msg.sender, arg1, block.timestamp);
    stor1 = 1
}

function sub_9ea37dcc(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 100 < 99 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 101 < 100 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 101 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 102 < 101 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 102 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 101] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = cd[164] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 133
    while idx < cd[164] + (32 * ('cd', 164).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 196).length) + 103 < 102 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(32 * ('cd', 196).length) + 103 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(32 * ('cd', 196).length) + 103
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 102] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = cd[196] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 134
    while idx < cd[196] + (32 * ('cd', 196).length) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid input'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'Invalid input'
    if ('cd', 4).length != ('cd', 100).length:
        revert with 0, 'Invalid input'
    if ('cd', 4).length != ('cd', 196).length:
        revert with 0, 'Invalid input'
    if ('cd', 4).length != ('cd', 132).length:
        revert with 0, 'Invalid input'
    if ('cd', 4).length != ('cd', 164).length:
        revert with 0, 'Invalid input'
    sub_56a784ba.length = 0
    mem[0] = 7
    idx = 0
    while 8 * sub_56a784ba.length > idx:
        sub_56a784ba[idx].field_0 = 0
        sub_56a784ba[idx].field_256 = 0
        sub_56a784ba[idx].field_512 = 0
        sub_56a784ba[idx].field_768 = 0
        sub_56a784ba[idx].field_1024 = 0
        sub_56a784ba[idx].field_1280 = 0
        sub_56a784ba[idx].field_1536 = 0
        sub_56a784ba[idx].field_1792 = 0
        idx = idx + 8
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _1137 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1137 + 32] = 0
        mem[_1137 + 64] = 0
        mem[_1137 + 96] = 0
        mem[_1137 + 128] = 0
        mem[_1137 + 160] = 0
        mem[_1137 + 192] = 0
        mem[_1137 + 224] = 0
        mem[_1137] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1140] == mem[_1140 + 31 len 1]
        if not mem[_1140 + 31 len 1]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 128] and 1 > -1 / mem[(32 * idx) + 128]:
                revert with 0, 17
            mem[_1137 + 32] = mem[(32 * idx) + 128]
        else:
            if bool(bool(mem[_1140 + 31 len 1] < 78)) or bool(bool(mem[_1140 + 31 len 1] < 32)):
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] and 10^mem[_1140 + 31 len 1] > -1 / mem[(32 * idx) + 128]:
                    revert with 0, 17
                mem[_1137 + 32] = mem[(32 * idx) + 128] * 10^mem[_1140 + 31 len 1]
            else:
                t = 10
                u = 1
                s = mem[_1140 + 31 len 1]
                while s > 1:
                    if t > -1 / t:
                        revert with 0, 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] and t * u > -1 / mem[(32 * idx) + 128]:
                    revert with 0, 17
                mem[_1137 + 32] = mem[(32 * idx) + 128] * t * u
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[_1137 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        mem[_1137 + 96] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
            revert with 0, 50
        mem[_1137 + 128] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 102]:
            revert with 0, 50
        mem[_1137 + 224] = bool(mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 134])
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100]:
            revert with 0, 50
        mem[_1137 + 160] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 132]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 101]:
            revert with 0, 50
        mem[_1137 + 192] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 133]
        mem[32] = 6
        sub_8a177eb8[idx].field_0 = idx
        sub_8a177eb8[idx].field_256 = mem[_1137 + 32]
        sub_8a177eb8[idx].field_512 = mem[_1137 + 64]
        sub_8a177eb8[idx].field_768 = mem[_1137 + 96]
        sub_8a177eb8[idx].field_1024 = mem[_1137 + 128]
        sub_8a177eb8[idx].field_1280 = mem[_1137 + 160]
        sub_8a177eb8[idx].field_1536 = mem[_1137 + 192]
        sub_8a177eb8[idx].field_1792 = uint8(bool(mem[_1137 + 224]))
        sub_56a784ba.length++
        mem[0] = 7
        sub_56a784ba[sub_56a784ba.length].field_0 = idx
        storA66C[stor7.length] = mem[_1137 + 32]
        storA66C[stor7.length] = mem[_1137 + 64]
        storA66C[stor7.length] = mem[_1137 + 96]
        storA66C[stor7.length] = mem[_1137 + 128]
        storA66C[stor7.length] = mem[_1137 + 160]
        storA66C[stor7.length] = mem[_1137 + 192]
        storA66C[stor7.length] = uint8(bool(mem[_1137 + 224]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
