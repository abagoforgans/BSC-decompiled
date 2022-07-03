contract main {




// =====================  Runtime code  =====================


#
#  - removeRouter(address arg1)
#
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of struct stor6;
array of struct stor7;
mapping of address stor8;
mapping of address stor9;
mapping of struct proposal;
array of struct stor11;
array of struct stor12;
array of struct stor13;
array of struct stor14;
array of struct stor15;
array of address stor63806209331542711802848847270949280092855778197726125910674179583545433573379;
array of address stor84800337471693920904250232874319843718400766719524250287777680170677855896574;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305078;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305079;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305080;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305081;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305082;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305083;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305084;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305085;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305086;
array of address stor97569884605916225051403212656556507955018248777258318895762758024193532305087;
array of address stor97569884605916225051403212656556507955018248777258318895762758024193532305088;
array of address stor97569884605916225051403212656556507955018248777258318895762758024193532305089;
array of address stor97569884605916225051403212656556507955018248777258318895762758024193532305090;
array of struct stor97569884605916225051403212656556507955018248777258318895762758024193532305091;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386056;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386057;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386058;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386059;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386060;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386061;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386062;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386063;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386064;
array of address stor101051993584849178915136821395265346177868384823507754984078593667947067386065;
array of address stor101051993584849178915136821395265346177868384823507754984078593667947067386066;
array of address stor101051993584849178915136821395265346177868384823507754984078593667947067386067;
array of address stor101051993584849178915136821395265346177868384823507754984078593667947067386068;
array of struct stor101051993584849178915136821395265346177868384823507754984078593667947067386069;

function getProposal(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return proposal[arg1].field_0, 
           proposal[arg1].field_256,
           proposal[arg1].field_512,
           proposal[arg1].field_768,
           proposal[arg1].field_1024,
           proposal[arg1].field_1280,
           proposal[arg1].field_1536,
           proposal[arg1].field_1792,
           proposal[arg1].field_2048,
           proposal[arg1].field_2304,
           address(proposal[arg1].field_2560),
           address(proposal[arg1].field_2816),
           address(proposal[arg1].field_3072),
           address(proposal[arg1].field_3328),
           address(proposal[arg1].field_3584),
           uint8(proposal[arg1].field_3744)
}

function _fallback() payable {
    revert
}

function sub_208866b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor2.length) != msg.sender:
        revert with 0, '401'
    address(stor2.length) = address(arg1)
    emit 0x383c6e65: address(arg1)
}

function sub_41b8c3df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor4.length) != msg.sender:
        revert with 0, '401: !isRouterAdmin'
    address(stor4.length) = address(arg1)
    emit 0xadebe1a6: address(arg1)
}

function sub_6050a259(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor3.length) != msg.sender:
        revert with 0, '401: !isStrategyAdmin'
    address(stor3.length) = address(arg1)
    emit 0x2008f2ad: address(arg1)
}

function sub_98598577(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor5.length) != msg.sender:
        revert with 0, '401: !isStopLossAdmin'
    address(stor5.length) = address(arg1)
    emit 0x52c8a7b4: address(arg1)
}

function sub_c68df159(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(stor3.length) != msg.sender:
        revert with 0, '401: !isStrategyAdmin'
    require ext_code.size(address(arg2))
    call address(arg2).0xcc676ce3 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd5779c28: address(arg1), address(arg2)
}

function sub_e50179b0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(stor3.length) != msg.sender:
        revert with 0, '401: !isStrategyAdmin'
    require ext_code.size(address(arg2))
    call address(arg2).0x919444ea with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1f9128f4: address(arg1), address(arg2)
}

function sub_7bd13a89(?) payable {
    require calldata.size - 4 >= 32
    if uint8(proposal[arg1].field_3744) != 1:
        revert with 0, 'proposal status must be PENDING'
    if not proposal[arg1].field_0:
        revert with 0, 'pending proposal not exists'
    if address(proposal[arg1].field_2816) != msg.sender:
        revert with 0, '!only owner'
    uint8(proposal[arg1].field_3744) = 4
    emit 0xdd42bfed: proposal[arg1].field_0, proposal[arg1].field_256, proposal[arg1].field_512, proposal[arg1].field_768, proposal[arg1].field_1024, proposal[arg1].field_1280, proposal[arg1].field_1536, proposal[arg1].field_1792, proposal[arg1].field_2048, proposal[arg1].field_2304, address(proposal[arg1].field_2560), address(proposal[arg1].field_2816), address(proposal[arg1].field_3072), address(proposal[arg1].field_3328), address(proposal[arg1].field_3584), 0
}

function getPendingProposals() payable {
    mem[64] = (32 * stor11.length) + 128
    mem[96] = stor11.length
    s = 128
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        _25 = mem[64]
        mem[64] = mem[64] + 512
        mem[_25] = stor11[idx].field_0
        mem[_25 + 32] = stor11[idx].field_256
        mem[_25 + 64] = stor11[idx].field_512
        mem[_25 + 96] = stor11[idx].field_768
        mem[_25 + 128] = stor11[idx].field_1024
        mem[_25 + 160] = stor11[idx].field_1280
        mem[_25 + 192] = stor11[idx].field_1536
        mem[_25 + 224] = stor11[idx].field_1792
        mem[_25 + 256] = stor11[idx].field_2048
        mem[_25 + 288] = stor11[idx].field_2304
        mem[_25 + 320] = address(stor11[idx].field_2560)
        mem[_25 + 352] = address(stor11[idx].field_2816)
        mem[_25 + 384] = address(stor11[idx].field_3072)
        mem[_25 + 416] = address(stor11[idx].field_3328)
        mem[_25 + 448] = address(stor11[idx].field_3584)
        mem[_25 + 480] = uint8(stor11[idx].field_3744)
        mem[s] = _25
        s = s + 32
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _27:
        _46 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_46 + 32]
        mem[s + 64] = mem[_46 + 64]
        mem[s + 96] = mem[_46 + 96]
        mem[s + 128] = mem[_46 + 128]
        mem[s + 160] = mem[_46 + 160]
        mem[s + 192] = mem[_46 + 192]
        mem[s + 224] = mem[_46 + 224]
        mem[s + 256] = mem[_46 + 256]
        mem[s + 288] = mem[_46 + 288]
        mem[s + 320] = mem[_46 + 332 len 20]
        mem[s + 352] = mem[_46 + 364 len 20]
        mem[s + 384] = mem[_46 + 396 len 20]
        mem[s + 416] = mem[_46 + 428 len 20]
        mem[s + 448] = mem[_46 + 460 len 20]
        mem[s + 480] = mem[_46 + 511 len 1]
        idx = idx + 1
        s = s + 512
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _26 + (512 * _27) + -mem[64] + 64
}

