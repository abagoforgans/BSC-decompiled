contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 152
address stor1;
address stor2;
uint256 totalWeight;
uint256 sub_0c0189e4;

function sub_0c0189e4(?) payable {
    return sub_0c0189e4
}

function owner() payable {
    return owner
}

function totalWeight() payable {
    return totalWeight
}

function _fallback() payable {
    revert
}

function sub_9a9819ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xb2fafdb4c952ebfc53f257035a4ccb450fe0aff9 != msg.sender:
        revert with 0, 'owner'
    sub_0c0189e4 = arg1
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.buy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize() payable {
    owner = 0xb2fafdb4c952ebfc53f257035a4ccb450fe0aff9
    Mask(152, 0, stor1.field_0) = 0xe1656e45f18ec6747f5a8496fd39b50b38396d
    uint8(stor1.field_152) = 0
    stor2 = 0x30cc0553f6fa1faf6d7847891b9b36eb559dc618
    totalWeight = 10001
    sub_0c0189e4 = 9945
}

function createOrder(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    call arg1.createOrder(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_20d73510(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getSeed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_7bd2511e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xb3c946cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_ffdfdd94(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _70 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(stor2)
        staticcall stor2.getPendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(_70)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_73] == mem[_73]
        if mem[_73] >= 1:
            require ext_code.size(address(_70))
            staticcall address(_70).getSeed() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_77]
            require mem[_77] == mem[_77]
            require ext_code.size(stor2)
            staticcall stor2.tokenIdCounter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_81]
            require mem[_81] == mem[_81]
            _83 = mem[64]
            mem[mem[64] + 32] = _78
            mem[mem[64] + 64] = _82
            _84 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _86 = sha3(mem[_84 + 32 len mem[_84]])
            if 0 >= totalWeight:
                revert with 0, 'Invalid random range'
            mem[_83 + 128] = block.timestamp
            mem[_83 + 160] = block.hash(block.number - 1)
            mem[_83 + 192] = block.difficulty
            mem[_83 + 224] = _86
            mem[_83 + 96] = 128
            mem[64] = _83 + 256
            require totalWeight
            if sha3(block.timestamp, block.hash(block.number - 1), block.difficulty, _86) % totalWeight >= sub_0c0189e4:
                require ext_code.size(address(_70))
                call address(_70).process() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_83 + 260] = _82
                require ext_code.size(0x11dc77f23493ca24440d62884061ee1a446ffa88)
                staticcall 0x11dc77f23493ca24440d62884061ee1a446ffa88.getRare(uint256 arg1) with:
                        gas gas_remaining wei
                       args _82
                mem[_83 + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _83 + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < 4:
                    revert with 0, 'too low'
        idx = idx + 1
        continue 
}



}
