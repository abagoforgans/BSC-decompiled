contract main {




// =====================  Runtime code  =====================


#
#  - sub_620b2c73(?)
#
address zapperAddress;
address empAddress;
address sub_f5075ee8Address;
address sub_e42a282fAddress;
address sub_c9215738Address;
address operatorAddress;
uint256 sub_73d8722b;
uint256 sub_f9e7931e;

function operator() payable {
    return operatorAddress
}

function sub_73d8722b(?) payable {
    return sub_73d8722b
}

function zapper() payable {
    return zapperAddress
}

function emp() payable {
    return empAddress
}

function sub_c9215738(?) payable {
    return sub_c9215738Address
}

function sub_e42a282f(?) payable {
    return sub_e42a282fAddress
}

function sub_f5075ee8(?) payable {
    return sub_f5075ee8Address
}

function sub_f9e7931e(?) payable {
    return sub_f9e7931e
}

function _fallback() payable {
    revert
}

function setMins(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7753747261746567793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    sub_73d8722b = arg1
    sub_f9e7931e = arg2
}

function sub_85499cfb(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7753747261746567793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args zapperAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7753747261746567793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
}



}