function sub_a722d84c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if address(stor3.length) != msg.sender:
        revert with 0, '401: !isStrategyAdmin'
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if address(stor14[idx].field_256) == address(arg2):
            revert with 0, 'Already exists'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor14.length++
    if bool(stor14[stor14.length].field_0):
        if bool(stor14[stor14.length].field_0) == uint255(stor14[stor14.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[stor14.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14[stor14.length].field_0 = 0
            idx = 0
            while (uint255(stor14[stor14.length].field_0) * 0.5) + 31 / 32 > idx:
                stor14[(2 * stor14.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14[stor14.length].field_0) == stor14[stor14.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[stor14.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14[stor14.length].field_0 = 0
            idx = 0
            while stor14[stor14.length].field_1 % 128 + 31 / 32 > idx:
                stor14[(2 * stor14.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    storBB7B[stor14.length] = address(arg2)
    emit 0xacd011df: 32, 64, uint64(arg2) << 96, arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
}

function sub_f216847b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if address(stor4.length) != msg.sender:
        revert with 0, '401: !isRouterAdmin'
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if address(stor15[idx].field_256) == address(arg2):
            revert with 0, 'router: Already exists'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor15.length++
    if bool(stor15[stor15.length].field_0):
        if bool(stor15[stor15.length].field_0) == uint255(stor15[stor15.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[stor15.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15[stor15.length].field_0 = 0
            idx = 0
            while (uint255(stor15[stor15.length].field_0) * 0.5) + 31 / 32 > idx:
                stor15[(2 * stor15.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[stor15.length].field_0) == stor15[stor15.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[stor15.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15[stor15.length].field_0 = 0
            idx = 0
            while stor15[stor15.length].field_1 % 128 + 31 / 32 > idx:
                stor15[(2 * stor15.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor8D11[stor15.length] = address(arg2)
    emit 0x32d2fea2: 32, 64, uint64(arg2) << 96, arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
}

function sub_aa638622(?) payable {
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    if 0 >= stor12.length:
        mem[(32 * stor12.length) + 128] = 32
        mem[(32 * stor12.length) + 160] = stor12.length
        idx = 0
        s = (32 * stor12.length) + 192
        t = 128
        while idx < stor12.length:
            _46 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_46 + 32]
            mem[s + 64] = mem[_46 + 64]
            mem[s + 96] = mem[_46 + 96]
            mem[s + 128] = mem[_46 + 128]
            mem[s + 160] = mem[_46 + 160]
            mem[s + 192] = mem[_46 + 192]
            mem[s + 224] = mem[_46 + 224]
            mem[s + 256] = mem[_46 + 256]
            mem[s + 288] = mem[_46 + 288]
            mem[s + 320] = mem[_46 + 332 len 20]
            mem[s + 352] = mem[_46 + 364 len 20]
            mem[s + 384] = mem[_46 + 396 len 20]
            mem[s + 416] = mem[_46 + 428 len 20]
            mem[s + 448] = mem[_46 + 460 len 20]
            mem[s + 480] = mem[_46 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return Array(len=stor12.length, data=mem[(32 * stor12.length) + 192 len Mask(247, 0, stor12.length)])
    mem[0] = 12
    mem[64] = (32 * stor12.length) + 640
    mem[(32 * stor12.length) + 128] = uint256(stor12.field_0)
    mem[(32 * stor12.length) + 160] = uint256(stor12.field_256)
    mem[(32 * stor12.length) + 192] = uint256(stor12.field_512)
    mem[(32 * stor12.length) + 224] = uint256(stor12.field_768)
    mem[(32 * stor12.length) + 256] = uint256(stor12.field_1024)
    mem[(32 * stor12.length) + 288] = uint256(stor12.field_1280)
    mem[(32 * stor12.length) + 320] = uint256(stor12.field_1536)
    mem[(32 * stor12.length) + 352] = uint256(stor12.field_1792)
    mem[(32 * stor12.length) + 384] = uint256(stor12.field_2048)
    mem[(32 * stor12.length) + 416] = uint256(stor12.field_2304)
    mem[(32 * stor12.length) + 448] = address(stor12.field_2560)
    mem[(32 * stor12.length) + 480] = address(stor12.field_2816)
    mem[(32 * stor12.length) + 512] = address(stor12.field_3072)
    mem[(32 * stor12.length) + 544] = address(stor12.field_3328)
    mem[(32 * stor12.length) + 576] = address(stor12.field_3584)
    mem[(32 * stor12.length) + 608] = uint8(stor12.field_3744)
    mem[128] = (32 * stor12.length) + 128
    s = 160
    idx = 1
    while idx < stor12.length:
        mem[0] = 12
        _48 = mem[64]
        mem[64] = mem[64] + 512
        mem[_48] = stor12[idx].field_0
        mem[_48 + 32] = stor12[idx].field_256
        mem[_48 + 64] = stor12[idx].field_512
        mem[_48 + 96] = stor12[idx].field_768
        mem[_48 + 128] = stor12[idx].field_1024
        mem[_48 + 160] = stor12[idx].field_1280
        mem[_48 + 192] = stor12[idx].field_1536
        mem[_48 + 224] = stor12[idx].field_1792
        mem[_48 + 256] = stor12[idx].field_2048
        mem[_48 + 288] = stor12[idx].field_2304
        mem[_48 + 320] = address(stor12[idx].field_2560)
        mem[_48 + 352] = address(stor12[idx].field_2816)
        mem[_48 + 384] = address(stor12[idx].field_3072)
        mem[_48 + 416] = address(stor12[idx].field_3328)
        mem[_48 + 448] = address(stor12[idx].field_3584)
        mem[_48 + 480] = uint8(stor12[idx].field_3744)
        mem[s] = _48
        s = s + 32
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _67 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _67:
        _86 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_86 + 32]
        mem[s + 64] = mem[_86 + 64]
        mem[s + 96] = mem[_86 + 96]
        mem[s + 128] = mem[_86 + 128]
        mem[s + 160] = mem[_86 + 160]
        mem[s + 192] = mem[_86 + 192]
        mem[s + 224] = mem[_86 + 224]
        mem[s + 256] = mem[_86 + 256]
        mem[s + 288] = mem[_86 + 288]
        mem[s + 320] = mem[_86 + 332 len 20]
        mem[s + 352] = mem[_86 + 364 len 20]
        mem[s + 384] = mem[_86 + 396 len 20]
        mem[s + 416] = mem[_86 + 428 len 20]
        mem[s + 448] = mem[_86 + 460 len 20]
        mem[s + 480] = mem[_86 + 511 len 1]
        idx = idx + 1
        s = s + 512
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _61 + (512 * _67) + -mem[64] + 64
}

function sub_e6761929(?) payable {
    mem[64] = (32 * stor13.length) + 128
    mem[96] = stor13.length
    if 0 >= stor13.length:
        mem[(32 * stor13.length) + 128] = 32
        mem[(32 * stor13.length) + 160] = stor13.length
        idx = 0
        s = (32 * stor13.length) + 192
        t = 128
        while idx < stor13.length:
            _46 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_46 + 32]
            mem[s + 64] = mem[_46 + 64]
            mem[s + 96] = mem[_46 + 96]
            mem[s + 128] = mem[_46 + 128]
            mem[s + 160] = mem[_46 + 160]
            mem[s + 192] = mem[_46 + 192]
            mem[s + 224] = mem[_46 + 224]
            mem[s + 256] = mem[_46 + 256]
            mem[s + 288] = mem[_46 + 288]
            mem[s + 320] = mem[_46 + 332 len 20]
            mem[s + 352] = mem[_46 + 364 len 20]
            mem[s + 384] = mem[_46 + 396 len 20]
            mem[s + 416] = mem[_46 + 428 len 20]
            mem[s + 448] = mem[_46 + 460 len 20]
            mem[s + 480] = mem[_46 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return Array(len=stor13.length, data=mem[(32 * stor13.length) + 192 len Mask(247, 0, stor13.length)])
    mem[0] = 13
    mem[64] = (32 * stor13.length) + 640
    mem[(32 * stor13.length) + 128] = uint256(stor13.field_0)
    mem[(32 * stor13.length) + 160] = uint256(stor13.field_256)
    mem[(32 * stor13.length) + 192] = uint256(stor13.field_512)
    mem[(32 * stor13.length) + 224] = uint256(stor13.field_768)
    mem[(32 * stor13.length) + 256] = uint256(stor13.field_1024)
    mem[(32 * stor13.length) + 288] = uint256(stor13.field_1280)
    mem[(32 * stor13.length) + 320] = uint256(stor13.field_1536)
    mem[(32 * stor13.length) + 352] = uint256(stor13.field_1792)
    mem[(32 * stor13.length) + 384] = uint256(stor13.field_2048)
    mem[(32 * stor13.length) + 416] = uint256(stor13.field_2304)
    mem[(32 * stor13.length) + 448] = address(stor13.field_2560)
    mem[(32 * stor13.length) + 480] = address(stor13.field_2816)
    mem[(32 * stor13.length) + 512] = address(stor13.field_3072)
    mem[(32 * stor13.length) + 544] = address(stor13.field_3328)
    mem[(32 * stor13.length) + 576] = address(stor13.field_3584)
    mem[(32 * stor13.length) + 608] = uint8(stor13.field_3744)
    mem[128] = (32 * stor13.length) + 128
    s = 160
    idx = 1
    while idx < stor13.length:
        mem[0] = 13
        _48 = mem[64]
        mem[64] = mem[64] + 512
        mem[_48] = stor13[idx].field_0
        mem[_48 + 32] = stor13[idx].field_256
        mem[_48 + 64] = stor13[idx].field_512
        mem[_48 + 96] = stor13[idx].field_768
        mem[_48 + 128] = stor13[idx].field_1024
        mem[_48 + 160] = stor13[idx].field_1280
        mem[_48 + 192] = stor13[idx].field_1536
        mem[_48 + 224] = stor13[idx].field_1792
        mem[_48 + 256] = stor13[idx].field_2048
        mem[_48 + 288] = stor13[idx].field_2304
        mem[_48 + 320] = address(stor13[idx].field_2560)
        mem[_48 + 352] = address(stor13[idx].field_2816)
        mem[_48 + 384] = address(stor13[idx].field_3072)
        mem[_48 + 416] = address(stor13[idx].field_3328)
        mem[_48 + 448] = address(stor13[idx].field_3584)
        mem[_48 + 480] = uint8(stor13[idx].field_3744)
        mem[s] = _48
        s = s + 32
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _67 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _67:
        _86 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_86 + 32]
        mem[s + 64] = mem[_86 + 64]
        mem[s + 96] = mem[_86 + 96]
        mem[s + 128] = mem[_86 + 128]
        mem[s + 160] = mem[_86 + 160]
        mem[s + 192] = mem[_86 + 192]
        mem[s + 224] = mem[_86 + 224]
        mem[s + 256] = mem[_86 + 256]
        mem[s + 288] = mem[_86 + 288]
        mem[s + 320] = mem[_86 + 332 len 20]
        mem[s + 352] = mem[_86 + 364 len 20]
        mem[s + 384] = mem[_86 + 396 len 20]
        mem[s + 416] = mem[_86 + 428 len 20]
        mem[s + 448] = mem[_86 + 460 len 20]
        mem[s + 480] = mem[_86 + 511 len 1]
        idx = idx + 1
        s = s + 512
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _61 + (512 * _67) + -mem[64] + 64
}

function getRouters() payable {
    mem[64] = (32 * stor15.length) + 128
    mem[96] = stor15.length
    s = 128
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        _20 = mem[64]
        mem[64] = mem[64] + 64
        if bool(stor15[idx].field_0):
            if bool(stor15[idx].field_0) == uint255(stor15[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor15[idx].field_0) * 0.5) + 32
            mem[_24] = uint255(stor15[idx].field_0) * 0.5
            if bool(stor15[idx].field_0):
                if bool(stor15[idx].field_0) == uint255(stor15[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor15[idx].field_0):
                    if 31 >= uint255(stor15[idx].field_0) * 0.5:
                        mem[_24 + 32] = 256 * Mask(248, 0, stor15[idx].field_8)
                    else:
                        mem[0] = (2 * idx) + sha3(15)
                        mem[_24 + 32] = stor15[idx].field_0
                        t = _24 + 32
                        u = sha3(mem[0])
                        while _24 + (uint255(stor15[idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_20] = _24
                mem[_20 + 32] = address(stor15[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor15[idx].field_0) == stor15[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor15[idx].field_1 % 128:
                mem[_20] = _24
                mem[_20 + 32] = address(stor15[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor15[idx].field_1 % 128:
                mem[_24 + 32] = 256 * Mask(248, 0, stor15[idx].field_8)
                mem[_20] = _24
                mem[_20 + 32] = address(stor15[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + sha3(15)
            mem[_24 + 32] = stor15[idx].field_0
            t = _24 + 32
            u = sha3(mem[0])
            while _24 + stor15[u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_20] = _24
            mem[_20 + 32] = address(stor15[u].field_256)
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor15[idx].field_0) == stor15[idx].field_1 % 128 < 32:
            revert with 0, 34
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(stor15[idx].field_1 % 128) + 32
        mem[_28] = stor15[idx].field_1 % 128
        if bool(stor15[idx].field_0):
            if bool(stor15[idx].field_0) == uint255(stor15[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor15[idx].field_0):
                mem[_20] = _28
                mem[_20 + 32] = address(stor15[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor15[idx].field_0) * 0.5:
                mem[_28 + 32] = 256 * Mask(248, 0, stor15[idx].field_8)
                mem[_20] = _28
                mem[_20 + 32] = address(stor15[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + sha3(15)
            mem[_28 + 32] = stor15[idx].field_0
            t = _28 + 32
            u = sha3(mem[0])
            while _28 + (uint255(stor15[u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_20] = _28
            mem[_20 + 32] = address(stor15[u].field_256)
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor15[idx].field_0) == stor15[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor15[idx].field_1 % 128:
            if 31 >= stor15[idx].field_1 % 128:
                mem[_28 + 32] = 256 * Mask(248, 0, stor15[idx].field_8)
            else:
                mem[0] = (2 * idx) + sha3(15)
                mem[_28 + 32] = stor15[idx].field_0
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + stor15[idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_20] = _28
        mem[_20 + 32] = address(stor15[idx].field_256)
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _22:
        mem[t] = u + -_21 - 64
        _36 = mem[s]
        _38 = mem[mem[s]]
        mem[u] = 64
        _39 = mem[_38]
        mem[u + 64] = mem[_38]
        v = 0
        while v < _39:
            mem[v + u + 96] = mem[_38 + v + 32]
            v = v + 32
            continue 
        if ceil32(_39) > _39:
            mem[u + _39 + 96] = 0
        mem[u + 32] = mem[_36 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_39) + u + 96
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_54fdc5e3(?) payable {
    mem[64] = (32 * stor14.length) + 128
    mem[96] = stor14.length
    s = 128
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        _20 = mem[64]
        mem[64] = mem[64] + 64
        if bool(stor14[idx].field_0):
            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor14[idx].field_0) * 0.5) + 32
            mem[_24] = uint255(stor14[idx].field_0) * 0.5
            if bool(stor14[idx].field_0):
                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor14[idx].field_0):
                    if 31 >= uint255(stor14[idx].field_0) * 0.5:
                        mem[_24 + 32] = 256 * Mask(248, 0, stor14[idx].field_8)
                    else:
                        mem[0] = (2 * idx) + sha3(14)
                        mem[_24 + 32] = stor14[idx].field_0
                        t = _24 + 32
                        u = sha3(mem[0])
                        while _24 + (uint255(stor14[idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_20] = _24
                mem[_20 + 32] = address(stor14[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor14[idx].field_1 % 128:
                mem[_20] = _24
                mem[_20 + 32] = address(stor14[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor14[idx].field_1 % 128:
                mem[_24 + 32] = 256 * Mask(248, 0, stor14[idx].field_8)
                mem[_20] = _24
                mem[_20 + 32] = address(stor14[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + sha3(14)
            mem[_24 + 32] = stor14[idx].field_0
            t = _24 + 32
            u = sha3(mem[0])
            while _24 + stor14[u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_20] = _24
            mem[_20 + 32] = address(stor14[u].field_256)
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
            revert with 0, 34
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(stor14[idx].field_1 % 128) + 32
        mem[_28] = stor14[idx].field_1 % 128
        if bool(stor14[idx].field_0):
            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor14[idx].field_0):
                mem[_20] = _28
                mem[_20 + 32] = address(stor14[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor14[idx].field_0) * 0.5:
                mem[_28 + 32] = 256 * Mask(248, 0, stor14[idx].field_8)
                mem[_20] = _28
                mem[_20 + 32] = address(stor14[idx].field_256)
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + sha3(14)
            mem[_28 + 32] = stor14[idx].field_0
            t = _28 + 32
            u = sha3(mem[0])
            while _28 + (uint255(stor14[u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_20] = _28
            mem[_20 + 32] = address(stor14[u].field_256)
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor14[idx].field_1 % 128:
            if 31 >= stor14[idx].field_1 % 128:
                mem[_28 + 32] = 256 * Mask(248, 0, stor14[idx].field_8)
            else:
                mem[0] = (2 * idx) + sha3(14)
                mem[_28 + 32] = stor14[idx].field_0
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + stor14[idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_20] = _28
        mem[_20 + 32] = address(stor14[idx].field_256)
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _22:
        mem[t] = u + -_21 - 64
        _36 = mem[s]
        _38 = mem[mem[s]]
        mem[u] = 64
        _39 = mem[_38]
        mem[u + 64] = mem[_38]
        v = 0
        while v < _39:
            mem[v + u + 96] = mem[_38 + v + 32]
            v = v + 32
            continue 
        if ceil32(_39) > _39:
            mem[u + _39 + 96] = 0
        mem[u + 32] = mem[_36 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_39) + u + 96
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_c3476777(?) payable {
    require calldata.size - 4 >= 64
    if uint8(proposal[arg1].field_3744) != 1:
        revert with 0, 'proposal status must be PENDING'
    if not proposal[arg1].field_1792:
        revert with 0, '!pendingProposal'
    if proposal[arg1].field_256 != arg2:
        revert with 0, 'deposit amount its incorrect'
    call address(proposal[arg1].field_2560).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(proposal[arg1].field_3328), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'cannot transfer to strategy'
    proposal[arg1].field_3072 = msg.sender or Mask(96, 160, proposal[arg1].field_3072)
    proposal[arg1].field_2048 = block.timestamp
    if block.timestamp > !(proposal[arg1].field_1536 / 10^18):
        revert with 0, 17
    proposal[arg1].field_2304 = block.timestamp + (proposal[arg1].field_1536 / 10^18)
    uint8(proposal[arg1].field_3744) = 2
    stor6[address(stor10[arg1].field_3072)].field_0++
    stor6[address(stor10[arg1].field_3072)][stor6[address(stor10[arg1].field_3072)].field_0].field_0 = proposal[arg1].field_0
    address(stor8[stor10[arg1].field_0]) = address(proposal[arg1].field_3072)
    stor12.length++
    stor12[stor12.length].field_0 = proposal[arg1].field_0
    storDF69[stor12.length] = proposal[arg1].field_256
    storDF69[stor12.length] = proposal[arg1].field_512
    storDF69[stor12.length] = proposal[arg1].field_768
    storDF69[stor12.length] = proposal[arg1].field_1024
    storDF69[stor12.length] = proposal[arg1].field_1280
    storDF69[stor12.length] = proposal[arg1].field_1536
    storDF69[stor12.length] = proposal[arg1].field_1792
    storDF69[stor12.length] = proposal[arg1].field_2048
    storDF69[stor12.length] = proposal[arg1].field_2304
    storDF69[stor12.length] = address(proposal[arg1].field_2560)
    storDF69[stor12.length] = address(proposal[arg1].field_2816)
    storDF69[stor12.length] = address(proposal[arg1].field_3072)
    storDF69[stor12.length] = address(proposal[arg1].field_3328)
    address(storDF69[stor12.length].field_0) = address(proposal[arg1].field_3584)
    address(storDF69[stor12.length].field_0) = address(proposal[arg1].field_3584)
    Mask(96, 0, storDF69[stor12.length].field_160) = uint8(proposal[arg1].field_3744)
    idx = 0
    s = 0
    while idx < stor11.length:
        mem[0] = 11
        if idx == -1:
            revert with 0, 17
        if stor11[idx].field_0 != proposal[arg1].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        if stor11.length < 1:
            revert with 0, 17
        if stor11.length - 1 >= stor11.length:
            revert with 0, 50
        if 0 >= stor11.length:
            revert with 0, 50
        uint256(stor11.field_0) = stor11[stor11.length].field_0
        uint256(stor11.field_256) = stor11[stor11.length].field_0
        uint256(stor11.field_512) = stor11[stor11.length].field_0
        uint256(stor11.field_768) = stor11[stor11.length].field_0
        uint256(stor11.field_1024) = stor11[stor11.length].field_0
        uint256(stor11.field_1280) = stor11[stor11.length].field_0
        uint256(stor11.field_1536) = stor11[stor11.length].field_0
        uint256(stor11.field_1792) = stor11[stor11.length].field_0
        uint256(stor11.field_2048) = stor11[stor11.length].field_0
        uint256(stor11.field_2304) = stor11[stor11.length].field_0
        address(stor11.field_2560) = address(stor11[stor11.length].field_0)
        address(stor11.field_2816) = address(stor11[stor11.length].field_0)
        address(stor11.field_3072) = address(stor11[stor11.length].field_0)
        address(stor11.field_3328) = address(stor11[stor11.length].field_0)
        address(stor11.field_3584) = address(stor11[stor11.length].field_0)
        address(stor11.field_3584) = address(stor11[stor11.length].field_0)
        Mask(96, 0, stor11.field_3744) = uint8(stor11[stor11.length].field_0)
        if not stor11.length:
            revert with 0, 49
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        stor11[stor11.length].field_0 = 0
        address(stor11[stor11.length].field_0) = 0
        address(stor11[stor11.length].field_0) = 0
        address(stor11[stor11.length].field_0) = 0
        address(stor11[stor11.length].field_0) = 0
        Mask(168, 0, stor11[stor11.length].field_0) = 0
        stor11.length--
    require ext_code.size(address(proposal[arg1].field_3584))
    call address(proposal[arg1].field_3584).0x62cb0a05 with:
         gas gas_remaining wei
        args address(proposal[arg1].field_3328), proposal[arg1].field_0, proposal[arg1].field_256, proposal[arg1].field_512, proposal[arg1].field_768, proposal[arg1].field_1024, proposal[arg1].field_1280, proposal[arg1].field_1536, proposal[arg1].field_1792, proposal[arg1].field_2048, proposal[arg1].field_2304, address(proposal[arg1].field_2560), address(proposal[arg1].field_2816), address(proposal[arg1].field_3072), address(proposal[arg1].field_3328), address(proposal[arg1].field_3584), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf0703717: proposal[arg1].field_0, proposal[arg1].field_256, proposal[arg1].field_512, proposal[arg1].field_768, proposal[arg1].field_1024, proposal[arg1].field_1280, proposal[arg1].field_1536, proposal[arg1].field_1792, proposal[arg1].field_2048, proposal[arg1].field_2304, address(proposal[arg1].field_2560), address(proposal[arg1].field_2816), address(proposal[arg1].field_3072), address(proposal[arg1].field_3328), address(proposal[arg1].field_3584), 0
}

function sub_6a91f71a(?) payable {
    require calldata.size - 4 >= 256
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if address(stor14[idx].field_256) != address(arg7):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor15.length:
            mem[0] = 15
            if address(stor15[idx].field_256) != address(arg8):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            call address(arg7).0xb69adad1 with:
                 gas gas_remaining wei
                args arg2, arg1, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor0 == -1:
                revert with 0, 17
            stor0++
            if stor0 >= 123456789:
                stor0 = 1
            call address(arg7).deploy(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sha3(msg.sender, block.timestamp, stor0), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            stor7[address(msg.sender)].field_0++
            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = sha3(msg.sender, block.timestamp, stor0)
            address(stor9[msg.sender][block.timestamp][stor0]) = msg.sender
            proposal[msg.sender][block.timestamp][stor0].field_0 = sha3(msg.sender, block.timestamp, stor0)
            proposal[msg.sender][block.timestamp][stor0].field_256 = arg3
            proposal[msg.sender][block.timestamp][stor0].field_512 = arg1
            proposal[msg.sender][block.timestamp][stor0].field_768 = arg2
            proposal[msg.sender][block.timestamp][stor0].field_1024 = ext_call.return_data[0]
            proposal[msg.sender][block.timestamp][stor0].field_1280 = arg4
            proposal[msg.sender][block.timestamp][stor0].field_1536 = arg5
            proposal[msg.sender][block.timestamp][stor0].field_1792 = block.timestamp
            proposal[msg.sender][block.timestamp][stor0].field_2048 = 0
            proposal[msg.sender][block.timestamp][stor0].field_2304 = 0
            address(proposal[msg.sender][block.timestamp][stor0].field_2560) = address(arg6)
            address(proposal[msg.sender][block.timestamp][stor0].field_2816) = msg.sender
            address(proposal[msg.sender][block.timestamp][stor0].field_3072) = 0
            proposal[msg.sender][block.timestamp][stor0].field_3328 % 1 = 0
            address(proposal[msg.sender][block.timestamp][stor0].field_3328) = address(ext_call.return_data[0])
            address(proposal[msg.sender][block.timestamp][stor0].field_3584) = address(arg7)
            uint8(proposal[msg.sender][block.timestamp][stor0].field_3744) = 1
            stor11.length++
            stor11[stor11.length].field_0 = sha3(msg.sender, block.timestamp, stor0)
            stor11[stor11.length].field_256 = arg3
            stor11[stor11.length].field_512 = arg1
            stor11[stor11.length].field_768 = arg2
            stor11[stor11.length].field_1024 = ext_call.return_data[0]
            stor11[stor11.length].field_1280 = arg4
            stor11[stor11.length].field_1536 = arg5
            stor11[stor11.length].field_1792 = block.timestamp
            stor11[stor11.length].field_2048 = 0
            stor11[stor11.length].field_2304 = 0
            address(stor11[stor11.length].field_2560) = address(arg6)
            address(stor11[stor11.length].field_2816) = msg.sender
            address(stor11[stor11.length].field_3072) = 0
            stor11[stor11.length].field_3328 % 1 = 0
            address(stor11[stor11.length].field_3328) = address(ext_call.return_data[0])
            address(stor11[stor11.length].field_3584) = address(arg7)
            uint8(stor11[stor11.length].field_3744) = 1
            mem[(2 * ceil32(return_data.size)) + 728] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 760] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 792] = arg1
            call address(arg6).0x23b872dd with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 728 len ceil32(return_data.size) + 96]
            mem[(2 * ceil32(return_data.size)) + 724] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 724] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 728] = 32
                mem[(4 * ceil32(return_data.size)) + 760] = 27
                mem[(4 * ceil32(return_data.size)) + 792] = 'cannot transfer to strategy'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 724
                   len (5 * ceil32(return_data.size)) + 100
            mem[(4 * ceil32(return_data.size)) + 728] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 760] = address(arg8)
            mem[(4 * ceil32(return_data.size)) + 792] = sha3(msg.sender, block.timestamp, stor0)
            mem[(4 * ceil32(return_data.size)) + 824] = arg3
            mem[(4 * ceil32(return_data.size)) + 856] = arg1
            mem[(4 * ceil32(return_data.size)) + 888] = arg2
            mem[(4 * ceil32(return_data.size)) + 920] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 952] = arg4
            mem[(4 * ceil32(return_data.size)) + 984] = arg5
            mem[(4 * ceil32(return_data.size)) + 1016] = block.timestamp
            mem[(4 * ceil32(return_data.size)) + 1048] = 0
            mem[(4 * ceil32(return_data.size)) + 1080] = 0
            mem[(4 * ceil32(return_data.size)) + 1112] = address(arg6)
            mem[(4 * ceil32(return_data.size)) + 1144] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 1176] = 0
            mem[(4 * ceil32(return_data.size)) + 1208] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 1240] = address(arg7)
            mem[(4 * ceil32(return_data.size)) + 1272] = 1
            require ext_code.size(address(arg7))
            call address(arg7).0x9da22db6 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 728 len (5 * ceil32(return_data.size)) + 576]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 724] = sha3(msg.sender, block.timestamp, stor0)
            mem[(4 * ceil32(return_data.size)) + 756] = arg3
            mem[(4 * ceil32(return_data.size)) + 788] = arg1
            mem[(4 * ceil32(return_data.size)) + 820] = arg2
            mem[(4 * ceil32(return_data.size)) + 852] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 884] = arg4
            mem[(4 * ceil32(return_data.size)) + 916] = arg5
            mem[(4 * ceil32(return_data.size)) + 948] = block.timestamp
            mem[(4 * ceil32(return_data.size)) + 980] = 0
            mem[(4 * ceil32(return_data.size)) + 1012] = 0
            mem[(4 * ceil32(return_data.size)) + 1044] = address(arg6)
            mem[(4 * ceil32(return_data.size)) + 1076] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 1108] = 0
            mem[(4 * ceil32(return_data.size)) + 1140] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 1172] = address(arg7)
            mem[(4 * ceil32(return_data.size)) + 1204] = 1
            emit 0xcc1a7ddb: mem[(4 * ceil32(return_data.size)) + 724 len (5 * ceil32(return_data.size)) + 512]
        revert with 0, 'Invalid router'
    revert with 0, 'Invalid strategy'
}

function sub_ba449de1(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -cd[36] + -cd[idx] - 36
        _32 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(cd[36] + cd[idx] + 36)] == address(cd[(cd[36] + cd[idx] + 36)])
        mem[_32] = cd[(cd[36] + cd[idx] + 36)]
        require cd[(cd[36] + cd[idx] + 68)] <= test266151307()
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _45 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1
        mem[_45] = cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + (32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 68 <= calldata.size
        t = cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 68
        u = _45 + 32
        while t < cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + (32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_32 + 32] = _45
        mem[s] = _32
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(proposal[cd[4]].field_3744) != 2:
        revert with 0, 'proposal status must be LIVE'
    mem[0] = cd[4]
    mem[32] = 10
    if not proposal[cd[4]].field_0:
        revert with 0, '404 live proposal'
    _33 = mem[64]
    mem[mem[64]] = 0xa8b5870200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(proposal[cd[4]].field_3328)
    mem[mem[64] + 36] = 64
    _37 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 100
    u = mem[64] + 100
    while idx < _37:
        mem[u] = t + -_33 - 100
        _56 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _58 = mem[_56 + 32]
        mem[t + 32] = 64
        _59 = mem[_58]
        mem[t + 64] = mem[_58]
        v = 0
        w = _58 + 32
        x = t + 96
        while v < _59:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _59 + 1
        w = _58 + (32 * _59) + 64
        t = t + (32 * _59) + 96
        u = u + 32
        continue 
    require ext_code.size(address(proposal[cd[4]].field_3584))
    call address(proposal[cd[4]].field_3584).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(proposal[cd[4]].field_3744) = 3
    require ext_code.size(address(proposal[cd[4]].field_3584))
    call address(proposal[cd[4]].field_3584).0x62cb0a05 with:
         gas gas_remaining wei
        args address(proposal[cd[4]].field_3328), proposal[cd[4]].field_0, proposal[cd[4]].field_256, proposal[cd[4]].field_512, proposal[cd[4]].field_768, proposal[cd[4]].field_1024, proposal[cd[4]].field_1280, proposal[cd[4]].field_1536, proposal[cd[4]].field_1792, proposal[cd[4]].field_2048, proposal[cd[4]].field_2304, address(proposal[cd[4]].field_2560), address(proposal[cd[4]].field_2816), address(proposal[cd[4]].field_3072), address(proposal[cd[4]].field_3328), address(proposal[cd[4]].field_3584), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13.length++
    mem[0] = 13
    stor13[stor13.length].field_0 = proposal[cd[4]].field_0
    storD7B6[stor13.length] = proposal[cd[4]].field_256
    storD7B6[stor13.length] = proposal[cd[4]].field_512
    storD7B6[stor13.length] = proposal[cd[4]].field_768
    storD7B6[stor13.length] = proposal[cd[4]].field_1024
    storD7B6[stor13.length] = proposal[cd[4]].field_1280
    storD7B6[stor13.length] = proposal[cd[4]].field_1536
    storD7B6[stor13.length] = proposal[cd[4]].field_1792
    storD7B6[stor13.length] = proposal[cd[4]].field_2048
    storD7B6[stor13.length] = proposal[cd[4]].field_2304
    storD7B6[stor13.length] = address(proposal[cd[4]].field_2560)
    storD7B6[stor13.length] = address(proposal[cd[4]].field_2816)
    storD7B6[stor13.length] = address(proposal[cd[4]].field_3072)
    storD7B6[stor13.length] = address(proposal[cd[4]].field_3328)
    address(storD7B6[stor13.length].field_0) = address(proposal[cd[4]].field_3584)
    address(storD7B6[stor13.length].field_0) = address(proposal[cd[4]].field_3584)
    Mask(96, 0, storD7B6[stor13.length].field_160) = uint8(proposal[cd[4]].field_3744)
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if idx == -1:
            revert with 0, 17
        if stor12[idx].field_0 != proposal[cd[4]].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        _75 = mem[64]
        mem[mem[64]] = proposal[cd[4]].field_0
        mem[mem[64] + 32] = proposal[cd[4]].field_256
        mem[mem[64] + 64] = proposal[cd[4]].field_512
        mem[mem[64] + 96] = proposal[cd[4]].field_768
        mem[mem[64] + 128] = proposal[cd[4]].field_1024
        mem[mem[64] + 160] = proposal[cd[4]].field_1280
        mem[mem[64] + 192] = proposal[cd[4]].field_1536
        mem[mem[64] + 224] = proposal[cd[4]].field_1792
        mem[mem[64] + 256] = proposal[cd[4]].field_2048
        mem[mem[64] + 288] = proposal[cd[4]].field_2304
        mem[mem[64] + 320] = address(proposal[cd[4]].field_2560)
        mem[mem[64] + 352] = address(proposal[cd[4]].field_2816)
        mem[mem[64] + 384] = address(proposal[cd[4]].field_3072)
        mem[mem[64] + 416] = address(proposal[cd[4]].field_3328)
        mem[mem[64] + 448] = address(proposal[cd[4]].field_3584)
        mem[mem[64] + 480] = 0
        mem[mem[64] + 512] = 544
        _77 = mem[96]
        mem[mem[64] + 544] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 576
        u = mem[64] + 576
        while idx < _77:
            mem[u] = t + -_75 - 576
            _94 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _96 = mem[_94 + 32]
            mem[t + 32] = 64
            _100 = mem[_96]
            mem[t + 64] = mem[_96]
            v = 0
            w = _96 + 32
            x = t + 96
            while v < _100:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _100 + 1
            w = _96 + (32 * _100) + 64
            t = t + (32 * _100) + 96
            u = u + 32
            continue 
    else:
        if stor12.length < 1:
            revert with 0, 17
        if stor12.length - 1 >= stor12.length:
            revert with 0, 50
        if 0 >= stor12.length:
            revert with 0, 50
        uint256(stor12.field_0) = stor12[stor12.length].field_0
        uint256(stor12.field_256) = stor12[stor12.length].field_0
        uint256(stor12.field_512) = stor12[stor12.length].field_0
        uint256(stor12.field_768) = stor12[stor12.length].field_0
        uint256(stor12.field_1024) = stor12[stor12.length].field_0
        uint256(stor12.field_1280) = stor12[stor12.length].field_0
        uint256(stor12.field_1536) = stor12[stor12.length].field_0
        uint256(stor12.field_1792) = stor12[stor12.length].field_0
        uint256(stor12.field_2048) = stor12[stor12.length].field_0
        uint256(stor12.field_2304) = stor12[stor12.length].field_0
        address(stor12.field_2560) = address(stor12[stor12.length].field_0)
        address(stor12.field_2816) = address(stor12[stor12.length].field_0)
        address(stor12.field_3072) = address(stor12[stor12.length].field_0)
        address(stor12.field_3328) = address(stor12[stor12.length].field_0)
        address(stor12.field_3584) = address(stor12[stor12.length].field_0)
        address(stor12.field_3584) = address(stor12[stor12.length].field_0)
        Mask(96, 0, stor12.field_3744) = uint8(stor12[stor12.length].field_0)
        if not stor12.length:
            revert with 0, 49
        mem[0] = 12
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        address(stor12[stor12.length].field_0) = 0
        address(stor12[stor12.length].field_0) = 0
        address(stor12[stor12.length].field_0) = 0
        address(stor12[stor12.length].field_0) = 0
        Mask(168, 0, stor12[stor12.length].field_0) = 0
        stor12.length--
        _83 = mem[64]
        mem[mem[64]] = proposal[cd[4]].field_0
        mem[mem[64] + 32] = proposal[cd[4]].field_256
        mem[mem[64] + 64] = proposal[cd[4]].field_512
        mem[mem[64] + 96] = proposal[cd[4]].field_768
        mem[mem[64] + 128] = proposal[cd[4]].field_1024
        mem[mem[64] + 160] = proposal[cd[4]].field_1280
        mem[mem[64] + 192] = proposal[cd[4]].field_1536
        mem[mem[64] + 224] = proposal[cd[4]].field_1792
        mem[mem[64] + 256] = proposal[cd[4]].field_2048
        mem[mem[64] + 288] = proposal[cd[4]].field_2304
        mem[mem[64] + 320] = address(proposal[cd[4]].field_2560)
        mem[mem[64] + 352] = address(proposal[cd[4]].field_2816)
        mem[mem[64] + 384] = address(proposal[cd[4]].field_3072)
        mem[mem[64] + 416] = address(proposal[cd[4]].field_3328)
        mem[mem[64] + 448] = address(proposal[cd[4]].field_3584)
        mem[mem[64] + 480] = 0
        mem[mem[64] + 512] = 544
        _87 = mem[96]
        mem[mem[64] + 544] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 576
        u = mem[64] + 576
        while idx < _87:
            mem[u] = t + -_83 - 576
            _97 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _99 = mem[_97 + 32]
            mem[t + 32] = 64
            _101 = mem[_99]
            mem[t + 64] = mem[_99]
            v = 0
            w = _99 + 32
            x = t + 96
            while v < _101:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            v = _101 + 1
            w = _99 + (32 * _101) + 64
            t = t + (32 * _101) + 96
            u = u + 32
            continue 
    emit 0x1fce9be8: mem[mem[64] len t - mem[64]]
}

function sub_be9645cf(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require 160 <= calldata.size + -cd[36] + -cd[idx] - 36
        _39 = mem[64]
        if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 160
        require cd[(cd[36] + cd[idx] + 36)] == address(cd[(cd[36] + cd[idx] + 36)])
        mem[_39] = cd[(cd[36] + cd[idx] + 36)]
        require cd[(cd[36] + cd[idx] + 68)] <= test266151307()
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _58 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 1
        mem[_58] = cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + (32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 68 <= calldata.size
        t = cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 68
        u = _58 + 32
        while t < cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + (32 * cd[(cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 68)] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_39 + 32] = _58
        mem[_39 + 64] = cd[(cd[36] + cd[idx] + 100)]
        mem[_39 + 96] = cd[(cd[36] + cd[idx] + 132)]
        mem[_39 + 128] = cd[(cd[36] + cd[idx] + 164)]
        mem[s] = _39
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(proposal[cd[4]].field_3744) != 2:
        revert with 0, 'proposal status must be LIVE'
    if address(stor5.length) != msg.sender:
        revert with 0, '401: !isStopLossAdmin'
    mem[0] = cd[4]
    mem[32] = 10
    if not proposal[cd[4]].field_0:
        revert with 0, '404 live proposal'
    _43 = mem[64]
    mem[mem[64]] = 0x9c9a728500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(proposal[cd[4]].field_3328)
    mem[mem[64] + 36] = proposal[cd[4]].field_0
    mem[mem[64] + 68] = 96
    _47 = mem[96]
    mem[mem[64] + 100] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 132
    u = mem[64] + 132
    while idx < _47:
        mem[u] = t + -_43 - 132
        _72 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _74 = mem[_72 + 32]
        mem[t + 32] = 160
        _75 = mem[_74]
        mem[t + 160] = mem[_74]
        v = 0
        w = _74 + 32
        x = t + 192
        while v < _75:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[t + 64] = mem[_72 + 64]
        mem[t + 96] = mem[_72 + 96]
        mem[t + 128] = mem[_72 + 128]
        v = _75 + 1
        w = _74 + (32 * _75) + 64
        t = t + (32 * _75) + 192
        u = u + 32
        continue 
    require ext_code.size(address(proposal[cd[4]].field_3584))
    call address(proposal[cd[4]].field_3584).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(proposal[cd[4]].field_3744) = 3
    require ext_code.size(address(proposal[cd[4]].field_3584))
    call address(proposal[cd[4]].field_3584).0x62cb0a05 with:
         gas gas_remaining wei
        args address(proposal[cd[4]].field_3328), proposal[cd[4]].field_0, proposal[cd[4]].field_256, proposal[cd[4]].field_512, proposal[cd[4]].field_768, proposal[cd[4]].field_1024, proposal[cd[4]].field_1280, proposal[cd[4]].field_1536, proposal[cd[4]].field_1792, proposal[cd[4]].field_2048, proposal[cd[4]].field_2304, address(proposal[cd[4]].field_2560), address(proposal[cd[4]].field_2816), address(proposal[cd[4]].field_3072), address(proposal[cd[4]].field_3328), address(proposal[cd[4]].field_3584), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13.length++
    mem[0] = 13
    stor13[stor13.length].field_0 = proposal[cd[4]].field_0
    storD7B6[stor13.length] = proposal[cd[4]].field_256
    storD7B6[stor13.length] = proposal[cd[4]].field_512
    storD7B6[stor13.length] = proposal[cd[4]].field_768
    storD7B6[stor13.length] = proposal[cd[4]].field_1024
    storD7B6[stor13.length] = proposal[cd[4]].field_1280
    storD7B6[stor13.length] = proposal[cd[4]].field_1536
    storD7B6[stor13.length] = proposal[cd[4]].field_1792
    storD7B6[stor13.length] = proposal[cd[4]].field_2048
    storD7B6[stor13.length] = proposal[cd[4]].field_2304
    storD7B6[stor13.length] = address(proposal[cd[4]].field_2560)
    storD7B6[stor13.length] = address(proposal[cd[4]].field_2816)
    storD7B6[stor13.length] = address(proposal[cd[4]].field_3072)
    storD7B6[stor13.length] = address(proposal[cd[4]].field_3328)
    address(storD7B6[stor13.length].field_0) = address(proposal[cd[4]].field_3584)
    address(storD7B6[stor13.length].field_0) = address(proposal[cd[4]].field_3584)
    Mask(96, 0, storD7B6[stor13.length].field_160) = uint8(proposal[cd[4]].field_3744)
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if idx == -1:
            revert with 0, 17
        if stor12[idx].field_0 != proposal[cd[4]].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        _100 = mem[64]
        mem[mem[64]] = proposal[cd[4]].field_0
        mem[mem[64] + 32] = proposal[cd[4]].field_256
        mem[mem[64] + 64] = proposal[cd[4]].field_512
        mem[mem[64] + 96] = proposal[cd[4]].field_768
        mem[mem[64] + 128] = proposal[cd[4]].field_1024
        mem[mem[64] + 160] = proposal[cd[4]].field_1280
        mem[mem[64] + 192] = proposal[cd[4]].field_1536
        mem[mem[64] + 224] = proposal[cd[4]].field_1792
        mem[mem[64] + 256] = proposal[cd[4]].field_2048
        mem[mem[64] + 288] = proposal[cd[4]].field_2304
        mem[mem[64] + 320] = address(proposal[cd[4]].field_2560)
        mem[mem[64] + 352] = address(proposal[cd[4]].field_2816)
        mem[mem[64] + 384] = address(proposal[cd[4]].field_3072)
        mem[mem[64] + 416] = address(proposal[cd[4]].field_3328)
        mem[mem[64] + 448] = address(proposal[cd[4]].field_3584)
        mem[mem[64] + 480] = 0
        mem[mem[64] + 512] = 544
        _102 = mem[96]
        mem[mem[64] + 544] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 576
        u = mem[64] + 576
        while idx < _102:
            mem[u] = t + -_100 - 576
            _125 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _127 = mem[_125 + 32]
            mem[t + 32] = 160
            _131 = mem[_127]
            mem[t + 160] = mem[_127]
            v = 0
            w = _127 + 32
            x = t + 192
            while v < _131:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 64] = mem[_125 + 64]
            mem[t + 96] = mem[_125 + 96]
            mem[t + 128] = mem[_125 + 128]
            v = _131 + 1
            w = _127 + (32 * _131) + 64
            t = t + (32 * _131) + 192
            u = u + 32
            continue 
    else:
        if stor12.length < 1:
            revert with 0, 17
        if stor12.length - 1 >= stor12.length:
            revert with 0, 50
        if 0 >= stor12.length:
            revert with 0, 50
        uint256(stor12.field_0) = stor12[stor12.length].field_0
        uint256(stor12.field_256) = stor12[stor12.length].field_0
        uint256(stor12.field_512) = stor12[stor12.length].field_0
        uint256(stor12.field_768) = stor12[stor12.length].field_0
        uint256(stor12.field_1024) = stor12[stor12.length].field_0
        uint256(stor12.field_1280) = stor12[stor12.length].field_0
        uint256(stor12.field_1536) = stor12[stor12.length].field_0
        uint256(stor12.field_1792) = stor12[stor12.length].field_0
        uint256(stor12.field_2048) = stor12[stor12.length].field_0
        uint256(stor12.field_2304) = stor12[stor12.length].field_0
        address(stor12.field_2560) = address(stor12[stor12.length].field_0)
        address(stor12.field_2816) = address(stor12[stor12.length].field_0)
        address(stor12.field_3072) = address(stor12[stor12.length].field_0)
        address(stor12.field_3328) = address(stor12[stor12.length].field_0)
        address(stor12.field_3584) = address(stor12[stor12.length].field_0)
        address(stor12.field_3584) = address(stor12[stor12.length].field_0)
        Mask(96, 0, stor12.field_3744) = uint8(stor12[stor12.length].field_0)
        if not stor12.length:
            revert with 0, 49
        mem[0] = 12
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        stor12[stor12.length].field_0 = 0
        address(stor12[stor12.length].field_0) = 0
        address(stor12[stor12.length].field_0) = 0
        address(stor12[stor12.length].field_0) = 0
        address(stor12[stor12.length].field_0) = 0
        Mask(168, 0, stor12[stor12.length].field_0) = 0
        stor12.length--
        _108 = mem[64]
        mem[mem[64]] = proposal[cd[4]].field_0
        mem[mem[64] + 32] = proposal[cd[4]].field_256
        mem[mem[64] + 64] = proposal[cd[4]].field_512
        mem[mem[64] + 96] = proposal[cd[4]].field_768
        mem[mem[64] + 128] = proposal[cd[4]].field_1024
        mem[mem[64] + 160] = proposal[cd[4]].field_1280
        mem[mem[64] + 192] = proposal[cd[4]].field_1536
        mem[mem[64] + 224] = proposal[cd[4]].field_1792
        mem[mem[64] + 256] = proposal[cd[4]].field_2048
        mem[mem[64] + 288] = proposal[cd[4]].field_2304
        mem[mem[64] + 320] = address(proposal[cd[4]].field_2560)
        mem[mem[64] + 352] = address(proposal[cd[4]].field_2816)
        mem[mem[64] + 384] = address(proposal[cd[4]].field_3072)
        mem[mem[64] + 416] = address(proposal[cd[4]].field_3328)
        mem[mem[64] + 448] = address(proposal[cd[4]].field_3584)
        mem[mem[64] + 480] = 0
        mem[mem[64] + 512] = 544
        _115 = mem[96]
        mem[mem[64] + 544] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 576
        u = mem[64] + 576
        while idx < _115:
            mem[u] = t + -_108 - 576
            _128 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _130 = mem[_128 + 32]
            mem[t + 32] = 160
            _132 = mem[_130]
            mem[t + 160] = mem[_130]
            v = 0
            w = _130 + 32
            x = t + 192
            while v < _132:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 64] = mem[_128 + 64]
            mem[t + 96] = mem[_128 + 96]
            mem[t + 128] = mem[_128 + 128]
            v = _132 + 1
            w = _130 + (32 * _132) + 64
            t = t + (32 * _132) + 192
            u = u + 32
            continue 
    emit 0x569aae10: mem[mem[64] len t - mem[64]]
}

function sub_522e9963(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 7
    mem[96] = stor7[address(arg1)].field_0
    if not stor7[address(arg1)].field_0:
        if stor7[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor7[address(arg1)].field_0) + 128] = stor7[address(arg1)].field_0
        mem[64] = (64 * stor7[address(arg1)].field_0) + 160
        if not stor7[address(arg1)].field_0:
            idx = 0
            s = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 10
                _63 = sha3(mem[(32 * idx) + 128], 10)
                _64 = mem[64]
                mem[64] = mem[64] + 512
                mem[_64] = proposal[mem[(32 * idx) + 128]].field_0
                mem[_64 + 32] = stor1[_63]
                mem[_64 + 64] = uint256(stor2[_63])
                mem[_64 + 96] = uint256(stor3[_63])
                mem[_64 + 128] = uint256(stor4[_63])
                mem[_64 + 160] = uint256(stor5[_63])
                mem[_64 + 192] = stor6[_63].field_0
                mem[_64 + 224] = stor7[_63].field_0
                mem[_64 + 256] = uint256(stor8[_63])
                mem[_64 + 288] = uint256(stor9[_63])
                mem[_64 + 320] = address(proposal[_63].field_0)
                mem[_64 + 352] = address(stor11[_63].field_0)
                mem[_64 + 384] = address(stor12[_63].field_0)
                mem[_64 + 416] = address(stor13[_63].field_0)
                mem[_64 + 448] = address(stor14[_63].field_0)
                mem[_64 + 480] = uint8(stor14[_63].field_160)
                if uint8(stor14[_63].field_160) != 1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _64
                if s > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s > test266151307():
                revert with 0, 65
            _61 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                t = 0
                while t < s:
                    if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    if t >= mem[_61]:
                        revert with 0, 50
                    mem[(32 * t) + _61 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 32
                _147 = mem[_61]
                mem[mem[64] + 32] = mem[_61]
                idx = 0
                s = mem[64] + 64
                t = _61 + 32
                while idx < _147:
                    _269 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_269 + 32]
                    mem[s + 64] = mem[_269 + 64]
                    mem[s + 96] = mem[_269 + 96]
                    mem[s + 128] = mem[_269 + 128]
                    mem[s + 160] = mem[_269 + 160]
                    mem[s + 192] = mem[_269 + 192]
                    mem[s + 224] = mem[_269 + 224]
                    mem[s + 256] = mem[_269 + 256]
                    mem[s + 288] = mem[_269 + 288]
                    mem[s + 320] = mem[_269 + 332 len 20]
                    mem[s + 352] = mem[_269 + 364 len 20]
                    mem[s + 384] = mem[_269 + 396 len 20]
                    mem[s + 416] = mem[_269 + 428 len 20]
                    mem[s + 448] = mem[_269 + 460 len 20]
                    mem[s + 480] = mem[_269 + 511 len 1]
                    idx = idx + 1
                    s = s + 512
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _144 + (512 * _147) + -mem[64] + 64
            mem[64] = _61 + (32 * s) + 544
            mem[_61 + (32 * s) + 32] = 0
            mem[_61 + (32 * s) + 64] = 0
            mem[_61 + (32 * s) + 96] = 0
            mem[_61 + (32 * s) + 128] = 0
            mem[_61 + (32 * s) + 160] = 0
            mem[_61 + (32 * s) + 192] = 0
            mem[_61 + (32 * s) + 224] = 0
            mem[_61 + (32 * s) + 256] = 0
            mem[_61 + (32 * s) + 288] = 0
            mem[_61 + (32 * s) + 320] = 0
            mem[_61 + (32 * s) + 352] = 0
            mem[_61 + (32 * s) + 384] = 0
            mem[_61 + (32 * s) + 416] = 0
            mem[_61 + (32 * s) + 448] = 0
            mem[_61 + (32 * s) + 480] = 0
            mem[_61 + (32 * s) + 512] = 0
            mem[var20001] = _61 + (32 * s) + 32
            t = var20001
            idx = var20002
            while idx - 1:
                mem[64] = mem[64] + 512
                mem[_61 + (32 * s) + 32] = 0
                mem[_61 + (32 * s) + 64] = 0
                mem[_61 + (32 * s) + 96] = 0
                mem[_61 + (32 * s) + 128] = 0
                mem[_61 + (32 * s) + 160] = 0
                mem[_61 + (32 * s) + 192] = 0
                mem[_61 + (32 * s) + 224] = 0
                mem[_61 + (32 * s) + 256] = 0
                mem[_61 + (32 * s) + 288] = 0
                mem[_61 + (32 * s) + 320] = 0
                mem[_61 + (32 * s) + 352] = 0
                mem[_61 + (32 * s) + 384] = 0
                mem[_61 + (32 * s) + 416] = 0
                mem[_61 + (32 * s) + 448] = 0
                mem[_61 + (32 * s) + 480] = 0
                mem[_61 + (32 * s) + 512] = 0
                mem[t + 32] = _61 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            t = 0
            while t < s:
                if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_61]:
                    revert with 0, 50
                mem[(32 * t) + _61 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 32
            _458 = mem[_61]
            mem[mem[64] + 32] = mem[_61]
            idx = 0
            s = mem[64] + 64
            t = _61 + 32
            while idx < _458:
                _589 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_589 + 32]
                mem[s + 64] = mem[_589 + 64]
                mem[s + 96] = mem[_589 + 96]
                mem[s + 128] = mem[_589 + 128]
                mem[s + 160] = mem[_589 + 160]
                mem[s + 192] = mem[_589 + 192]
                mem[s + 224] = mem[_589 + 224]
                mem[s + 256] = mem[_589 + 256]
                mem[s + 288] = mem[_589 + 288]
                mem[s + 320] = mem[_589 + 332 len 20]
                mem[s + 352] = mem[_589 + 364 len 20]
                mem[s + 384] = mem[_589 + 396 len 20]
                mem[s + 416] = mem[_589 + 428 len 20]
                mem[s + 448] = mem[_589 + 460 len 20]
                mem[s + 480] = mem[_589 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _449 + (512 * _458) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 672
        mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
        mem[var15001] = (64 * stor7[address(arg1)].field_0) + 160
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
            mem[s + 32] = (64 * stor7[address(arg1)].field_0) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor7[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            _287 = sha3(mem[(32 * idx) + 128], 10)
            _288 = mem[64]
            mem[64] = mem[64] + 512
            mem[_288] = proposal[mem[(32 * idx) + 128]].field_0
            mem[_288 + 32] = stor1[_287]
            mem[_288 + 64] = uint256(stor2[_287])
            mem[_288 + 96] = uint256(stor3[_287])
            mem[_288 + 128] = uint256(stor4[_287])
            mem[_288 + 160] = uint256(stor5[_287])
            mem[_288 + 192] = stor6[_287].field_0
            mem[_288 + 224] = stor7[_287].field_0
            mem[_288 + 256] = uint256(stor8[_287])
            mem[_288 + 288] = uint256(stor9[_287])
            mem[_288 + 320] = address(proposal[_287].field_0)
            mem[_288 + 352] = address(stor11[_287].field_0)
            mem[_288 + 384] = address(stor12[_287].field_0)
            mem[_288 + 416] = address(stor13[_287].field_0)
            mem[_288 + 448] = address(stor14[_287].field_0)
            mem[_288 + 480] = uint8(stor14[_287].field_160)
            if uint8(stor14[_287].field_160) != 1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _288
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _285 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_285]:
                    revert with 0, 50
                mem[(32 * t) + _285 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _452 = mem[64]
            mem[mem[64]] = 32
            _459 = mem[_285]
            mem[mem[64] + 32] = mem[_285]
            idx = 0
            s = mem[64] + 64
            t = _285 + 32
            while idx < _459:
                _590 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_590 + 32]
                mem[s + 64] = mem[_590 + 64]
                mem[s + 96] = mem[_590 + 96]
                mem[s + 128] = mem[_590 + 128]
                mem[s + 160] = mem[_590 + 160]
                mem[s + 192] = mem[_590 + 192]
                mem[s + 224] = mem[_590 + 224]
                mem[s + 256] = mem[_590 + 256]
                mem[s + 288] = mem[_590 + 288]
                mem[s + 320] = mem[_590 + 332 len 20]
                mem[s + 352] = mem[_590 + 364 len 20]
                mem[s + 384] = mem[_590 + 396 len 20]
                mem[s + 416] = mem[_590 + 428 len 20]
                mem[s + 448] = mem[_590 + 460 len 20]
                mem[s + 480] = mem[_590 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _452 + (512 * _459) + -mem[64] + 64
        mem[64] = _285 + (32 * s) + 544
        mem[_285 + (32 * s) + 32] = 0
        mem[_285 + (32 * s) + 64] = 0
        mem[_285 + (32 * s) + 96] = 0
        mem[_285 + (32 * s) + 128] = 0
        mem[_285 + (32 * s) + 160] = 0
        mem[_285 + (32 * s) + 192] = 0
        mem[_285 + (32 * s) + 224] = 0
        mem[_285 + (32 * s) + 256] = 0
        mem[_285 + (32 * s) + 288] = 0
        mem[_285 + (32 * s) + 320] = 0
        mem[_285 + (32 * s) + 352] = 0
        mem[_285 + (32 * s) + 384] = 0
        mem[_285 + (32 * s) + 416] = 0
        mem[_285 + (32 * s) + 448] = 0
        mem[_285 + (32 * s) + 480] = 0
        mem[_285 + (32 * s) + 512] = 0
        mem[var27001] = _285 + (32 * s) + 32
        t = var27001
        idx = var27002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[_285 + (32 * s) + 32] = 0
            mem[_285 + (32 * s) + 64] = 0
            mem[_285 + (32 * s) + 96] = 0
            mem[_285 + (32 * s) + 128] = 0
            mem[_285 + (32 * s) + 160] = 0
            mem[_285 + (32 * s) + 192] = 0
            mem[_285 + (32 * s) + 224] = 0
            mem[_285 + (32 * s) + 256] = 0
            mem[_285 + (32 * s) + 288] = 0
            mem[_285 + (32 * s) + 320] = 0
            mem[_285 + (32 * s) + 352] = 0
            mem[_285 + (32 * s) + 384] = 0
            mem[_285 + (32 * s) + 416] = 0
            mem[_285 + (32 * s) + 448] = 0
            mem[_285 + (32 * s) + 480] = 0
            mem[_285 + (32 * s) + 512] = 0
            mem[t + 32] = _285 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_285]:
                revert with 0, 50
            mem[(32 * t) + _285 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _746 = mem[64]
        mem[mem[64]] = 32
        _755 = mem[_285]
        mem[mem[64] + 32] = mem[_285]
        idx = 0
        s = mem[64] + 64
        t = _285 + 32
        while idx < _755:
            _836 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_836 + 32]
            mem[s + 64] = mem[_836 + 64]
            mem[s + 96] = mem[_836 + 96]
            mem[s + 128] = mem[_836 + 128]
            mem[s + 160] = mem[_836 + 160]
            mem[s + 192] = mem[_836 + 192]
            mem[s + 224] = mem[_836 + 224]
            mem[s + 256] = mem[_836 + 256]
            mem[s + 288] = mem[_836 + 288]
            mem[s + 320] = mem[_836 + 332 len 20]
            mem[s + 352] = mem[_836 + 364 len 20]
            mem[s + 384] = mem[_836 + 396 len 20]
            mem[s + 416] = mem[_836 + 428 len 20]
            mem[s + 448] = mem[_836 + 460 len 20]
            mem[s + 480] = mem[_836 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _746 + (512 * _755) + -mem[64] + 64
    mem[0] = sha3(address(arg1), 7)
    mem[128] = stor7[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor7[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor7[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * stor7[address(arg1)].field_0) + 128] = stor7[address(arg1)].field_0
    mem[64] = (64 * stor7[address(arg1)].field_0) + 160
    if not stor7[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < stor7[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            _291 = sha3(mem[(32 * idx) + 128], 10)
            _292 = mem[64]
            mem[64] = mem[64] + 512
            mem[_292] = proposal[mem[(32 * idx) + 128]].field_0
            mem[_292 + 32] = stor1[_291]
            mem[_292 + 64] = uint256(stor2[_291])
            mem[_292 + 96] = uint256(stor3[_291])
            mem[_292 + 128] = uint256(stor4[_291])
            mem[_292 + 160] = uint256(stor5[_291])
            mem[_292 + 192] = stor6[_291].field_0
            mem[_292 + 224] = stor7[_291].field_0
            mem[_292 + 256] = uint256(stor8[_291])
            mem[_292 + 288] = uint256(stor9[_291])
            mem[_292 + 320] = address(proposal[_291].field_0)
            mem[_292 + 352] = address(stor11[_291].field_0)
            mem[_292 + 384] = address(stor12[_291].field_0)
            mem[_292 + 416] = address(stor13[_291].field_0)
            mem[_292 + 448] = address(stor14[_291].field_0)
            mem[_292 + 480] = uint8(stor14[_291].field_160)
            if uint8(stor14[_291].field_160) != 1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _292
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _289 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_289]:
                    revert with 0, 50
                mem[(32 * t) + _289 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _455 = mem[64]
            mem[mem[64]] = 32
            _460 = mem[_289]
            mem[mem[64] + 32] = mem[_289]
            idx = 0
            s = mem[64] + 64
            t = _289 + 32
            while idx < _460:
                _591 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_591 + 32]
                mem[s + 64] = mem[_591 + 64]
                mem[s + 96] = mem[_591 + 96]
                mem[s + 128] = mem[_591 + 128]
                mem[s + 160] = mem[_591 + 160]
                mem[s + 192] = mem[_591 + 192]
                mem[s + 224] = mem[_591 + 224]
                mem[s + 256] = mem[_591 + 256]
                mem[s + 288] = mem[_591 + 288]
                mem[s + 320] = mem[_591 + 332 len 20]
                mem[s + 352] = mem[_591 + 364 len 20]
                mem[s + 384] = mem[_591 + 396 len 20]
                mem[s + 416] = mem[_591 + 428 len 20]
                mem[s + 448] = mem[_591 + 460 len 20]
                mem[s + 480] = mem[_591 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _455 + (512 * _460) + -mem[64] + 64
        mem[64] = _289 + (32 * s) + 544
        mem[_289 + (32 * s) + 32] = 0
        mem[_289 + (32 * s) + 64] = 0
        mem[_289 + (32 * s) + 96] = 0
        mem[_289 + (32 * s) + 128] = 0
        mem[_289 + (32 * s) + 160] = 0
        mem[_289 + (32 * s) + 192] = 0
        mem[_289 + (32 * s) + 224] = 0
        mem[_289 + (32 * s) + 256] = 0
        mem[_289 + (32 * s) + 288] = 0
        mem[_289 + (32 * s) + 320] = 0
        mem[_289 + (32 * s) + 352] = 0
        mem[_289 + (32 * s) + 384] = 0
        mem[_289 + (32 * s) + 416] = 0
        mem[_289 + (32 * s) + 448] = 0
        mem[_289 + (32 * s) + 480] = 0
        mem[_289 + (32 * s) + 512] = 0
        mem[var24001] = _289 + (32 * s) + 32
        t = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[_289 + (32 * s) + 32] = 0
            mem[_289 + (32 * s) + 64] = 0
            mem[_289 + (32 * s) + 96] = 0
            mem[_289 + (32 * s) + 128] = 0
            mem[_289 + (32 * s) + 160] = 0
            mem[_289 + (32 * s) + 192] = 0
            mem[_289 + (32 * s) + 224] = 0
            mem[_289 + (32 * s) + 256] = 0
            mem[_289 + (32 * s) + 288] = 0
            mem[_289 + (32 * s) + 320] = 0
            mem[_289 + (32 * s) + 352] = 0
            mem[_289 + (32 * s) + 384] = 0
            mem[_289 + (32 * s) + 416] = 0
            mem[_289 + (32 * s) + 448] = 0
            mem[_289 + (32 * s) + 480] = 0
            mem[_289 + (32 * s) + 512] = 0
            mem[t + 32] = _289 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_289]:
                revert with 0, 50
            mem[(32 * t) + _289 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _749 = mem[64]
        mem[mem[64]] = 32
        _756 = mem[_289]
        mem[mem[64] + 32] = mem[_289]
        idx = 0
        s = mem[64] + 64
        t = _289 + 32
        while idx < _756:
            _837 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_837 + 32]
            mem[s + 64] = mem[_837 + 64]
            mem[s + 96] = mem[_837 + 96]
            mem[s + 128] = mem[_837 + 128]
            mem[s + 160] = mem[_837 + 160]
            mem[s + 192] = mem[_837 + 192]
            mem[s + 224] = mem[_837 + 224]
            mem[s + 256] = mem[_837 + 256]
            mem[s + 288] = mem[_837 + 288]
            mem[s + 320] = mem[_837 + 332 len 20]
            mem[s + 352] = mem[_837 + 364 len 20]
            mem[s + 384] = mem[_837 + 396 len 20]
            mem[s + 416] = mem[_837 + 428 len 20]
            mem[s + 448] = mem[_837 + 460 len 20]
            mem[s + 480] = mem[_837 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _749 + (512 * _756) + -mem[64] + 64
    mem[64] = (64 * stor7[address(arg1)].field_0) + 672
    mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
    mem[var19001] = (64 * stor7[address(arg1)].field_0) + 160
    s = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 512
        mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
        mem[s + 32] = (64 * stor7[address(arg1)].field_0) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor7[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        _631 = sha3(mem[(32 * idx) + 128], 10)
        _632 = mem[64]
        mem[64] = mem[64] + 512
        mem[_632] = proposal[mem[(32 * idx) + 128]].field_0
        mem[_632 + 32] = stor1[_631]
        mem[_632 + 64] = uint256(stor2[_631])
        mem[_632 + 96] = uint256(stor3[_631])
        mem[_632 + 128] = uint256(stor4[_631])
        mem[_632 + 160] = uint256(stor5[_631])
        mem[_632 + 192] = stor6[_631].field_0
        mem[_632 + 224] = stor7[_631].field_0
        mem[_632 + 256] = uint256(stor8[_631])
        mem[_632 + 288] = uint256(stor9[_631])
        mem[_632 + 320] = address(proposal[_631].field_0)
        mem[_632 + 352] = address(stor11[_631].field_0)
        mem[_632 + 384] = address(stor12[_631].field_0)
        mem[_632 + 416] = address(stor13[_631].field_0)
        mem[_632 + 448] = address(stor14[_631].field_0)
        mem[_632 + 480] = uint8(stor14[_631].field_160)
        if uint8(stor14[_631].field_160) != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
            revert with 0, 50
        mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _632
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _629 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_629]:
                revert with 0, 50
            mem[(32 * t) + _629 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _752 = mem[64]
        mem[mem[64]] = 32
        _757 = mem[_629]
        mem[mem[64] + 32] = mem[_629]
        idx = 0
        s = mem[64] + 64
        t = _629 + 32
        while idx < _757:
            _838 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_838 + 32]
            mem[s + 64] = mem[_838 + 64]
            mem[s + 96] = mem[_838 + 96]
            mem[s + 128] = mem[_838 + 128]
            mem[s + 160] = mem[_838 + 160]
            mem[s + 192] = mem[_838 + 192]
            mem[s + 224] = mem[_838 + 224]
            mem[s + 256] = mem[_838 + 256]
            mem[s + 288] = mem[_838 + 288]
            mem[s + 320] = mem[_838 + 332 len 20]
            mem[s + 352] = mem[_838 + 364 len 20]
            mem[s + 384] = mem[_838 + 396 len 20]
            mem[s + 416] = mem[_838 + 428 len 20]
            mem[s + 448] = mem[_838 + 460 len 20]
            mem[s + 480] = mem[_838 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _752 + (512 * _757) + -mem[64] + 64
    mem[64] = _629 + (32 * s) + 544
    mem[_629 + (32 * s) + 32] = 0
    mem[_629 + (32 * s) + 64] = 0
    mem[_629 + (32 * s) + 96] = 0
    mem[_629 + (32 * s) + 128] = 0
    mem[_629 + (32 * s) + 160] = 0
    mem[_629 + (32 * s) + 192] = 0
    mem[_629 + (32 * s) + 224] = 0
    mem[_629 + (32 * s) + 256] = 0
    mem[_629 + (32 * s) + 288] = 0
    mem[_629 + (32 * s) + 320] = 0
    mem[_629 + (32 * s) + 352] = 0
    mem[_629 + (32 * s) + 384] = 0
    mem[_629 + (32 * s) + 416] = 0
    mem[_629 + (32 * s) + 448] = 0
    mem[_629 + (32 * s) + 480] = 0
    mem[_629 + (32 * s) + 512] = 0
    mem[var31001] = _629 + (32 * s) + 32
    t = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 512
        mem[_629 + (32 * s) + 32] = 0
        mem[_629 + (32 * s) + 64] = 0
        mem[_629 + (32 * s) + 96] = 0
        mem[_629 + (32 * s) + 128] = 0
        mem[_629 + (32 * s) + 160] = 0
        mem[_629 + (32 * s) + 192] = 0
        mem[_629 + (32 * s) + 224] = 0
        mem[_629 + (32 * s) + 256] = 0
        mem[_629 + (32 * s) + 288] = 0
        mem[_629 + (32 * s) + 320] = 0
        mem[_629 + (32 * s) + 352] = 0
        mem[_629 + (32 * s) + 384] = 0
        mem[_629 + (32 * s) + 416] = 0
        mem[_629 + (32 * s) + 448] = 0
        mem[_629 + (32 * s) + 480] = 0
        mem[_629 + (32 * s) + 512] = 0
        mem[t + 32] = _629 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
            revert with 0, 50
        if t >= mem[_629]:
            revert with 0, 50
        mem[(32 * t) + _629 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    _914 = mem[64]
    mem[mem[64]] = 32
    _917 = mem[_629]
    mem[mem[64] + 32] = mem[_629]
    idx = 0
    s = mem[64] + 64
    t = _629 + 32
    while idx < _917:
        _936 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_936 + 32]
        mem[s + 64] = mem[_936 + 64]
        mem[s + 96] = mem[_936 + 96]
        mem[s + 128] = mem[_936 + 128]
        mem[s + 160] = mem[_936 + 160]
        mem[s + 192] = mem[_936 + 192]
        mem[s + 224] = mem[_936 + 224]
        mem[s + 256] = mem[_936 + 256]
        mem[s + 288] = mem[_936 + 288]
        mem[s + 320] = mem[_936 + 332 len 20]
        mem[s + 352] = mem[_936 + 364 len 20]
        mem[s + 384] = mem[_936 + 396 len 20]
        mem[s + 416] = mem[_936 + 428 len 20]
        mem[s + 448] = mem[_936 + 460 len 20]
        mem[s + 480] = mem[_936 + 511 len 1]
        idx = idx + 1
        s = s + 512
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _914 + (512 * _917) + -mem[64] + 64
}

function sub_893d4b2d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 6
    mem[96] = stor6[address(arg1)].field_0
    if not stor6[address(arg1)].field_0:
        if stor6[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor6[address(arg1)].field_0) + 128] = stor6[address(arg1)].field_0
        mem[64] = (64 * stor6[address(arg1)].field_0) + 160
        if not stor6[address(arg1)].field_0:
            idx = 0
            s = 0
            while idx < stor6[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 10
                _63 = sha3(mem[(32 * idx) + 128], 10)
                _64 = mem[64]
                mem[64] = mem[64] + 512
                mem[_64] = proposal[mem[(32 * idx) + 128]].field_0
                mem[_64 + 32] = stor1[_63]
                mem[_64 + 64] = uint256(stor2[_63])
                mem[_64 + 96] = uint256(stor3[_63])
                mem[_64 + 128] = uint256(stor4[_63])
                mem[_64 + 160] = uint256(stor5[_63])
                mem[_64 + 192] = stor6[_63].field_0
                mem[_64 + 224] = stor7[_63].field_0
                mem[_64 + 256] = uint256(stor8[_63])
                mem[_64 + 288] = uint256(stor9[_63])
                mem[_64 + 320] = address(proposal[_63].field_0)
                mem[_64 + 352] = address(stor11[_63].field_0)
                mem[_64 + 384] = address(stor12[_63].field_0)
                mem[_64 + 416] = address(stor13[_63].field_0)
                mem[_64 + 448] = address(stor14[_63].field_0)
                mem[_64 + 480] = uint8(stor14[_63].field_160)
                if uint8(stor14[_63].field_160) != 2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor6[address(arg1)].field_0) + 160] = _64
                if s > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s > test266151307():
                revert with 0, 65
            _61 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                t = 0
                while t < s:
                    if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    if t >= mem[_61]:
                        revert with 0, 50
                    mem[(32 * t) + _61 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 32
                _147 = mem[_61]
                mem[mem[64] + 32] = mem[_61]
                idx = 0
                s = mem[64] + 64
                t = _61 + 32
                while idx < _147:
                    _269 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_269 + 32]
                    mem[s + 64] = mem[_269 + 64]
                    mem[s + 96] = mem[_269 + 96]
                    mem[s + 128] = mem[_269 + 128]
                    mem[s + 160] = mem[_269 + 160]
                    mem[s + 192] = mem[_269 + 192]
                    mem[s + 224] = mem[_269 + 224]
                    mem[s + 256] = mem[_269 + 256]
                    mem[s + 288] = mem[_269 + 288]
                    mem[s + 320] = mem[_269 + 332 len 20]
                    mem[s + 352] = mem[_269 + 364 len 20]
                    mem[s + 384] = mem[_269 + 396 len 20]
                    mem[s + 416] = mem[_269 + 428 len 20]
                    mem[s + 448] = mem[_269 + 460 len 20]
                    mem[s + 480] = mem[_269 + 511 len 1]
                    idx = idx + 1
                    s = s + 512
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _144 + (512 * _147) + -mem[64] + 64
            mem[64] = _61 + (32 * s) + 544
            mem[_61 + (32 * s) + 32] = 0
            mem[_61 + (32 * s) + 64] = 0
            mem[_61 + (32 * s) + 96] = 0
            mem[_61 + (32 * s) + 128] = 0
            mem[_61 + (32 * s) + 160] = 0
            mem[_61 + (32 * s) + 192] = 0
            mem[_61 + (32 * s) + 224] = 0
            mem[_61 + (32 * s) + 256] = 0
            mem[_61 + (32 * s) + 288] = 0
            mem[_61 + (32 * s) + 320] = 0
            mem[_61 + (32 * s) + 352] = 0
            mem[_61 + (32 * s) + 384] = 0
            mem[_61 + (32 * s) + 416] = 0
            mem[_61 + (32 * s) + 448] = 0
            mem[_61 + (32 * s) + 480] = 0
            mem[_61 + (32 * s) + 512] = 0
            mem[var20001] = _61 + (32 * s) + 32
            t = var20001
            idx = var20002
            while idx - 1:
                mem[64] = mem[64] + 512
                mem[_61 + (32 * s) + 32] = 0
                mem[_61 + (32 * s) + 64] = 0
                mem[_61 + (32 * s) + 96] = 0
                mem[_61 + (32 * s) + 128] = 0
                mem[_61 + (32 * s) + 160] = 0
                mem[_61 + (32 * s) + 192] = 0
                mem[_61 + (32 * s) + 224] = 0
                mem[_61 + (32 * s) + 256] = 0
                mem[_61 + (32 * s) + 288] = 0
                mem[_61 + (32 * s) + 320] = 0
                mem[_61 + (32 * s) + 352] = 0
                mem[_61 + (32 * s) + 384] = 0
                mem[_61 + (32 * s) + 416] = 0
                mem[_61 + (32 * s) + 448] = 0
                mem[_61 + (32 * s) + 480] = 0
                mem[_61 + (32 * s) + 512] = 0
                mem[t + 32] = _61 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            t = 0
            while t < s:
                if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_61]:
                    revert with 0, 50
                mem[(32 * t) + _61 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 32
            _458 = mem[_61]
            mem[mem[64] + 32] = mem[_61]
            idx = 0
            s = mem[64] + 64
            t = _61 + 32
            while idx < _458:
                _589 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_589 + 32]
                mem[s + 64] = mem[_589 + 64]
                mem[s + 96] = mem[_589 + 96]
                mem[s + 128] = mem[_589 + 128]
                mem[s + 160] = mem[_589 + 160]
                mem[s + 192] = mem[_589 + 192]
                mem[s + 224] = mem[_589 + 224]
                mem[s + 256] = mem[_589 + 256]
                mem[s + 288] = mem[_589 + 288]
                mem[s + 320] = mem[_589 + 332 len 20]
                mem[s + 352] = mem[_589 + 364 len 20]
                mem[s + 384] = mem[_589 + 396 len 20]
                mem[s + 416] = mem[_589 + 428 len 20]
                mem[s + 448] = mem[_589 + 460 len 20]
                mem[s + 480] = mem[_589 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _449 + (512 * _458) + -mem[64] + 64
        mem[64] = (64 * stor6[address(arg1)].field_0) + 672
        mem[(64 * stor6[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 384] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 416] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 640] = 0
        mem[var15001] = (64 * stor6[address(arg1)].field_0) + 160
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[(64 * stor6[address(arg1)].field_0) + 160] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 192] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 224] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 256] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 288] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 320] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 352] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 384] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 416] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 448] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 480] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 512] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 544] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 576] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 608] = 0
            mem[(64 * stor6[address(arg1)].field_0) + 640] = 0
            mem[s + 32] = (64 * stor6[address(arg1)].field_0) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor6[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            _287 = sha3(mem[(32 * idx) + 128], 10)
            _288 = mem[64]
            mem[64] = mem[64] + 512
            mem[_288] = proposal[mem[(32 * idx) + 128]].field_0
            mem[_288 + 32] = stor1[_287]
            mem[_288 + 64] = uint256(stor2[_287])
            mem[_288 + 96] = uint256(stor3[_287])
            mem[_288 + 128] = uint256(stor4[_287])
            mem[_288 + 160] = uint256(stor5[_287])
            mem[_288 + 192] = stor6[_287].field_0
            mem[_288 + 224] = stor7[_287].field_0
            mem[_288 + 256] = uint256(stor8[_287])
            mem[_288 + 288] = uint256(stor9[_287])
            mem[_288 + 320] = address(proposal[_287].field_0)
            mem[_288 + 352] = address(stor11[_287].field_0)
            mem[_288 + 384] = address(stor12[_287].field_0)
            mem[_288 + 416] = address(stor13[_287].field_0)
            mem[_288 + 448] = address(stor14[_287].field_0)
            mem[_288 + 480] = uint8(stor14[_287].field_160)
            if uint8(stor14[_287].field_160) != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor6[address(arg1)].field_0) + 160] = _288
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _285 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_285]:
                    revert with 0, 50
                mem[(32 * t) + _285 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _452 = mem[64]
            mem[mem[64]] = 32
            _459 = mem[_285]
            mem[mem[64] + 32] = mem[_285]
            idx = 0
            s = mem[64] + 64
            t = _285 + 32
            while idx < _459:
                _590 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_590 + 32]
                mem[s + 64] = mem[_590 + 64]
                mem[s + 96] = mem[_590 + 96]
                mem[s + 128] = mem[_590 + 128]
                mem[s + 160] = mem[_590 + 160]
                mem[s + 192] = mem[_590 + 192]
                mem[s + 224] = mem[_590 + 224]
                mem[s + 256] = mem[_590 + 256]
                mem[s + 288] = mem[_590 + 288]
                mem[s + 320] = mem[_590 + 332 len 20]
                mem[s + 352] = mem[_590 + 364 len 20]
                mem[s + 384] = mem[_590 + 396 len 20]
                mem[s + 416] = mem[_590 + 428 len 20]
                mem[s + 448] = mem[_590 + 460 len 20]
                mem[s + 480] = mem[_590 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _452 + (512 * _459) + -mem[64] + 64
        mem[64] = _285 + (32 * s) + 544
        mem[_285 + (32 * s) + 32] = 0
        mem[_285 + (32 * s) + 64] = 0
        mem[_285 + (32 * s) + 96] = 0
        mem[_285 + (32 * s) + 128] = 0
        mem[_285 + (32 * s) + 160] = 0
        mem[_285 + (32 * s) + 192] = 0
        mem[_285 + (32 * s) + 224] = 0
        mem[_285 + (32 * s) + 256] = 0
        mem[_285 + (32 * s) + 288] = 0
        mem[_285 + (32 * s) + 320] = 0
        mem[_285 + (32 * s) + 352] = 0
        mem[_285 + (32 * s) + 384] = 0
        mem[_285 + (32 * s) + 416] = 0
        mem[_285 + (32 * s) + 448] = 0
        mem[_285 + (32 * s) + 480] = 0
        mem[_285 + (32 * s) + 512] = 0
        mem[var27001] = _285 + (32 * s) + 32
        t = var27001
        idx = var27002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[_285 + (32 * s) + 32] = 0
            mem[_285 + (32 * s) + 64] = 0
            mem[_285 + (32 * s) + 96] = 0
            mem[_285 + (32 * s) + 128] = 0
            mem[_285 + (32 * s) + 160] = 0
            mem[_285 + (32 * s) + 192] = 0
            mem[_285 + (32 * s) + 224] = 0
            mem[_285 + (32 * s) + 256] = 0
            mem[_285 + (32 * s) + 288] = 0
            mem[_285 + (32 * s) + 320] = 0
            mem[_285 + (32 * s) + 352] = 0
            mem[_285 + (32 * s) + 384] = 0
            mem[_285 + (32 * s) + 416] = 0
            mem[_285 + (32 * s) + 448] = 0
            mem[_285 + (32 * s) + 480] = 0
            mem[_285 + (32 * s) + 512] = 0
            mem[t + 32] = _285 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_285]:
                revert with 0, 50
            mem[(32 * t) + _285 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _746 = mem[64]
        mem[mem[64]] = 32
        _755 = mem[_285]
        mem[mem[64] + 32] = mem[_285]
        idx = 0
        s = mem[64] + 64
        t = _285 + 32
        while idx < _755:
            _836 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_836 + 32]
            mem[s + 64] = mem[_836 + 64]
            mem[s + 96] = mem[_836 + 96]
            mem[s + 128] = mem[_836 + 128]
            mem[s + 160] = mem[_836 + 160]
            mem[s + 192] = mem[_836 + 192]
            mem[s + 224] = mem[_836 + 224]
            mem[s + 256] = mem[_836 + 256]
            mem[s + 288] = mem[_836 + 288]
            mem[s + 320] = mem[_836 + 332 len 20]
            mem[s + 352] = mem[_836 + 364 len 20]
            mem[s + 384] = mem[_836 + 396 len 20]
            mem[s + 416] = mem[_836 + 428 len 20]
            mem[s + 448] = mem[_836 + 460 len 20]
            mem[s + 480] = mem[_836 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _746 + (512 * _755) + -mem[64] + 64
    mem[0] = sha3(address(arg1), 6)
    mem[128] = stor6[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor6[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor6[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor6[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * stor6[address(arg1)].field_0) + 128] = stor6[address(arg1)].field_0
    mem[64] = (64 * stor6[address(arg1)].field_0) + 160
    if not stor6[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < stor6[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            _291 = sha3(mem[(32 * idx) + 128], 10)
            _292 = mem[64]
            mem[64] = mem[64] + 512
            mem[_292] = proposal[mem[(32 * idx) + 128]].field_0
            mem[_292 + 32] = stor1[_291]
            mem[_292 + 64] = uint256(stor2[_291])
            mem[_292 + 96] = uint256(stor3[_291])
            mem[_292 + 128] = uint256(stor4[_291])
            mem[_292 + 160] = uint256(stor5[_291])
            mem[_292 + 192] = stor6[_291].field_0
            mem[_292 + 224] = stor7[_291].field_0
            mem[_292 + 256] = uint256(stor8[_291])
            mem[_292 + 288] = uint256(stor9[_291])
            mem[_292 + 320] = address(proposal[_291].field_0)
            mem[_292 + 352] = address(stor11[_291].field_0)
            mem[_292 + 384] = address(stor12[_291].field_0)
            mem[_292 + 416] = address(stor13[_291].field_0)
            mem[_292 + 448] = address(stor14[_291].field_0)
            mem[_292 + 480] = uint8(stor14[_291].field_160)
            if uint8(stor14[_291].field_160) != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor6[address(arg1)].field_0) + 160] = _292
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _289 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_289]:
                    revert with 0, 50
                mem[(32 * t) + _289 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _455 = mem[64]
            mem[mem[64]] = 32
            _460 = mem[_289]
            mem[mem[64] + 32] = mem[_289]
            idx = 0
            s = mem[64] + 64
            t = _289 + 32
            while idx < _460:
                _591 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_591 + 32]
                mem[s + 64] = mem[_591 + 64]
                mem[s + 96] = mem[_591 + 96]
                mem[s + 128] = mem[_591 + 128]
                mem[s + 160] = mem[_591 + 160]
                mem[s + 192] = mem[_591 + 192]
                mem[s + 224] = mem[_591 + 224]
                mem[s + 256] = mem[_591 + 256]
                mem[s + 288] = mem[_591 + 288]
                mem[s + 320] = mem[_591 + 332 len 20]
                mem[s + 352] = mem[_591 + 364 len 20]
                mem[s + 384] = mem[_591 + 396 len 20]
                mem[s + 416] = mem[_591 + 428 len 20]
                mem[s + 448] = mem[_591 + 460 len 20]
                mem[s + 480] = mem[_591 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _455 + (512 * _460) + -mem[64] + 64
        mem[64] = _289 + (32 * s) + 544
        mem[_289 + (32 * s) + 32] = 0
        mem[_289 + (32 * s) + 64] = 0
        mem[_289 + (32 * s) + 96] = 0
        mem[_289 + (32 * s) + 128] = 0
        mem[_289 + (32 * s) + 160] = 0
        mem[_289 + (32 * s) + 192] = 0
        mem[_289 + (32 * s) + 224] = 0
        mem[_289 + (32 * s) + 256] = 0
        mem[_289 + (32 * s) + 288] = 0
        mem[_289 + (32 * s) + 320] = 0
        mem[_289 + (32 * s) + 352] = 0
        mem[_289 + (32 * s) + 384] = 0
        mem[_289 + (32 * s) + 416] = 0
        mem[_289 + (32 * s) + 448] = 0
        mem[_289 + (32 * s) + 480] = 0
        mem[_289 + (32 * s) + 512] = 0
        mem[var24001] = _289 + (32 * s) + 32
        t = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[_289 + (32 * s) + 32] = 0
            mem[_289 + (32 * s) + 64] = 0
            mem[_289 + (32 * s) + 96] = 0
            mem[_289 + (32 * s) + 128] = 0
            mem[_289 + (32 * s) + 160] = 0
            mem[_289 + (32 * s) + 192] = 0
            mem[_289 + (32 * s) + 224] = 0
            mem[_289 + (32 * s) + 256] = 0
            mem[_289 + (32 * s) + 288] = 0
            mem[_289 + (32 * s) + 320] = 0
            mem[_289 + (32 * s) + 352] = 0
            mem[_289 + (32 * s) + 384] = 0
            mem[_289 + (32 * s) + 416] = 0
            mem[_289 + (32 * s) + 448] = 0
            mem[_289 + (32 * s) + 480] = 0
            mem[_289 + (32 * s) + 512] = 0
            mem[t + 32] = _289 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_289]:
                revert with 0, 50
            mem[(32 * t) + _289 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _749 = mem[64]
        mem[mem[64]] = 32
        _756 = mem[_289]
        mem[mem[64] + 32] = mem[_289]
        idx = 0
        s = mem[64] + 64
        t = _289 + 32
        while idx < _756:
            _837 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_837 + 32]
            mem[s + 64] = mem[_837 + 64]
            mem[s + 96] = mem[_837 + 96]
            mem[s + 128] = mem[_837 + 128]
            mem[s + 160] = mem[_837 + 160]
            mem[s + 192] = mem[_837 + 192]
            mem[s + 224] = mem[_837 + 224]
            mem[s + 256] = mem[_837 + 256]
            mem[s + 288] = mem[_837 + 288]
            mem[s + 320] = mem[_837 + 332 len 20]
            mem[s + 352] = mem[_837 + 364 len 20]
            mem[s + 384] = mem[_837 + 396 len 20]
            mem[s + 416] = mem[_837 + 428 len 20]
            mem[s + 448] = mem[_837 + 460 len 20]
            mem[s + 480] = mem[_837 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _749 + (512 * _756) + -mem[64] + 64
    mem[64] = (64 * stor6[address(arg1)].field_0) + 672
    mem[(64 * stor6[address(arg1)].field_0) + 160] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 192] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 224] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 256] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 288] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 320] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 352] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 384] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 416] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 448] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 480] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 512] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 544] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 576] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 608] = 0
    mem[(64 * stor6[address(arg1)].field_0) + 640] = 0
    mem[var19001] = (64 * stor6[address(arg1)].field_0) + 160
    s = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 512
        mem[(64 * stor6[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 384] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 416] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor6[address(arg1)].field_0) + 640] = 0
        mem[s + 32] = (64 * stor6[address(arg1)].field_0) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor6[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        _631 = sha3(mem[(32 * idx) + 128], 10)
        _632 = mem[64]
        mem[64] = mem[64] + 512
        mem[_632] = proposal[mem[(32 * idx) + 128]].field_0
        mem[_632 + 32] = stor1[_631]
        mem[_632 + 64] = uint256(stor2[_631])
        mem[_632 + 96] = uint256(stor3[_631])
        mem[_632 + 128] = uint256(stor4[_631])
        mem[_632 + 160] = uint256(stor5[_631])
        mem[_632 + 192] = stor6[_631].field_0
        mem[_632 + 224] = stor7[_631].field_0
        mem[_632 + 256] = uint256(stor8[_631])
        mem[_632 + 288] = uint256(stor9[_631])
        mem[_632 + 320] = address(proposal[_631].field_0)
        mem[_632 + 352] = address(stor11[_631].field_0)
        mem[_632 + 384] = address(stor12[_631].field_0)
        mem[_632 + 416] = address(stor13[_631].field_0)
        mem[_632 + 448] = address(stor14[_631].field_0)
        mem[_632 + 480] = uint8(stor14[_631].field_160)
        if uint8(stor14[_631].field_160) != 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
            revert with 0, 50
        mem[(32 * s) + (32 * stor6[address(arg1)].field_0) + 160] = _632
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _629 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_629]:
                revert with 0, 50
            mem[(32 * t) + _629 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _752 = mem[64]
        mem[mem[64]] = 32
        _757 = mem[_629]
        mem[mem[64] + 32] = mem[_629]
        idx = 0
        s = mem[64] + 64
        t = _629 + 32
        while idx < _757:
            _838 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_838 + 32]
            mem[s + 64] = mem[_838 + 64]
            mem[s + 96] = mem[_838 + 96]
            mem[s + 128] = mem[_838 + 128]
            mem[s + 160] = mem[_838 + 160]
            mem[s + 192] = mem[_838 + 192]
            mem[s + 224] = mem[_838 + 224]
            mem[s + 256] = mem[_838 + 256]
            mem[s + 288] = mem[_838 + 288]
            mem[s + 320] = mem[_838 + 332 len 20]
            mem[s + 352] = mem[_838 + 364 len 20]
            mem[s + 384] = mem[_838 + 396 len 20]
            mem[s + 416] = mem[_838 + 428 len 20]
            mem[s + 448] = mem[_838 + 460 len 20]
            mem[s + 480] = mem[_838 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _752 + (512 * _757) + -mem[64] + 64
    mem[64] = _629 + (32 * s) + 544
    mem[_629 + (32 * s) + 32] = 0
    mem[_629 + (32 * s) + 64] = 0
    mem[_629 + (32 * s) + 96] = 0
    mem[_629 + (32 * s) + 128] = 0
    mem[_629 + (32 * s) + 160] = 0
    mem[_629 + (32 * s) + 192] = 0
    mem[_629 + (32 * s) + 224] = 0
    mem[_629 + (32 * s) + 256] = 0
    mem[_629 + (32 * s) + 288] = 0
    mem[_629 + (32 * s) + 320] = 0
    mem[_629 + (32 * s) + 352] = 0
    mem[_629 + (32 * s) + 384] = 0
    mem[_629 + (32 * s) + 416] = 0
    mem[_629 + (32 * s) + 448] = 0
    mem[_629 + (32 * s) + 480] = 0
    mem[_629 + (32 * s) + 512] = 0
    mem[var31001] = _629 + (32 * s) + 32
    t = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 512
        mem[_629 + (32 * s) + 32] = 0
        mem[_629 + (32 * s) + 64] = 0
        mem[_629 + (32 * s) + 96] = 0
        mem[_629 + (32 * s) + 128] = 0
        mem[_629 + (32 * s) + 160] = 0
        mem[_629 + (32 * s) + 192] = 0
        mem[_629 + (32 * s) + 224] = 0
        mem[_629 + (32 * s) + 256] = 0
        mem[_629 + (32 * s) + 288] = 0
        mem[_629 + (32 * s) + 320] = 0
        mem[_629 + (32 * s) + 352] = 0
        mem[_629 + (32 * s) + 384] = 0
        mem[_629 + (32 * s) + 416] = 0
        mem[_629 + (32 * s) + 448] = 0
        mem[_629 + (32 * s) + 480] = 0
        mem[_629 + (32 * s) + 512] = 0
        mem[t + 32] = _629 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        if t >= mem[(32 * stor6[address(arg1)].field_0) + 128]:
            revert with 0, 50
        if t >= mem[_629]:
            revert with 0, 50
        mem[(32 * t) + _629 + 32] = mem[(32 * t) + (32 * stor6[address(arg1)].field_0) + 160]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    _914 = mem[64]
    mem[mem[64]] = 32
    _917 = mem[_629]
    mem[mem[64] + 32] = mem[_629]
    idx = 0
    s = mem[64] + 64
    t = _629 + 32
    while idx < _917:
        _936 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_936 + 32]
        mem[s + 64] = mem[_936 + 64]
        mem[s + 96] = mem[_936 + 96]
        mem[s + 128] = mem[_936 + 128]
        mem[s + 160] = mem[_936 + 160]
        mem[s + 192] = mem[_936 + 192]
        mem[s + 224] = mem[_936 + 224]
        mem[s + 256] = mem[_936 + 256]
        mem[s + 288] = mem[_936 + 288]
        mem[s + 320] = mem[_936 + 332 len 20]
        mem[s + 352] = mem[_936 + 364 len 20]
        mem[s + 384] = mem[_936 + 396 len 20]
        mem[s + 416] = mem[_936 + 428 len 20]
        mem[s + 448] = mem[_936 + 460 len 20]
        mem[s + 480] = mem[_936 + 511 len 1]
        idx = idx + 1
        s = s + 512
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _914 + (512 * _917) + -mem[64] + 64
}

