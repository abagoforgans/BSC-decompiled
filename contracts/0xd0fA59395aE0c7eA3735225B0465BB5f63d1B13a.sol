contract main {




// =====================  Runtime code  =====================


address owner;
address feeReceiverAddress;
address routerAddress;
address factoryAddress;
address wethAddress;
uint256 sub_242eac54;
mapping of address sub_c360f46b;
mapping of uint8 stor7;
array of address sub_74b05e59;
mapping of uint16 sub_2664bb9c;
array of address sub_a9e1a14a;

function sub_242eac54(?) payable {
    return sub_242eac54
}

function sub_2664bb9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2664bb9c[arg1]
}

function weth() payable {
    return wethAddress
}

function isWhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_74b05e59(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_74b05e59[arg1])
    return address(sub_74b05e59[arg1][arg2])
}

function sub_851f5cf3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_74b05e59[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_a9e1a14a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a9e1a14a.length
    return sub_a9e1a14a[arg1]
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function sub_c360f46b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c360f46b[arg1]
}

function factory() payable {
    return factoryAddress
}

function allPresalesLength() payable {
    return sub_a9e1a14a.length
}

function router() payable {
    return routerAddress
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

function sub_06a15b3e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_242eac54 = arg1
}

function sub_6e4fdb93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sha3(0, this.address, sha3(address(arg1), 0), sha3(code.data[5180 len 16905], mem[17087 len 23] >> 134984)))
}

function setFeeReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeReceiverAddress = arg1
    emit 0x47bbed80: feeReceiverAddress, arg1
}

function sub_f7c43f2e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    return address(sha3(0, this.address, sha3(address(arg1), uint16(arg2)), sha3(code.data[5180 len 16905], mem[17087 len 23] >> 134984)))
}

function sub_a0211d0e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require sub_c360f46b[address(arg1)]
    stor7[address(arg1)] = 1
    emit 0x7b92dc27: address(arg1)
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

function sub_11ed1c95(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).emergencyAbort() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xef940790: address(arg1), block.timestamp
}

function sub_0e29a29b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c360f46b[address(arg1)] != msg.sender:
        if owner != msg.sender:
            revert with 0, 'ERROR: You have no access'
    require ext_code.size(address(arg1))
    call address(arg1).0x7ce191f4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xef940790: address(arg1), block.timestamp
}

function sub_b09dfc9c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if sub_c360f46b[address(arg1)] != msg.sender:
        if owner != msg.sender:
            revert with 0, 'ERROR: You have no access'
    require ext_code.size(address(arg1))
    call address(arg1).0x8ad57158 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aa5edb21(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg6 == bool(arg6)
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg7.length)) + 97 < 96 or ceil32(ceil32(arg7.length)) + 97 > test266151307():
        revert with 0, 65
    require arg7 + arg7.length + 36 <= calldata.size
    if arg3 < sub_242eac54:
        revert with 0, 'ERROR: invalid hardcap'
    if arg4 < 10:
        revert with 0, 'ERROR: tokensPerEth has to be greater or equal to 10'
    if block.timestamp > !arg5:
        revert with 0, 17
    if 300 > !block.timestamp:
        revert with 0, 17
    if arg5 < 300:
        revert with 0, 'ERROR: Duration has to be greater than 10 minutes'
    if 168 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    if arg5 > 168 * 24 * 3600:
        revert with 0, 'ERROR: Duration cannot exceed 7 days'
    if sub_2664bb9c[address(arg1)]:
        if sub_2664bb9c[address(arg1)] < 1:
            revert with 0, 17
        mem[ceil32(ceil32(ceil32(arg7.length))) + 566 len 16928] = code.data[5180 len 16905], mem[ceil32(ceil32(arg7.length)) + 17088 len 23]
        require ext_code.size(address(sha3(0, this.address, sha3(address(arg1), uint16(sub_2664bb9c[address(arg1)] - 1)), sha3(mem[ceil32(ceil32(ceil32(arg7.length))) + 566 len 16905]))))
        staticcall address(sha3(0, this.address, sha3(address(arg1), uint16(sub_2664bb9c[address(arg1)] - 1)), sha3(mem[ceil32(ceil32(ceil32(arg7.length))) + 566 len 16905]))).isAborted() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERROR: Your previous presale needs to be aborted'
    create2 contract with 0 wei
                    salt: sha3(address(arg1), 0)
                    code: code.data[5180 len 16905]
    if not create2.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create2.new_address))
    if arg2:
        call address(create2.new_address).0x94080a79 with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3, arg4, block.timestamp + arg5, bool(arg6), Array(len=arg7.length, data=arg7[all])
    else:
        call address(create2.new_address).0x94080a79 with:
             gas gas_remaining wei
            args address(arg1), arg3, arg3, arg4, block.timestamp + arg5, bool(arg6), Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c360f46b[address(create2.new_address)] = msg.sender
    sub_a9e1a14a.length++
    sub_a9e1a14a[sub_a9e1a14a.length] = address(create2.new_address)
    uint256(sub_74b05e59[address(msg.sender)])++
    address(sub_74b05e59[address(msg.sender)][uint256(sub_74b05e59[address(msg.sender)])]) = address(create2.new_address)
    if sub_2664bb9c[address(arg1)] > 65534:
        revert with 0, 17
    sub_2664bb9c[address(arg1)] = uint16(sub_2664bb9c[address(arg1)] + 1)
    emit 0xc80988e2: address(arg1), arg2, arg3, arg4, arg5, bool(arg6), Array(len=arg7.length, data=arg7[all])
}



}
