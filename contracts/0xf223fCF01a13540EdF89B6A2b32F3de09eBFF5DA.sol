contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getEthSignedMessageHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function splitSignature(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 65:
        revert with 0, 'invalid signature length'
    _4 = mem[160]
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return mem[ceil32(ceil32(arg1.length)) + 97], _4, 0
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function getMessageHash(address arg1, uint256 arg2, string arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 == arg4
    return sha3(arg1, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, arg4))
}

function verify(address arg1, address arg2, uint256 arg3, string arg4, uint256 arg5, bytes arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[arg4.length + 128] = 0
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg6.length)) + 98 > test266151307() or ceil32(ceil32(arg6.length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg4.length)) + 97] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg4.length)) + 129 len arg6.length] = arg6[all]
    mem[ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg6.length)) + 130] = address(arg2)
    mem[ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg6.length)) + 150] = arg3
    mem[ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg6.length)) + 182 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
    mem[ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg6.length)) + arg4.length + 182] = arg5
    mem[ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg6.length)) + 98] = arg4.length + 84
    if arg6.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg2, arg3, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256) << (8 * ceil32(arg4.length)) - 256, Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, arg5))), 0, mem[ceil32(ceil32(arg4.length)) + 129], mem[ceil32(ceil32(arg4.length)) + 161]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}



}
