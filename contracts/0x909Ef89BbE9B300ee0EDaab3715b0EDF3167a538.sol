contract main {




// =====================  Runtime code  =====================


const sub_38c38195(?) = ext_call.return_data[0]

const sub_42932ea9(?) = 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e

const ethBalance = eth.balance(this.address)


mapping of uint256 credits;

function credits(address arg1) {
    require calldata.size - 4 >= 32
    return credits[arg1]
}

function _fallback() payable {
  stop
}

function depositETH() payable {
    if msg.value + credits[msg.sender] < credits[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    credits[msg.sender] += msg.value
}

function sub_fac8cc21(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e)
    call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_294c1d24(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e)
    call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > credits[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    credits[msg.sender] -= arg1
    if arg1 <= eth.balance(this.address):
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address) > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e)
        call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - eth.balance(this.address))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function sub_633822b4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e)
    call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    if arg1 + credits[msg.sender] < credits[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    credits[msg.sender] += arg1
}

function sub_3f7d1781(?) {
    require calldata.size - 4 >= 32
    if arg1 > credits[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    credits[msg.sender] -= arg1
    require ext_code.size(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e)
    staticcall 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e)
        call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e.0xd0e30db0 with:
           value arg1 - ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x30ff03d611ce2c4ba7942f8c2ea17385218f522e):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call 0x30ff03d611ce2c4ba7942f8c2ea17385218f522e with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
}



}