function sub_be3e1bc4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 7
    mem[96] = stor7[address(arg1)].field_0
    if not stor7[address(arg1)].field_0:
        if stor7[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * stor7[address(arg1)].field_0) + 128] = stor7[address(arg1)].field_0
        mem[64] = (64 * stor7[address(arg1)].field_0) + 160
        if not stor7[address(arg1)].field_0:
            idx = 0
            s = 0
            while idx < stor7[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 10
                _63 = sha3(mem[(32 * idx) + 128], 10)
                _64 = mem[64]
                mem[64] = mem[64] + 512
                mem[_64] = proposal[mem[(32 * idx) + 128]].field_0
                mem[_64 + 32] = stor1[_63]
                mem[_64 + 64] = uint256(stor2[_63])
                mem[_64 + 96] = uint256(stor3[_63])
                mem[_64 + 128] = uint256(stor4[_63])
                mem[_64 + 160] = uint256(stor5[_63])
                mem[_64 + 192] = stor6[_63].field_0
                mem[_64 + 224] = stor7[_63].field_0
                mem[_64 + 256] = uint256(stor8[_63])
                mem[_64 + 288] = uint256(stor9[_63])
                mem[_64 + 320] = address(proposal[_63].field_0)
                mem[_64 + 352] = address(stor11[_63].field_0)
                mem[_64 + 384] = address(stor12[_63].field_0)
                mem[_64 + 416] = address(stor13[_63].field_0)
                mem[_64 + 448] = address(stor14[_63].field_0)
                mem[_64 + 480] = uint8(stor14[_63].field_160)
                if uint8(stor14[_63].field_160) != 2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _64
                if s > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s > test266151307():
                revert with 0, 65
            _61 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + (32 * s) + 32
            if not s:
                t = 0
                while t < s:
                    if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    if t >= mem[_61]:
                        revert with 0, 50
                    mem[(32 * t) + _61 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 32
                _147 = mem[_61]
                mem[mem[64] + 32] = mem[_61]
                idx = 0
                s = mem[64] + 64
                t = _61 + 32
                while idx < _147:
                    _269 = mem[t]
                    mem[s] = mem[mem[t]]
                    mem[s + 32] = mem[_269 + 32]
                    mem[s + 64] = mem[_269 + 64]
                    mem[s + 96] = mem[_269 + 96]
                    mem[s + 128] = mem[_269 + 128]
                    mem[s + 160] = mem[_269 + 160]
                    mem[s + 192] = mem[_269 + 192]
                    mem[s + 224] = mem[_269 + 224]
                    mem[s + 256] = mem[_269 + 256]
                    mem[s + 288] = mem[_269 + 288]
                    mem[s + 320] = mem[_269 + 332 len 20]
                    mem[s + 352] = mem[_269 + 364 len 20]
                    mem[s + 384] = mem[_269 + 396 len 20]
                    mem[s + 416] = mem[_269 + 428 len 20]
                    mem[s + 448] = mem[_269 + 460 len 20]
                    mem[s + 480] = mem[_269 + 511 len 1]
                    idx = idx + 1
                    s = s + 512
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _144 + (512 * _147) + -mem[64] + 64
            mem[64] = _61 + (32 * s) + 544
            mem[_61 + (32 * s) + 32] = 0
            mem[_61 + (32 * s) + 64] = 0
            mem[_61 + (32 * s) + 96] = 0
            mem[_61 + (32 * s) + 128] = 0
            mem[_61 + (32 * s) + 160] = 0
            mem[_61 + (32 * s) + 192] = 0
            mem[_61 + (32 * s) + 224] = 0
            mem[_61 + (32 * s) + 256] = 0
            mem[_61 + (32 * s) + 288] = 0
            mem[_61 + (32 * s) + 320] = 0
            mem[_61 + (32 * s) + 352] = 0
            mem[_61 + (32 * s) + 384] = 0
            mem[_61 + (32 * s) + 416] = 0
            mem[_61 + (32 * s) + 448] = 0
            mem[_61 + (32 * s) + 480] = 0
            mem[_61 + (32 * s) + 512] = 0
            mem[var20001] = _61 + (32 * s) + 32
            t = var20001
            idx = var20002
            while idx - 1:
                mem[64] = mem[64] + 512
                mem[_61 + (32 * s) + 32] = 0
                mem[_61 + (32 * s) + 64] = 0
                mem[_61 + (32 * s) + 96] = 0
                mem[_61 + (32 * s) + 128] = 0
                mem[_61 + (32 * s) + 160] = 0
                mem[_61 + (32 * s) + 192] = 0
                mem[_61 + (32 * s) + 224] = 0
                mem[_61 + (32 * s) + 256] = 0
                mem[_61 + (32 * s) + 288] = 0
                mem[_61 + (32 * s) + 320] = 0
                mem[_61 + (32 * s) + 352] = 0
                mem[_61 + (32 * s) + 384] = 0
                mem[_61 + (32 * s) + 416] = 0
                mem[_61 + (32 * s) + 448] = 0
                mem[_61 + (32 * s) + 480] = 0
                mem[_61 + (32 * s) + 512] = 0
                mem[t + 32] = _61 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            t = 0
            while t < s:
                if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_61]:
                    revert with 0, 50
                mem[(32 * t) + _61 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 32
            _458 = mem[_61]
            mem[mem[64] + 32] = mem[_61]
            idx = 0
            s = mem[64] + 64
            t = _61 + 32
            while idx < _458:
                _589 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_589 + 32]
                mem[s + 64] = mem[_589 + 64]
                mem[s + 96] = mem[_589 + 96]
                mem[s + 128] = mem[_589 + 128]
                mem[s + 160] = mem[_589 + 160]
                mem[s + 192] = mem[_589 + 192]
                mem[s + 224] = mem[_589 + 224]
                mem[s + 256] = mem[_589 + 256]
                mem[s + 288] = mem[_589 + 288]
                mem[s + 320] = mem[_589 + 332 len 20]
                mem[s + 352] = mem[_589 + 364 len 20]
                mem[s + 384] = mem[_589 + 396 len 20]
                mem[s + 416] = mem[_589 + 428 len 20]
                mem[s + 448] = mem[_589 + 460 len 20]
                mem[s + 480] = mem[_589 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _449 + (512 * _458) + -mem[64] + 64
        mem[64] = (64 * stor7[address(arg1)].field_0) + 672
        mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
        mem[var15001] = (64 * stor7[address(arg1)].field_0) + 160
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
            mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
            mem[s + 32] = (64 * stor7[address(arg1)].field_0) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor7[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            _287 = sha3(mem[(32 * idx) + 128], 10)
            _288 = mem[64]
            mem[64] = mem[64] + 512
            mem[_288] = proposal[mem[(32 * idx) + 128]].field_0
            mem[_288 + 32] = stor1[_287]
            mem[_288 + 64] = uint256(stor2[_287])
            mem[_288 + 96] = uint256(stor3[_287])
            mem[_288 + 128] = uint256(stor4[_287])
            mem[_288 + 160] = uint256(stor5[_287])
            mem[_288 + 192] = stor6[_287].field_0
            mem[_288 + 224] = stor7[_287].field_0
            mem[_288 + 256] = uint256(stor8[_287])
            mem[_288 + 288] = uint256(stor9[_287])
            mem[_288 + 320] = address(proposal[_287].field_0)
            mem[_288 + 352] = address(stor11[_287].field_0)
            mem[_288 + 384] = address(stor12[_287].field_0)
            mem[_288 + 416] = address(stor13[_287].field_0)
            mem[_288 + 448] = address(stor14[_287].field_0)
            mem[_288 + 480] = uint8(stor14[_287].field_160)
            if uint8(stor14[_287].field_160) != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _288
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _285 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_285]:
                    revert with 0, 50
                mem[(32 * t) + _285 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _452 = mem[64]
            mem[mem[64]] = 32
            _459 = mem[_285]
            mem[mem[64] + 32] = mem[_285]
            idx = 0
            s = mem[64] + 64
            t = _285 + 32
            while idx < _459:
                _590 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_590 + 32]
                mem[s + 64] = mem[_590 + 64]
                mem[s + 96] = mem[_590 + 96]
                mem[s + 128] = mem[_590 + 128]
                mem[s + 160] = mem[_590 + 160]
                mem[s + 192] = mem[_590 + 192]
                mem[s + 224] = mem[_590 + 224]
                mem[s + 256] = mem[_590 + 256]
                mem[s + 288] = mem[_590 + 288]
                mem[s + 320] = mem[_590 + 332 len 20]
                mem[s + 352] = mem[_590 + 364 len 20]
                mem[s + 384] = mem[_590 + 396 len 20]
                mem[s + 416] = mem[_590 + 428 len 20]
                mem[s + 448] = mem[_590 + 460 len 20]
                mem[s + 480] = mem[_590 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _452 + (512 * _459) + -mem[64] + 64
        mem[64] = _285 + (32 * s) + 544
        mem[_285 + (32 * s) + 32] = 0
        mem[_285 + (32 * s) + 64] = 0
        mem[_285 + (32 * s) + 96] = 0
        mem[_285 + (32 * s) + 128] = 0
        mem[_285 + (32 * s) + 160] = 0
        mem[_285 + (32 * s) + 192] = 0
        mem[_285 + (32 * s) + 224] = 0
        mem[_285 + (32 * s) + 256] = 0
        mem[_285 + (32 * s) + 288] = 0
        mem[_285 + (32 * s) + 320] = 0
        mem[_285 + (32 * s) + 352] = 0
        mem[_285 + (32 * s) + 384] = 0
        mem[_285 + (32 * s) + 416] = 0
        mem[_285 + (32 * s) + 448] = 0
        mem[_285 + (32 * s) + 480] = 0
        mem[_285 + (32 * s) + 512] = 0
        mem[var27001] = _285 + (32 * s) + 32
        t = var27001
        idx = var27002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[_285 + (32 * s) + 32] = 0
            mem[_285 + (32 * s) + 64] = 0
            mem[_285 + (32 * s) + 96] = 0
            mem[_285 + (32 * s) + 128] = 0
            mem[_285 + (32 * s) + 160] = 0
            mem[_285 + (32 * s) + 192] = 0
            mem[_285 + (32 * s) + 224] = 0
            mem[_285 + (32 * s) + 256] = 0
            mem[_285 + (32 * s) + 288] = 0
            mem[_285 + (32 * s) + 320] = 0
            mem[_285 + (32 * s) + 352] = 0
            mem[_285 + (32 * s) + 384] = 0
            mem[_285 + (32 * s) + 416] = 0
            mem[_285 + (32 * s) + 448] = 0
            mem[_285 + (32 * s) + 480] = 0
            mem[_285 + (32 * s) + 512] = 0
            mem[t + 32] = _285 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_285]:
                revert with 0, 50
            mem[(32 * t) + _285 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _746 = mem[64]
        mem[mem[64]] = 32
        _755 = mem[_285]
        mem[mem[64] + 32] = mem[_285]
        idx = 0
        s = mem[64] + 64
        t = _285 + 32
        while idx < _755:
            _836 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_836 + 32]
            mem[s + 64] = mem[_836 + 64]
            mem[s + 96] = mem[_836 + 96]
            mem[s + 128] = mem[_836 + 128]
            mem[s + 160] = mem[_836 + 160]
            mem[s + 192] = mem[_836 + 192]
            mem[s + 224] = mem[_836 + 224]
            mem[s + 256] = mem[_836 + 256]
            mem[s + 288] = mem[_836 + 288]
            mem[s + 320] = mem[_836 + 332 len 20]
            mem[s + 352] = mem[_836 + 364 len 20]
            mem[s + 384] = mem[_836 + 396 len 20]
            mem[s + 416] = mem[_836 + 428 len 20]
            mem[s + 448] = mem[_836 + 460 len 20]
            mem[s + 480] = mem[_836 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _746 + (512 * _755) + -mem[64] + 64
    mem[0] = sha3(address(arg1), 7)
    mem[128] = stor7[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor7[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor7[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[(32 * stor7[address(arg1)].field_0) + 128] = stor7[address(arg1)].field_0
    mem[64] = (64 * stor7[address(arg1)].field_0) + 160
    if not stor7[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < stor7[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 10
            _291 = sha3(mem[(32 * idx) + 128], 10)
            _292 = mem[64]
            mem[64] = mem[64] + 512
            mem[_292] = proposal[mem[(32 * idx) + 128]].field_0
            mem[_292 + 32] = stor1[_291]
            mem[_292 + 64] = uint256(stor2[_291])
            mem[_292 + 96] = uint256(stor3[_291])
            mem[_292 + 128] = uint256(stor4[_291])
            mem[_292 + 160] = uint256(stor5[_291])
            mem[_292 + 192] = stor6[_291].field_0
            mem[_292 + 224] = stor7[_291].field_0
            mem[_292 + 256] = uint256(stor8[_291])
            mem[_292 + 288] = uint256(stor9[_291])
            mem[_292 + 320] = address(proposal[_291].field_0)
            mem[_292 + 352] = address(stor11[_291].field_0)
            mem[_292 + 384] = address(stor12[_291].field_0)
            mem[_292 + 416] = address(stor13[_291].field_0)
            mem[_292 + 448] = address(stor14[_291].field_0)
            mem[_292 + 480] = uint8(stor14[_291].field_160)
            if uint8(stor14[_291].field_160) != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _292
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _289 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                if t >= mem[_289]:
                    revert with 0, 50
                mem[(32 * t) + _289 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _455 = mem[64]
            mem[mem[64]] = 32
            _460 = mem[_289]
            mem[mem[64] + 32] = mem[_289]
            idx = 0
            s = mem[64] + 64
            t = _289 + 32
            while idx < _460:
                _591 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_591 + 32]
                mem[s + 64] = mem[_591 + 64]
                mem[s + 96] = mem[_591 + 96]
                mem[s + 128] = mem[_591 + 128]
                mem[s + 160] = mem[_591 + 160]
                mem[s + 192] = mem[_591 + 192]
                mem[s + 224] = mem[_591 + 224]
                mem[s + 256] = mem[_591 + 256]
                mem[s + 288] = mem[_591 + 288]
                mem[s + 320] = mem[_591 + 332 len 20]
                mem[s + 352] = mem[_591 + 364 len 20]
                mem[s + 384] = mem[_591 + 396 len 20]
                mem[s + 416] = mem[_591 + 428 len 20]
                mem[s + 448] = mem[_591 + 460 len 20]
                mem[s + 480] = mem[_591 + 511 len 1]
                idx = idx + 1
                s = s + 512
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _455 + (512 * _460) + -mem[64] + 64
        mem[64] = _289 + (32 * s) + 544
        mem[_289 + (32 * s) + 32] = 0
        mem[_289 + (32 * s) + 64] = 0
        mem[_289 + (32 * s) + 96] = 0
        mem[_289 + (32 * s) + 128] = 0
        mem[_289 + (32 * s) + 160] = 0
        mem[_289 + (32 * s) + 192] = 0
        mem[_289 + (32 * s) + 224] = 0
        mem[_289 + (32 * s) + 256] = 0
        mem[_289 + (32 * s) + 288] = 0
        mem[_289 + (32 * s) + 320] = 0
        mem[_289 + (32 * s) + 352] = 0
        mem[_289 + (32 * s) + 384] = 0
        mem[_289 + (32 * s) + 416] = 0
        mem[_289 + (32 * s) + 448] = 0
        mem[_289 + (32 * s) + 480] = 0
        mem[_289 + (32 * s) + 512] = 0
        mem[var24001] = _289 + (32 * s) + 32
        t = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 512
            mem[_289 + (32 * s) + 32] = 0
            mem[_289 + (32 * s) + 64] = 0
            mem[_289 + (32 * s) + 96] = 0
            mem[_289 + (32 * s) + 128] = 0
            mem[_289 + (32 * s) + 160] = 0
            mem[_289 + (32 * s) + 192] = 0
            mem[_289 + (32 * s) + 224] = 0
            mem[_289 + (32 * s) + 256] = 0
            mem[_289 + (32 * s) + 288] = 0
            mem[_289 + (32 * s) + 320] = 0
            mem[_289 + (32 * s) + 352] = 0
            mem[_289 + (32 * s) + 384] = 0
            mem[_289 + (32 * s) + 416] = 0
            mem[_289 + (32 * s) + 448] = 0
            mem[_289 + (32 * s) + 480] = 0
            mem[_289 + (32 * s) + 512] = 0
            mem[t + 32] = _289 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_289]:
                revert with 0, 50
            mem[(32 * t) + _289 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _749 = mem[64]
        mem[mem[64]] = 32
        _756 = mem[_289]
        mem[mem[64] + 32] = mem[_289]
        idx = 0
        s = mem[64] + 64
        t = _289 + 32
        while idx < _756:
            _837 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_837 + 32]
            mem[s + 64] = mem[_837 + 64]
            mem[s + 96] = mem[_837 + 96]
            mem[s + 128] = mem[_837 + 128]
            mem[s + 160] = mem[_837 + 160]
            mem[s + 192] = mem[_837 + 192]
            mem[s + 224] = mem[_837 + 224]
            mem[s + 256] = mem[_837 + 256]
            mem[s + 288] = mem[_837 + 288]
            mem[s + 320] = mem[_837 + 332 len 20]
            mem[s + 352] = mem[_837 + 364 len 20]
            mem[s + 384] = mem[_837 + 396 len 20]
            mem[s + 416] = mem[_837 + 428 len 20]
            mem[s + 448] = mem[_837 + 460 len 20]
            mem[s + 480] = mem[_837 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _749 + (512 * _756) + -mem[64] + 64
    mem[64] = (64 * stor7[address(arg1)].field_0) + 672
    mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
    mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
    mem[var19001] = (64 * stor7[address(arg1)].field_0) + 160
    s = var19001
    idx = var19002
    while idx - 1:
        mem[64] = mem[64] + 512
        mem[(64 * stor7[address(arg1)].field_0) + 160] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 192] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 224] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 256] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 288] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 320] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 352] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 384] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 416] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 448] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 480] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 512] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 544] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 576] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 608] = 0
        mem[(64 * stor7[address(arg1)].field_0) + 640] = 0
        mem[s + 32] = (64 * stor7[address(arg1)].field_0) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor7[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        _631 = sha3(mem[(32 * idx) + 128], 10)
        _632 = mem[64]
        mem[64] = mem[64] + 512
        mem[_632] = proposal[mem[(32 * idx) + 128]].field_0
        mem[_632 + 32] = stor1[_631]
        mem[_632 + 64] = uint256(stor2[_631])
        mem[_632 + 96] = uint256(stor3[_631])
        mem[_632 + 128] = uint256(stor4[_631])
        mem[_632 + 160] = uint256(stor5[_631])
        mem[_632 + 192] = stor6[_631].field_0
        mem[_632 + 224] = stor7[_631].field_0
        mem[_632 + 256] = uint256(stor8[_631])
        mem[_632 + 288] = uint256(stor9[_631])
        mem[_632 + 320] = address(proposal[_631].field_0)
        mem[_632 + 352] = address(stor11[_631].field_0)
        mem[_632 + 384] = address(stor12[_631].field_0)
        mem[_632 + 416] = address(stor13[_631].field_0)
        mem[_632 + 448] = address(stor14[_631].field_0)
        mem[_632 + 480] = uint8(stor14[_631].field_160)
        if uint8(stor14[_631].field_160) != 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
            revert with 0, 50
        mem[(32 * s) + (32 * stor7[address(arg1)].field_0) + 160] = _632
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _629 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
                revert with 0, 50
            if t >= mem[_629]:
                revert with 0, 50
            mem[(32 * t) + _629 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _752 = mem[64]
        mem[mem[64]] = 32
        _757 = mem[_629]
        mem[mem[64] + 32] = mem[_629]
        idx = 0
        s = mem[64] + 64
        t = _629 + 32
        while idx < _757:
            _838 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_838 + 32]
            mem[s + 64] = mem[_838 + 64]
            mem[s + 96] = mem[_838 + 96]
            mem[s + 128] = mem[_838 + 128]
            mem[s + 160] = mem[_838 + 160]
            mem[s + 192] = mem[_838 + 192]
            mem[s + 224] = mem[_838 + 224]
            mem[s + 256] = mem[_838 + 256]
            mem[s + 288] = mem[_838 + 288]
            mem[s + 320] = mem[_838 + 332 len 20]
            mem[s + 352] = mem[_838 + 364 len 20]
            mem[s + 384] = mem[_838 + 396 len 20]
            mem[s + 416] = mem[_838 + 428 len 20]
            mem[s + 448] = mem[_838 + 460 len 20]
            mem[s + 480] = mem[_838 + 511 len 1]
            idx = idx + 1
            s = s + 512
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _752 + (512 * _757) + -mem[64] + 64
    mem[64] = _629 + (32 * s) + 544
    mem[_629 + (32 * s) + 32] = 0
    mem[_629 + (32 * s) + 64] = 0
    mem[_629 + (32 * s) + 96] = 0
    mem[_629 + (32 * s) + 128] = 0
    mem[_629 + (32 * s) + 160] = 0
    mem[_629 + (32 * s) + 192] = 0
    mem[_629 + (32 * s) + 224] = 0
    mem[_629 + (32 * s) + 256] = 0
    mem[_629 + (32 * s) + 288] = 0
    mem[_629 + (32 * s) + 320] = 0
    mem[_629 + (32 * s) + 352] = 0
    mem[_629 + (32 * s) + 384] = 0
    mem[_629 + (32 * s) + 416] = 0
    mem[_629 + (32 * s) + 448] = 0
    mem[_629 + (32 * s) + 480] = 0
    mem[_629 + (32 * s) + 512] = 0
    mem[var31001] = _629 + (32 * s) + 32
    t = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 512
        mem[_629 + (32 * s) + 32] = 0
        mem[_629 + (32 * s) + 64] = 0
        mem[_629 + (32 * s) + 96] = 0
        mem[_629 + (32 * s) + 128] = 0
        mem[_629 + (32 * s) + 160] = 0
        mem[_629 + (32 * s) + 192] = 0
        mem[_629 + (32 * s) + 224] = 0
        mem[_629 + (32 * s) + 256] = 0
        mem[_629 + (32 * s) + 288] = 0
        mem[_629 + (32 * s) + 320] = 0
        mem[_629 + (32 * s) + 352] = 0
        mem[_629 + (32 * s) + 384] = 0
        mem[_629 + (32 * s) + 416] = 0
        mem[_629 + (32 * s) + 448] = 0
        mem[_629 + (32 * s) + 480] = 0
        mem[_629 + (32 * s) + 512] = 0
        mem[t + 32] = _629 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        if t >= mem[(32 * stor7[address(arg1)].field_0) + 128]:
            revert with 0, 50
        if t >= mem[_629]:
            revert with 0, 50
        mem[(32 * t) + _629 + 32] = mem[(32 * t) + (32 * stor7[address(arg1)].field_0) + 160]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    _914 = mem[64]
    mem[mem[64]] = 32
    _917 = mem[_629]
    mem[mem[64] + 32] = mem[_629]
    idx = 0
    s = mem[64] + 64
    t = _629 + 32
    while idx < _917:
        _936 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_936 + 32]
        mem[s + 64] = mem[_936 + 64]
        mem[s + 96] = mem[_936 + 96]
        mem[s + 128] = mem[_936 + 128]
        mem[s + 160] = mem[_936 + 160]
        mem[s + 192] = mem[_936 + 192]
        mem[s + 224] = mem[_936 + 224]
        mem[s + 256] = mem[_936 + 256]
        mem[s + 288] = mem[_936 + 288]
        mem[s + 320] = mem[_936 + 332 len 20]
        mem[s + 352] = mem[_936 + 364 len 20]
        mem[s + 384] = mem[_936 + 396 len 20]
        mem[s + 416] = mem[_936 + 428 len 20]
        mem[s + 448] = mem[_936 + 460 len 20]
        mem[s + 480] = mem[_936 + 511 len 1]
        idx = idx + 1
        s = s + 512
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _914 + (512 * _917) + -mem[64] + 64
}

