contract main {




// =====================  Runtime code  =====================


const getChainId = chainid


uint256 nonce;
uint256 threshold;
mapping of uint8 stor2;
array of address ownersArr;
uint256 stor4;

function getOwnersArrLength() {
    return ownersArr.length
}

function threshold() {
    return threshold
}

function ownersArr(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < ownersArr.length
    return ownersArr[arg1]
}

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function execute(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4, uint256 arg5, bytes arg6, address arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len arg6.length] = arg6[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg6.length + 224] = 0
    require arg2.length == threshold
    require arg2.length == arg3.length
    require arg2.length == arg1.length
    if msg.sender == arg7:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256] = 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 288] = arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320] = arg5
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 352] = sha3(arg6[all])
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 384] = nonce
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 416] = arg7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 448] = arg8
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224] = 224
        _15 = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)]])
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 514] = stor4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 546] = _15
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 480] = 66
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 578
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _58 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _62 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _66 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _67 = mem[64]
            mem[64] = mem[64] + 32
            mem[_67 + 32] = sha3(0, stor4, _15)
            mem[_67 + 64] = uint8(_58)
            mem[_67 + 96] = _62
            mem[_67 + 128] = _66
            signer = erecover(sha3(0, stor4, _15), _58 << 248, _62, _66) 
            mem[_67] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) > address(s)
            mem[0] = address(signer)
            mem[32] = 2
            require stor2[address(signer)]
            idx = idx + 1
            s = signer
            continue 
    else:
        require not arg7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256] = 0x3ee892349ae4bbe61dce18f95115b5dc02daf49204cc602458cd4c1f540d56d7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 288] = arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 320] = arg5
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 352] = sha3(arg6[all])
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 384] = nonce
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 416] = arg7
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 448] = arg8
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 224] = 224
        _24 = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 256 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)]])
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 514] = stor4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 546] = _24
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 480] = 66
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg6.length) + 578
        idx = 0
        s = 0
        while idx < threshold:
            require idx < mem[96]
            _60 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _64 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _70 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _71 = mem[64]
            mem[64] = mem[64] + 32
            mem[_71 + 32] = sha3(0, stor4, _24)
            mem[_71 + 64] = uint8(_60)
            mem[_71 + 96] = _64
            mem[_71 + 128] = _70
            signer = erecover(sha3(0, stor4, _24), _60 << 248, _64, _70) 
            mem[_71] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            require address(signer) > address(s)
            mem[0] = address(signer)
            mem[32] = 2
            require stor2[address(signer)]
            idx = idx + 1
            s = signer
            continue 
    nonce++
    call arg4.mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 4] with:
       value arg5 wei
         gas arg8 wei
        args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 228 len mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
