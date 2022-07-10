contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor1;
address sub_c95890fbAddress;
address usdtAddress;
address subAddress;
uint256 sub_5a6785f0;
uint256 sub_4206ecb3;
uint256 sub_214d58e2;
mapping of uint256 sub_771533f1;
mapping of uint256 sub_ce49584e;
mapping of uint256 sub_57bde475;
mapping of uint8 stor11;
mapping of uint8 stor12;

function sub_214d58e2(?) payable {
    return sub_214d58e2
}

function usdt() payable {
    return usdtAddress
}

function sub_4206ecb3(?) payable {
    return sub_4206ecb3
}

function sub_57bde475(?) payable {
    require calldata.size - 4 >= 32
    return sub_57bde475[arg1]
}

function sub_5a6785f0(?) payable {
    return sub_5a6785f0
}

function paused() payable {
    return bool(stor0)
}

function isDeposited(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_771533f1(?) payable {
    require calldata.size - 4 >= 32
    return sub_771533f1[arg1]
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function owner() payable {
    return owner
}

function sub() payable {
    return subAddress
}

function sub_c95890fb(?) payable {
    return sub_c95890fbAddress
}

function sub_ce49584e(?) payable {
    require calldata.size - 4 >= 32
    return sub_ce49584e[arg1]
}

function _fallback() payable {
    revert
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor11[address(arg1)] = 1
}

function revokeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor11[address(arg1)] = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unPause() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function withdrawByOwner(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_50fbe2d9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor12[msg.sender]:
        revert with 0, 'already withdrawn'
    stor12[msg.sender] = 1
    require arg1.length >= 128
    if mem[140 len 20] != msg.sender:
        revert with 0, 'sender is not receiver!'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 220] = sha3(arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 60
    if arg2.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[ceil32(arg1.length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x7345434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 354 len 30]
    revert with 0, 
                32,
                34,
                0x6545434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 354 len 30]
}



}