function sub_83b00102(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor3.length) != msg.sender:
        revert with 0, '401: !isStrategyAdmin'
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if address(stor14[idx].field_256) != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor14.length:
            revert with 0, 50
        if bool(stor14[idx].field_0):
            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[64] = ceil32(uint255(stor14[idx].field_0) * 0.5) + 192
            mem[160] = uint255(stor14[idx].field_0) * 0.5
            if bool(stor14[idx].field_0):
                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor14[idx].field_0):
                    mem[96] = 160
                    mem[128] = address(stor14[idx].field_256)
                    if stor14.length < 1:
                        revert with 0, 17
                    if stor14.length - 1 >= stor14.length:
                        revert with 0, 50
                    if idx >= stor14.length:
                        revert with 0, 50
                    if not bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                    if not stor14.length:
                        revert with 0, 49
                    mem[0] = 14
                    if bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < stor14[stor14.length - 1].field_1 % 128:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor14[stor14.length - 1].field_256) = 0
                    stor14.length--
                    mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 192] = 32
                    mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 224] = 64
                    mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 288] = uint255(stor14[idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor14[idx].field_0) * 0.5:
                        mem[s + ceil32(uint255(stor14[idx].field_0) * 0.5) + 320] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor14[idx].field_0) * 0.5) > uint255(stor14[idx].field_0) * 0.5:
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + (uint255(stor14[idx].field_0) * 0.5) + 320] = 0
                    emit 0x728fa559: 32, 64, address(stor14[idx].field_256), 2 * Mask(256, -1, stor14[idx].field_0), mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 320 len ceil32(uint255(stor14[idx].field_0) * 0.5)]
                else:
                    if 31 >= uint255(stor14[idx].field_0) * 0.5:
                        mem[192] = 256 * Mask(248, 0, stor14[idx].field_8)
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                        if not stor14.length:
                            revert with 0, 49
                        mem[0] = 14
                        if bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < stor14[stor14.length - 1].field_1 % 128:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor14[stor14.length - 1].field_256) = 0
                        stor14.length--
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 192] = 32
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 224] = 64
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 288] = uint255(stor14[idx].field_0) * 0.5
                        s = 0
                        while s < uint255(stor14[idx].field_0) * 0.5:
                            mem[s + ceil32(uint255(stor14[idx].field_0) * 0.5) + 320] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(uint255(stor14[idx].field_0) * 0.5) > uint255(stor14[idx].field_0) * 0.5:
                            mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + (uint255(stor14[idx].field_0) * 0.5) + 320] = 0
                        emit 0x728fa559: 32, 64, address(stor14[idx].field_256), 2 * Mask(256, -1, stor14[idx].field_0), mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 320 len ceil32(uint255(stor14[idx].field_0) * 0.5)]
                    else:
                        mem[0] = (2 * idx) + sha3(14)
                        mem[192] = stor14[idx].field_0
                        s = 192
                        t = sha3(mem[0])
                        while (uint255(stor14[idx].field_0) * 0.5) + 160 > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _22989 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23401 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23401:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23401) > _23401:
                                                mem[_22989 + _23401 + 128] = 0
                                            mem[_22989 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23401) + _22989 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27093 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _27998 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _27998:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_27998) > _27998:
                                                mem[_27093 + _27998 + 128] = 0
                                            mem[_27093 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_27998) + _27093 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23305 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23580 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23580) + _23305 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27095 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28001 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28001) + _27095 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29255 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29442 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29442) + _29255 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30331 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30752 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30752:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30752) > _30752:
                                                mem[_30331 + _30752 + 128] = 0
                                            mem[_30331 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30752) + _30331 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29423 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29474 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29474) + _29423 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30333 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30755 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30755:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30755) > _30755:
                                                mem[_30333 + _30755 + 128] = 0
                                            mem[_30333 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30755) + _30333 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _22995 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23408 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23408:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23408) > _23408:
                                                mem[_22995 + _23408 + 128] = 0
                                            mem[_22995 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23408) + _22995 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27105 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28016 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28016) + _27105 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23308 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23588 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23588) + _23308 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27107 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28019 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28019) + _27107 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29263 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29444 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _29444:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_29444) > _29444:
                                                mem[_29263 + _29444 + 128] = 0
                                            mem[_29263 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29444) + _29263 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30341 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30764 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30764:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30764) > _30764:
                                                mem[_30341 + _30764 + 128] = 0
                                            mem[_30341 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30764) + _30341 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29424 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29476 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29476) + _29424 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30343 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30767 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30767) + _30343 + -mem[64] + 128]
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _22977 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23387 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23387:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23387) > _23387:
                                                mem[_22977 + _23387 + 128] = 0
                                            mem[_22977 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23387) + _22977 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27069 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _27962 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_27962) + _27069 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23299 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23564 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23564) + _23299 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27071 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _27965 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_27965) + _27071 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _22975 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23385 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23385) + _22975 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27065 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _27956 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _27956:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_27956) > _27956:
                                                    mem[_27065 + _27956 + 128] = 0
                                                mem[_27065 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_27956) + _27065 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23298 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23562 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _23562:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_23562) > _23562:
                                                    mem[_23298 + _23562 + 128] = 0
                                                mem[_23298 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23562) + _23298 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27067 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _27959 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_27959) + _27067 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _22973 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23382 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23382) + _22973 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27061 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _27950 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _27950:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_27950) > _27950:
                                                        mem[_27061 + _27950 + 128] = 0
                                                    mem[_27061 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_27950) + _27061 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23297 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23558 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23558:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23558) > _23558:
                                                        mem[_23297 + _23558 + 128] = 0
                                                    mem[_23297 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23558) + _23297 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27063 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _27953 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _27953:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_27953) > _27953:
                                                        mem[_27063 + _27953 + 128] = 0
                                                    mem[_27063 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_27953) + _27063 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29239 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29438 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29438) + _29239 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30311 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30728 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30728) + _30311 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29421 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29470 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29470:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29470) > _29470:
                                                        mem[_29421 + _29470 + 128] = 0
                                                    mem[_29421 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29470) + _29421 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30313 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30731 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30731:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30731) > _30731:
                                                        mem[_30313 + _30731 + 128] = 0
                                                    mem[_30313 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30731) + _30313 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _22983 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23394 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23394:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23394) > _23394:
                                                mem[_22983 + _23394 + 128] = 0
                                            mem[_22983 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23394) + _22983 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27081 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _27980 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _27980:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_27980) > _27980:
                                                mem[_27081 + _27980 + 128] = 0
                                            mem[_27081 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_27980) + _27081 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23302 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23572 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23572:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23572) > _23572:
                                                mem[_23302 + _23572 + 128] = 0
                                            mem[_23302 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23572) + _23302 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27083 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _27983 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _27983:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_27983) > _27983:
                                                mem[_27083 + _27983 + 128] = 0
                                            mem[_27083 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_27983) + _27083 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _22981 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23392 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23392) + _22981 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27077 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _27974 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_27974) + _27077 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23301 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23570 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23570) + _23301 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27079 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _27977 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _27977:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_27977) > _27977:
                                                    mem[_27079 + _27977 + 128] = 0
                                                mem[_27079 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_27977) + _27079 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _22979 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23389 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23389:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23389) > _23389:
                                                        mem[_22979 + _23389 + 128] = 0
                                                    mem[_22979 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23389) + _22979 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27073 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _27968 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _27968:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_27968) > _27968:
                                                        mem[_27073 + _27968 + 128] = 0
                                                    mem[_27073 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_27968) + _27073 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23300 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23566 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23566:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23566) > _23566:
                                                        mem[_23300 + _23566 + 128] = 0
                                                    mem[_23300 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23566) + _23300 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27075 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _27971 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_27971) + _27075 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29247 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29440 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29440) + _29247 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30321 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30740 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30740:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30740) > _30740:
                                                        mem[_30321 + _30740 + 128] = 0
                                                    mem[_30321 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30740) + _30321 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29422 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29472 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29472) + _29422 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30323 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30743 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30743) + _30323 + -mem[64] + 128]
            else:
                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor14[idx].field_1 % 128:
                    mem[96] = 160
                    mem[128] = address(stor14[idx].field_256)
                    if stor14.length < 1:
                        revert with 0, 17
                    if stor14.length - 1 >= stor14.length:
                        revert with 0, 50
                    if idx >= stor14.length:
                        revert with 0, 50
                    if not bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                    if not stor14.length:
                        revert with 0, 49
                    mem[0] = 14
                    if bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < stor14[stor14.length - 1].field_1 % 128:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor14[stor14.length - 1].field_256) = 0
                    stor14.length--
                    mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 192] = 32
                    mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 224] = 64
                    mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 288] = uint255(stor14[idx].field_0) * 0.5
                    s = 0
                    while s < uint255(stor14[idx].field_0) * 0.5:
                        mem[s + ceil32(uint255(stor14[idx].field_0) * 0.5) + 320] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(uint255(stor14[idx].field_0) * 0.5) > uint255(stor14[idx].field_0) * 0.5:
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + (uint255(stor14[idx].field_0) * 0.5) + 320] = 0
                    emit 0x728fa559: 32, 64, address(stor14[idx].field_256), 2 * Mask(256, -1, stor14[idx].field_0), mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 320 len ceil32(uint255(stor14[idx].field_0) * 0.5)]
                else:
                    if 31 >= stor14[idx].field_1 % 128:
                        mem[192] = 256 * Mask(248, 0, stor14[idx].field_8)
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                        if not stor14.length:
                            revert with 0, 49
                        mem[0] = 14
                        if bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < stor14[stor14.length - 1].field_1 % 128:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor14[stor14.length - 1].field_256) = 0
                        stor14.length--
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 192] = 32
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 224] = 64
                        mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 288] = uint255(stor14[idx].field_0) * 0.5
                        s = 0
                        while s < uint255(stor14[idx].field_0) * 0.5:
                            mem[s + ceil32(uint255(stor14[idx].field_0) * 0.5) + 320] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(uint255(stor14[idx].field_0) * 0.5) > uint255(stor14[idx].field_0) * 0.5:
                            mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + (uint255(stor14[idx].field_0) * 0.5) + 320] = 0
                        emit 0x728fa559: 32, 64, address(stor14[idx].field_256), 2 * Mask(256, -1, stor14[idx].field_0), mem[ceil32(uint255(stor14[idx].field_0) * 0.5) + 320 len ceil32(uint255(stor14[idx].field_0) * 0.5)]
                    else:
                        mem[0] = (2 * idx) + sha3(14)
                        mem[192] = stor14[idx].field_0
                        s = 192
                        t = sha3(mem[0])
                        while stor14[idx].field_1 % 128 + 160 > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23077 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23445 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23445:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23445) > _23445:
                                                mem[_23077 + _23445 + 128] = 0
                                            mem[_23077 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23445) + _23077 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27221 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28166 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28166:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28166) > _28166:
                                                mem[_27221 + _28166 + 128] = 0
                                            mem[_27221 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28166) + _27221 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23325 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23628 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23628:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23628) > _23628:
                                                mem[_23325 + _23628 + 128] = 0
                                            mem[_23325 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23628) + _23325 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27223 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28169 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28169) + _27223 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29303 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29450 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29450) + _29303 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30387 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30816 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30816:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30816) > _30816:
                                                mem[_30387 + _30816 + 128] = 0
                                            mem[_30387 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30816) + _30387 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29427 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29482 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _29482:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_29482) > _29482:
                                                mem[_29427 + _29482 + 128] = 0
                                            mem[_29427 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29482) + _29427 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30389 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30819 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30819) + _30389 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23083 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23452 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23452:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23452) > _23452:
                                                mem[_23083 + _23452 + 128] = 0
                                            mem[_23083 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23452) + _23083 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27233 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28184 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28184) + _27233 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23328 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23636 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23636:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23636) > _23636:
                                                mem[_23328 + _23636 + 128] = 0
                                            mem[_23328 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23636) + _23328 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27235 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28187 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28187:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28187) > _28187:
                                                mem[_27235 + _28187 + 128] = 0
                                            mem[_27235 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28187) + _27235 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29311 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29452 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _29452:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_29452) > _29452:
                                                mem[_29311 + _29452 + 128] = 0
                                            mem[_29311 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29452) + _29311 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30397 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30828 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30828) + _30397 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29428 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29484 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _29484:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_29484) > _29484:
                                                mem[_29428 + _29484 + 128] = 0
                                            mem[_29428 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29484) + _29428 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30399 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30831 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30831:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30831) > _30831:
                                                mem[_30399 + _30831 + 128] = 0
                                            mem[_30399 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30831) + _30399 + -mem[64] + 128]
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23065 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23431 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23431:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23431) > _23431:
                                                mem[_23065 + _23431 + 128] = 0
                                            mem[_23065 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23431) + _23065 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27197 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28130 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28130) + _27197 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23319 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23612 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23612) + _23319 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27199 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28133 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28133:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28133) > _28133:
                                                mem[_27199 + _28133 + 128] = 0
                                            mem[_27199 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28133) + _27199 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23063 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23429 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23429) + _23063 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27193 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28124 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _28124:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_28124) > _28124:
                                                    mem[_27193 + _28124 + 128] = 0
                                                mem[_27193 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28124) + _27193 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23318 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23610 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _23610:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_23610) > _23610:
                                                    mem[_23318 + _23610 + 128] = 0
                                                mem[_23318 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23610) + _23318 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27195 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28127 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28127) + _27195 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23061 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23426 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23426) + _23061 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27189 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28118 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28118) + _27189 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23317 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23606 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23606:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23606) > _23606:
                                                        mem[_23317 + _23606 + 128] = 0
                                                    mem[_23317 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23606) + _23317 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27191 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28121 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28121) + _27191 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29287 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29446 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29446:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29446) > _29446:
                                                        mem[_29287 + _29446 + 128] = 0
                                                    mem[_29287 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29446) + _29287 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30367 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30792 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30792:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30792) > _30792:
                                                        mem[_30367 + _30792 + 128] = 0
                                                    mem[_30367 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30792) + _30367 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29425 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29478 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29478:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29478) > _29478:
                                                        mem[_29425 + _29478 + 128] = 0
                                                    mem[_29425 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29478) + _29425 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30369 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30795 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30795) + _30369 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23071 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23438 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23438:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23438) > _23438:
                                                mem[_23071 + _23438 + 128] = 0
                                            mem[_23071 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23438) + _23071 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27209 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28148 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28148:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28148) > _28148:
                                                mem[_27209 + _28148 + 128] = 0
                                            mem[_27209 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28148) + _27209 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23322 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23620 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23620) + _23322 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27211 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28151 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28151:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28151) > _28151:
                                                mem[_27211 + _28151 + 128] = 0
                                            mem[_27211 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28151) + _27211 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23069 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23436 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _23436:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_23436) > _23436:
                                                    mem[_23069 + _23436 + 128] = 0
                                                mem[_23069 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23436) + _23069 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27205 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28142 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28142) + _27205 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23321 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23618 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23618) + _23321 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27207 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28145 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _28145:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_28145) > _28145:
                                                    mem[_27207 + _28145 + 128] = 0
                                                mem[_27207 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28145) + _27207 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23067 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23433 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23433) + _23067 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27201 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28136 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28136) + _27201 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23320 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23614 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23614) + _23320 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27203 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28139 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _28139:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_28139) > _28139:
                                                        mem[_27203 + _28139 + 128] = 0
                                                    mem[_27203 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28139) + _27203 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29295 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29448 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29448) + _29295 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30377 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30804 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30804:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30804) > _30804:
                                                        mem[_30377 + _30804 + 128] = 0
                                                    mem[_30377 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30804) + _30377 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29426 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29480 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29480:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29480) > _29480:
                                                        mem[_29426 + _29480 + 128] = 0
                                                    mem[_29426 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29480) + _29426 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30379 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30807 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30807:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30807) > _30807:
                                                        mem[_30379 + _30807 + 128] = 0
                                                    mem[_30379 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30807) + _30379 + -mem[64] + 128]
        else:
            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                revert with 0, 34
            mem[64] = ceil32(stor14[idx].field_1 % 128) + 192
            mem[160] = stor14[idx].field_1 % 128
            if bool(stor14[idx].field_0):
                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor14[idx].field_0):
                    mem[96] = 160
                    mem[128] = address(stor14[idx].field_256)
                    if stor14.length < 1:
                        revert with 0, 17
                    if stor14.length - 1 >= stor14.length:
                        revert with 0, 50
                    if idx >= stor14.length:
                        revert with 0, 50
                    if not bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                    if not stor14.length:
                        revert with 0, 49
                    mem[0] = 14
                    if bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < stor14[stor14.length - 1].field_1 % 128:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor14[stor14.length - 1].field_256) = 0
                    stor14.length--
                    mem[ceil32(stor14[idx].field_1 % 128) + 192] = 32
                    mem[ceil32(stor14[idx].field_1 % 128) + 224] = 64
                    mem[ceil32(stor14[idx].field_1 % 128) + 288] = stor14[idx].field_1 % 128
                    s = 0
                    while s < stor14[idx].field_1 % 128:
                        mem[s + ceil32(stor14[idx].field_1 % 128) + 320] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(stor14[idx].field_1 % 128) > stor14[idx].field_1 % 128:
                        mem[ceil32(stor14[idx].field_1 % 128) + stor14[idx].field_1 % 128 + 320] = 0
                    emit 0x728fa559: 32, 64, address(stor14[idx].field_256), stor14[idx].field_0 % 128, mem[ceil32(stor14[idx].field_1 % 128) + 320 len ceil32(stor14[idx].field_1 % 128)]
                else:
                    if 31 >= uint255(stor14[idx].field_0) * 0.5:
                        mem[192] = 256 * Mask(248, 0, stor14[idx].field_8)
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                        if not stor14.length:
                            revert with 0, 49
                        mem[0] = 14
                        if bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < stor14[stor14.length - 1].field_1 % 128:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor14[stor14.length - 1].field_256) = 0
                        stor14.length--
                        mem[ceil32(stor14[idx].field_1 % 128) + 192] = 32
                        mem[ceil32(stor14[idx].field_1 % 128) + 224] = 64
                        mem[ceil32(stor14[idx].field_1 % 128) + 288] = stor14[idx].field_1 % 128
                        s = 0
                        while s < stor14[idx].field_1 % 128:
                            mem[s + ceil32(stor14[idx].field_1 % 128) + 320] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(stor14[idx].field_1 % 128) > stor14[idx].field_1 % 128:
                            mem[ceil32(stor14[idx].field_1 % 128) + stor14[idx].field_1 % 128 + 320] = 0
                        emit 0x728fa559: 32, 64, address(stor14[idx].field_256), stor14[idx].field_0 % 128, mem[ceil32(stor14[idx].field_1 % 128) + 320 len ceil32(stor14[idx].field_1 % 128)]
                    else:
                        mem[0] = (2 * idx) + sha3(14)
                        mem[192] = stor14[idx].field_0
                        s = 192
                        t = sha3(mem[0])
                        while (uint255(stor14[idx].field_0) * 0.5) + 160 > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23165 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23489 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23489) + _23165 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27349 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28334 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28334) + _27349 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23345 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23676 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23676) + _23345 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27351 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28337 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28337) + _27351 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29351 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29458 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29458) + _29351 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30443 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30880 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30880) + _30443 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29431 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29490 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29490) + _29431 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30445 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30883 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30883) + _30445 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23171 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23496 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23496:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23496) > _23496:
                                                mem[_23171 + _23496 + 128] = 0
                                            mem[_23171 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23496) + _23171 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27361 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28352 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28352) + _27361 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23348 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23684 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23684:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23684) > _23684:
                                                mem[_23348 + _23684 + 128] = 0
                                            mem[_23348 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23684) + _23348 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27363 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28355 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28355) + _27363 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29359 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29460 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29460) + _29359 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30453 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30892 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30892:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30892) > _30892:
                                                mem[_30453 + _30892 + 128] = 0
                                            mem[_30453 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30892) + _30453 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29432 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29492 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _29492:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_29492) > _29492:
                                                mem[_29432 + _29492 + 128] = 0
                                            mem[_29432 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29492) + _29432 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30455 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30895 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30895) + _30455 + -mem[64] + 128]
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23153 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23475 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23475) + _23153 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27325 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28298 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28298) + _27325 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23339 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23660 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23660:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23660) > _23660:
                                                mem[_23339 + _23660 + 128] = 0
                                            mem[_23339 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23660) + _23339 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27327 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28301 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28301) + _27327 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23151 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23473 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23473) + _23151 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27321 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28292 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28292) + _27321 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23338 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23658 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _23658:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_23658) > _23658:
                                                    mem[_23338 + _23658 + 128] = 0
                                                mem[_23338 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23658) + _23338 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27323 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28295 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _28295:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_28295) > _28295:
                                                    mem[_27323 + _28295 + 128] = 0
                                                mem[_27323 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28295) + _27323 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23149 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23470 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23470:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23470) > _23470:
                                                        mem[_23149 + _23470 + 128] = 0
                                                    mem[_23149 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23470) + _23149 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27317 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28286 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28286) + _27317 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23337 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23654 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23654:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23654) > _23654:
                                                        mem[_23337 + _23654 + 128] = 0
                                                    mem[_23337 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23654) + _23337 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27319 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28289 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28289) + _27319 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29335 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29454 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29454:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29454) > _29454:
                                                        mem[_29335 + _29454 + 128] = 0
                                                    mem[_29335 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29454) + _29335 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30423 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30856 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30856:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30856) > _30856:
                                                        mem[_30423 + _30856 + 128] = 0
                                                    mem[_30423 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30856) + _30423 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29429 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29486 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29486:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29486) > _29486:
                                                        mem[_29429 + _29486 + 128] = 0
                                                    mem[_29429 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29486) + _29429 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30425 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30859 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30859) + _30425 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23159 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23482 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23482) + _23159 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27337 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28316 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28316:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28316) > _28316:
                                                mem[_27337 + _28316 + 128] = 0
                                            mem[_27337 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28316) + _27337 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23342 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23668 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23668) + _23342 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27339 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28319 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28319) + _27339 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23157 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23480 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23480) + _23157 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27333 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28310 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28310) + _27333 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23341 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23666 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23666) + _23341 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27335 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28313 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _28313:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_28313) > _28313:
                                                    mem[_27335 + _28313 + 128] = 0
                                                mem[_27335 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28313) + _27335 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23155 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23477 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23477:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23477) > _23477:
                                                        mem[_23155 + _23477 + 128] = 0
                                                    mem[_23155 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23477) + _23155 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27329 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28304 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _28304:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_28304) > _28304:
                                                        mem[_27329 + _28304 + 128] = 0
                                                    mem[_27329 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28304) + _27329 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23340 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23662 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23662:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23662) > _23662:
                                                        mem[_23340 + _23662 + 128] = 0
                                                    mem[_23340 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23662) + _23340 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27331 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28307 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28307) + _27331 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29343 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29456 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29456:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29456) > _29456:
                                                        mem[_29343 + _29456 + 128] = 0
                                                    mem[_29343 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29456) + _29343 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30433 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30868 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30868:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30868) > _30868:
                                                        mem[_30433 + _30868 + 128] = 0
                                                    mem[_30433 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30868) + _30433 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29430 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29488 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29488:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29488) > _29488:
                                                        mem[_29430 + _29488 + 128] = 0
                                                    mem[_29430 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29488) + _29430 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30435 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30871 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30871) + _30435 + -mem[64] + 128]
            else:
                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor14[idx].field_1 % 128:
                    mem[96] = 160
                    mem[128] = address(stor14[idx].field_256)
                    if stor14.length < 1:
                        revert with 0, 17
                    if stor14.length - 1 >= stor14.length:
                        revert with 0, 50
                    if idx >= stor14.length:
                        revert with 0, 50
                    if not bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor14[stor14.length - 1].field_1 % 128:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                t = sha3((2 * idx) + sha3(14))
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[t] = stor[s]
                                    t = t + 1
                                    s = s + 1
                                    continue 
                                s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor14[idx].field_0):
                            if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                stor14[idx].field_0 = 0
                                s = sha3((2 * idx) + sha3(14))
                                while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                    if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3((2 * idx) + sha3(14))
                                        s = sha3((2 * stor14.length - 1) + sha3(14))
                                        while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                            stor[t] = stor[s]
                                            t = t + 1
                                            s = s + 1
                                            continue 
                                        s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                    if not stor14.length:
                        revert with 0, 49
                    mem[0] = 14
                    if bool(stor14[stor14.length - 1].field_0):
                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                            revert with 0, 34
                        stor14[stor14.length - 1].field_0 = 0
                        if 31 < stor14[stor14.length - 1].field_1 % 128:
                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                            s = sha3((2 * stor14.length - 1) + sha3(14))
                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    address(stor14[stor14.length - 1].field_256) = 0
                    stor14.length--
                    mem[ceil32(stor14[idx].field_1 % 128) + 192] = 32
                    mem[ceil32(stor14[idx].field_1 % 128) + 224] = 64
                    mem[ceil32(stor14[idx].field_1 % 128) + 288] = stor14[idx].field_1 % 128
                    s = 0
                    while s < stor14[idx].field_1 % 128:
                        mem[s + ceil32(stor14[idx].field_1 % 128) + 320] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(stor14[idx].field_1 % 128) > stor14[idx].field_1 % 128:
                        mem[ceil32(stor14[idx].field_1 % 128) + stor14[idx].field_1 % 128 + 320] = 0
                    emit 0x728fa559: 32, 64, address(stor14[idx].field_256), stor14[idx].field_0 % 128, mem[ceil32(stor14[idx].field_1 % 128) + 320 len ceil32(stor14[idx].field_1 % 128)]
                else:
                    if 31 >= stor14[idx].field_1 % 128:
                        mem[192] = 256 * Mask(248, 0, stor14[idx].field_8)
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                        if not stor14.length:
                            revert with 0, 49
                        mem[0] = 14
                        if bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            stor14[stor14.length - 1].field_0 = 0
                            if 31 < stor14[stor14.length - 1].field_1 % 128:
                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                s = sha3((2 * stor14.length - 1) + sha3(14))
                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        address(stor14[stor14.length - 1].field_256) = 0
                        stor14.length--
                        mem[ceil32(stor14[idx].field_1 % 128) + 192] = 32
                        mem[ceil32(stor14[idx].field_1 % 128) + 224] = 64
                        mem[ceil32(stor14[idx].field_1 % 128) + 288] = stor14[idx].field_1 % 128
                        s = 0
                        while s < stor14[idx].field_1 % 128:
                            mem[s + ceil32(stor14[idx].field_1 % 128) + 320] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(stor14[idx].field_1 % 128) > stor14[idx].field_1 % 128:
                            mem[ceil32(stor14[idx].field_1 % 128) + stor14[idx].field_1 % 128 + 320] = 0
                        emit 0x728fa559: 32, 64, address(stor14[idx].field_256), stor14[idx].field_0 % 128, mem[ceil32(stor14[idx].field_1 % 128) + 320 len ceil32(stor14[idx].field_1 % 128)]
                    else:
                        mem[0] = (2 * idx) + sha3(14)
                        mem[192] = stor14[idx].field_0
                        s = 192
                        t = sha3(mem[0])
                        while stor14[idx].field_1 % 128 + 160 > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[96] = 160
                        mem[128] = address(stor14[idx].field_256)
                        if stor14.length < 1:
                            revert with 0, 17
                        if stor14.length - 1 >= stor14.length:
                            revert with 0, 50
                        if idx >= stor14.length:
                            revert with 0, 50
                        if not bool(stor14[stor14.length - 1].field_0):
                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23253 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23533 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23533) + _23253 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27477 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28502 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28502) + _27477 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23365 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23724 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23724) + _23365 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27479 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28505 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28505) + _27479 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29399 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29466 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29466) + _29399 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30499 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30944 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30944:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30944) > _30944:
                                                mem[_30499 + _30944 + 128] = 0
                                            mem[_30499 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30944) + _30499 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29435 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29498 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29498) + _29435 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30501 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30947 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30947:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30947) > _30947:
                                                mem[_30501 + _30947 + 128] = 0
                                            mem[_30501 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30947) + _30501 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor14[stor14.length - 1].field_1 % 128:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23259 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23540 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23540:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23540) > _23540:
                                                mem[_23259 + _23540 + 128] = 0
                                            mem[_23259 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23540) + _23259 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27489 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28520 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28520) + _27489 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23368 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23732 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23732:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23732) > _23732:
                                                mem[_23368 + _23732 + 128] = 0
                                            mem[_23368 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23732) + _23368 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27491 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28523 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28523:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28523) > _28523:
                                                mem[_27491 + _28523 + 128] = 0
                                            mem[_27491 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28523) + _27491 + -mem[64] + 128]
                                else:
                                    stor14[idx].field_0 = (2 * stor14[stor14.length - 1].field_1 % 128) + 1
                                    t = sha3((2 * idx) + sha3(14))
                                    s = sha3((2 * stor14.length - 1) + sha3(14))
                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > s:
                                        stor[t] = stor[s]
                                        t = t + 1
                                        s = s + 1
                                        continue 
                                    s = sha3((2 * idx) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32)
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29407 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29468 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29468) + _29407 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30509 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30956 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30956:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30956) > _30956:
                                                mem[_30509 + _30956 + 128] = 0
                                            mem[_30509 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30956) + _30509 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _29436 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _29500 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_29500) + _29436 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _30511 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _30959 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _30959:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_30959) > _30959:
                                                mem[_30511 + _30959 + 128] = 0
                                            mem[_30511 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_30959) + _30511 + -mem[64] + 128]
                        else:
                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor14[idx].field_0):
                                if bool(stor14[idx].field_0) == uint255(stor14[idx].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23241 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23519 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23519:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23519) > _23519:
                                                mem[_23241 + _23519 + 128] = 0
                                            mem[_23241 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23519) + _23241 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27453 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28466 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28466:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28466) > _28466:
                                                mem[_27453 + _28466 + 128] = 0
                                            mem[_27453 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28466) + _27453 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23359 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23708 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23708) + _23359 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27455 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28469 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28469:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28469) > _28469:
                                                mem[_27455 + _28469 + 128] = 0
                                            mem[_27455 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28469) + _27455 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23239 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23517 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23517) + _23239 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27449 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28460 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _28460:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_28460) > _28460:
                                                    mem[_27449 + _28460 + 128] = 0
                                                mem[_27449 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28460) + _27449 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23358 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23706 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23706) + _23358 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27451 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28463 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28463) + _27451 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23237 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23514 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23514) + _23237 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27445 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28454 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28454) + _27445 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23357 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23702 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23702) + _23357 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27447 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28457 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28457) + _27447 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + ((uint255(stor14[idx].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29383 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29462 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29462) + _29383 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30479 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30920 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30920:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30920) > _30920:
                                                        mem[_30479 + _30920 + 128] = 0
                                                    mem[_30479 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30920) + _30479 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29433 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29494 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29494) + _29433 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30481 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30923 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30923:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30923) > _30923:
                                                        mem[_30481 + _30923 + 128] = 0
                                                    mem[_30481 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30923) + _30481 + -mem[64] + 128]
                            else:
                                if bool(stor14[idx].field_0) == stor14[idx].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                    stor14[idx].field_0 = 0
                                    s = sha3((2 * idx) + sha3(14))
                                    while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                    if not stor14.length:
                                        revert with 0, 49
                                    mem[0] = 14
                                    if bool(stor14[stor14.length - 1].field_0):
                                        if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23247 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23526 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23526:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23526) > _23526:
                                                mem[_23247 + _23526 + 128] = 0
                                            mem[_23247 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23526) + _23247 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27465 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28484 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _28484:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_28484) > _28484:
                                                mem[_27465 + _28484 + 128] = 0
                                            mem[_27465 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28484) + _27465 + -mem[64] + 128]
                                    else:
                                        if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                            revert with 0, 34
                                        stor14[stor14.length - 1].field_0 = 0
                                        if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _23362 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _23716 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < _23716:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_23716) > _23716:
                                                mem[_23362 + _23716 + 128] = 0
                                            mem[_23362 + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_23716) + _23362 + -mem[64] + 128]
                                        else:
                                            mem[0] = (2 * stor14.length - 1) + sha3(14)
                                            idx = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                            address(stor14[stor14.length - 1].field_256) = 0
                                            stor14.length--
                                            _27467 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = 64
                                            _28487 = mem[160]
                                            mem[mem[64] + 96] = mem[160]
                                            idx = 0
                                            while idx < mem[160]:
                                                mem[idx + mem[64] + 128] = mem[idx + 192]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[160]) > mem[160]:
                                                mem[mem[64] + mem[160] + 128] = 0
                                            mem[mem[64] + 64] = mem[140 len 20]
                                            emit 0x728fa559: mem[mem[64] len ceil32(_28487) + _27467 + -mem[64] + 128]
                                else:
                                    if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                        stor14[idx].field_0 = stor14[stor14.length - 1].field_0
                                        s = sha3((2 * idx) + sha3(14))
                                        while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                        if not stor14.length:
                                            revert with 0, 49
                                        mem[0] = 14
                                        if bool(stor14[stor14.length - 1].field_0):
                                            if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23245 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23524 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23524) + _23245 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27461 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28478 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28478) + _27461 + -mem[64] + 128]
                                        else:
                                            if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                revert with 0, 34
                                            stor14[stor14.length - 1].field_0 = 0
                                            if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _23361 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _23714 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < mem[160]:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[160]) > mem[160]:
                                                    mem[mem[64] + mem[160] + 128] = 0
                                                mem[mem[64] + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_23714) + _23361 + -mem[64] + 128]
                                            else:
                                                mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                    stor[idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                                address(stor14[stor14.length - 1].field_256) = 0
                                                stor14.length--
                                                _27463 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = 64
                                                _28481 = mem[160]
                                                mem[mem[64] + 96] = mem[160]
                                                idx = 0
                                                while idx < _28481:
                                                    mem[idx + mem[64] + 128] = mem[idx + 192]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_28481) > _28481:
                                                    mem[_27463 + _28481 + 128] = 0
                                                mem[_27463 + 64] = mem[140 len 20]
                                                emit 0x728fa559: mem[mem[64] len ceil32(_28481) + _27463 + -mem[64] + 128]
                                    else:
                                        stor14[idx].field_0 = Mask(254, 1, stor14[stor14.length - 1].field_0) + 1
                                        if not Mask(256, -1, stor14[stor14.length - 1].field_0):
                                            s = sha3((2 * idx) + sha3(14))
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23243 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23521 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23521) + _23243 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27457 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28472 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _28472:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_28472) > _28472:
                                                        mem[_27457 + _28472 + 128] = 0
                                                    mem[_27457 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28472) + _27457 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _23360 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _23710 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _23710:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_23710) > _23710:
                                                        mem[_23360 + _23710 + 128] = 0
                                                    mem[_23360 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_23710) + _23360 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _27459 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _28475 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _28475:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_28475) > _28475:
                                                        mem[_27459 + _28475 + 128] = 0
                                                    mem[_27459 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_28475) + _27459 + -mem[64] + 128]
                                        else:
                                            t = sha3((2 * idx) + sha3(14))
                                            s = sha3((2 * stor14.length - 1) + sha3(14))
                                            while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > s:
                                                stor[t] = stor[s]
                                                t = t + 1
                                                s = s + 1
                                                continue 
                                            s = sha3((2 * idx) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32)
                                            while sha3((2 * idx) + sha3(14)) + (stor14[idx].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            address(stor14[idx].field_256) = address(stor14[stor14.length - 1].field_256)
                                            if not stor14.length:
                                                revert with 0, 49
                                            mem[0] = 14
                                            if bool(stor14[stor14.length - 1].field_0):
                                                if bool(stor14[stor14.length - 1].field_0) == uint255(stor14[stor14.length - 1].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= uint255(stor14[stor14.length - 1].field_0) * 0.5:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29391 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29464 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29464:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29464) > _29464:
                                                        mem[_29391 + _29464 + 128] = 0
                                                    mem[_29391 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29464) + _29391 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + ((uint255(stor14[stor14.length - 1].field_0) * 0.5) + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30489 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30932 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _30932:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_30932) > _30932:
                                                        mem[_30489 + _30932 + 128] = 0
                                                    mem[_30489 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30932) + _30489 + -mem[64] + 128]
                                            else:
                                                if bool(stor14[stor14.length - 1].field_0) == stor14[stor14.length - 1].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                stor14[stor14.length - 1].field_0 = 0
                                                if 31 >= stor14[stor14.length - 1].field_1 % 128:
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _29434 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _29496 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < _29496:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(_29496) > _29496:
                                                        mem[_29434 + _29496 + 128] = 0
                                                    mem[_29434 + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_29496) + _29434 + -mem[64] + 128]
                                                else:
                                                    mem[0] = (2 * stor14.length - 1) + sha3(14)
                                                    idx = sha3((2 * stor14.length - 1) + sha3(14))
                                                    while sha3((2 * stor14.length - 1) + sha3(14)) + (stor14[stor14.length - 1].field_1 % 128 + 31 / 32) > idx:
                                                        stor[idx] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    address(stor14[stor14.length - 1].field_256) = 0
                                                    stor14.length--
                                                    _30491 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = 64
                                                    _30935 = mem[160]
                                                    mem[mem[64] + 96] = mem[160]
                                                    idx = 0
                                                    while idx < mem[160]:
                                                        mem[idx + mem[64] + 128] = mem[idx + 192]
                                                        idx = idx + 32
                                                        continue 
                                                    if ceil32(mem[160]) > mem[160]:
                                                        mem[mem[64] + mem[160] + 128] = 0
                                                    mem[mem[64] + 64] = mem[140 len 20]
                                                    emit 0x728fa559: mem[mem[64] len ceil32(_30935) + _30491 + -mem[64] + 128]
}



}
