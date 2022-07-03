contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0x5d47d58eeeff0d09d899baa5faca6c0ac32b6bb20a1749ab96e0a0d6cebe514e


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 _name;
array of uint256 _symbol;
uint8 _decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 _allowance;
mapping of uint8 stor57;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 permitNonce;

function name() payable {
    return _name[0 len _name.length]
}

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7678b057(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor57[arg1])
}

function permitNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    return permitNonce[address(arg1)]
}

function symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return permitNonce[arg1]
}

function _balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function _name() payable {
    return _name[0 len _name.length]
}

function _allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowance[arg1][arg2]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return _allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    _allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if _allowance[address(arg1)][msg.sender] != -1:
        if arg3 > _allowance[address(arg1)][msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        _allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6448617368666c6f7745524332303a20746f2063616e6e6f74206265207a65726f20616464726573,
                    mem[204 len 24]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_e8f912ac(?) payable {
    require calldata.size - 4 >= 64
    if not stor57[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x6548617368666c6f7745524332303a20546f6b656e2063616e206f6e6c79206265206d696e746564202f206275726e65642062792074686520706f6f,
                    mem[224 len 4]
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe48617368666c6f7745524332303a20506f6f6c2063616e6e6f7420616c74657220697473206f776e207065726d697373696f6e73,
                    mem[217 len 11]
    stor57[address(arg1)] = uint8(arg2)
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor57[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x6548617368666c6f7745524332303a20546f6b656e2063616e206f6e6c79206265206d696e746564202f206275726e65642062792074686520706f6f,
                    mem[224 len 4]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e48617368666c6f7745524332303a2066726f6d2063616e6e6f74206265207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg2
    if arg2 > _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    _totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor57[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x6548617368666c6f7745524332303a20546f6b656e2063616e206f6e6c79206265206d696e746564202f206275726e65642062792074686520706f6f,
                    mem[224 len 4]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6448617368666c6f7745524332303a20746f2063616e6e6f74206265207a65726f20616464726573,
                    mem[204 len 24]
    if arg2 + _totalSupply < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function initialize(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x29436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    stor57[msg.sender] = 1
    _name[] = Array(len=arg1.length, data=arg1[all])
    _symbol[] = Array(len=arg2.length, data=arg2[all])
    _decimals = arg3
    DOMAIN_SEPARATOR = sha3(sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), Mask(8 * -arg2.length + ceil32(arg2.length) + 50, 0, 0x65454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)), sha3(arg1[all]), 0xe6bbd6277e1bf288eed5e8d1780f9a50b239e86b153736bceebccf4ea79d90b3, chainid, this.address)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg4 < block.timestamp:
        revert with 0, 'HashflowERC20: Permit expired'
    permitNonce[address(arg1)]++
    mem[450 len arg5.length] = arg5[all]
    mem[arg5.length + 450] = 0
    if arg5.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[482] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x6445434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg5.length) + 552 len 30]
    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) + 256, 0):
        revert with 0, 
                    32,
                    34,
                    0x6c45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                    mem[ceil32(arg5.length) + 552 len 30]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) - 256) + 27) != 28:
            revert with 0, 
                        32,
                        34,
                        0x6c45434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                        mem[ceil32(arg5.length) + 552 len 30]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x5d47d58eeeff0d09d899baa5faca6c0ac32b6bb20a1749ab96e0a0d6cebe514e, address(arg1), address(arg2), arg3, permitNonce[address(arg1)], arg4)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 514, 32))), 0) - 256) + 27 << 248, mem[450], mem[482]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 
                    32,
                    35,
                    0x7348617368666c6f7745524332303a205369676e617475726520697320696e76616c69,
                    mem[489 len 25],
                    mem[ceil32(arg5.length) + 610 len 4]
    _allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}



}
