contract main {




// =====================  Runtime code  =====================


address owner;
address payoutWalletAddress;
array of uint256 name;
address mintableTokenAddress;
mapping of uint8 stor4;

function name() payable {
    return name[0 len name.length]
}

function payoutWallet() payable {
    return payoutWalletAddress
}

function owner() payable {
    return owner
}

function mintableToken() payable {
    return mintableTokenAddress
}

function _fallback() payable {
    revert
}

function paymentSuccessful(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return (bool(stor4[arg1]) == 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722c206d696e7465722c206f72207061796572,
                    mem[215 len 13]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPayoutWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722c206d696e7465722c206f72207061796572,
                    mem[215 len 13]
    payoutWalletAddress = arg1
}

function setMintableToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722c206d696e7465722c206f72207061796572,
                    mem[215 len 13]
    mintableTokenAddress = arg1
    return 1
}

function proxyMint(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(mintableTokenAddress)
    call mintableTokenAddress.mint(uint256 rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not mint token'
    return 1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722c206d696e7465722c206f72207061796572,
                    mem[215 len 13]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65722c206d696e7465722c206f72207061796572,
                    mem[215 len 13]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function send(address arg1, bytes32 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        if payoutWalletAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x684f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f72207061796572,
                        mem[206 len 22]
    if bool(stor4[arg2]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x735061796d656e7420494420616c72656164792065786973747320616e642077617320737563636573736675,
                    mem[208 len 20]
    stor4[arg2] = 1
    emit Payment(arg2);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function multisend(address arg1, bytes32 arg2, address[] arg3, uint256[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    if msg.sender == owner:
        if arg3.length <= 0:
            revert with 0, 
                        32,
                        41,
                        0x2e4d7573742068617665206d6f7265207468616e20312064657374696e6174696f6e20616464726573,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 269 len 23]
        if arg4.length < arg3.length:
            revert with 0, 
                        32,
                        36,
                        0x6c4164647265737320746f2056616c75652061727261792073697a65206d69736d617463,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 264 len 28]
        if bool(stor4[arg2]) == 1:
            revert with 0, 
                        32,
                        44,
                        0x735061796d656e7420494420616c72656164792065786973747320616e642077617320737563636573736675,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 272 len 20]
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            require idx < arg4.length
            _71 = mem[(32 * idx) + (32 * arg3.length) + 160]
            mem[(32 * arg3.length) + (32 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg3.length) + (32 * arg4.length) + 196] = _71
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg3.length) + (32 * arg4.length) + 164], _71
            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        if payoutWalletAddress != msg.sender:
            revert with 0, 
                        32,
                        42,
                        0x684f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f72207061796572,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 270 len 22]
        if arg3.length <= 0:
            revert with 0, 
                        32,
                        41,
                        0x2e4d7573742068617665206d6f7265207468616e20312064657374696e6174696f6e20616464726573,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 269 len 23]
        if arg4.length < arg3.length:
            revert with 0, 
                        32,
                        36,
                        0x6c4164647265737320746f2056616c75652061727261792073697a65206d69736d617463,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 264 len 28]
        if bool(stor4[arg2]) == 1:
            revert with 0, 
                        32,
                        44,
                        0x735061796d656e7420494420616c72656164792065786973747320616e642077617320737563636573736675,
                        mem[(32 * arg3.length) + (32 * arg4.length) + 272 len 20]
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            require idx < arg4.length
            _74 = mem[(32 * idx) + (32 * arg3.length) + 160]
            mem[(32 * arg3.length) + (32 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg3.length) + (32 * arg4.length) + 196] = _74
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg3.length) + (32 * arg4.length) + 164], _74
            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    stor4[arg2] = 1
    emit Payment(arg2);
    return arg3.length
}



}
