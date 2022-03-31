contract main {




// =====================  Runtime code  =====================


const blockTimestamp = block.timestamp

const chainID = chainid


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 nonces;
mapping of uint256 stor7;
address SOTEAddress;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function SOTE() payable {
    return SOTEAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x4545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x4545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(SOTEAddress)
    call SOTEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'wSOTE: transferFrom failed'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x4545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function canUnwrap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        return 0, 64, 26, Mask(208, 0, 'insufficient wSOTE balance')
    require ext_code.size(SOTEAddress)
    staticcall SOTEAddress.whiteListed(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 64, 28, Mask(224, 0, 'recipient is not whitelisted')
    require ext_code.size(SOTEAddress)
    staticcall SOTEAddress.isLockedForMV(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= block.timestamp:
        return 1, 64, 0
    return 0, 64, 20, 0x6b6564466f724d76000000000000000000000000
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if this.address == msg.sender:
        revert with 0, 'wSOTE: can not send to self'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require ext_code.size(SOTEAddress)
    call SOTEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'wSOTE: transfer failed'
}

function unwrapTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if this.address == arg1:
        revert with 0, 'wSOTE: can not send to self'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, 0);
    require ext_code.size(SOTEAddress)
    call SOTEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'wSOTE: transfer failed'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if this.address == arg1:
        revert with 0, 'wSOTE: can not send to self'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function canWrap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(SOTEAddress)
    staticcall SOTEAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        return 0, 64, 22, Mask(176, 0, 'insufficient allowance')
    require ext_code.size(SOTEAddress)
    staticcall SOTEAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        return 0, 64, 25, Mask(200, 0, 'insufficient SOTE balance')
    require ext_code.size(SOTEAddress)
    staticcall SOTEAddress.isLockedForMV(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > block.timestamp:
        return 0, 64, 24, Mask(192, 0, 'SOTE balance lockedForMv')
    require ext_code.size(SOTEAddress)
    staticcall SOTEAddress.whiteListed(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1, 64, 0
    return 0, 64, 24, Mask(192, 0, 'wSOTE is not whitelisted')
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if this.address == arg2:
        revert with 0, 'wSOTE: can not send to self'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x2945524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x4545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    if stor7[chainid]:
        if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 32, 34, 0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75, mem[520 len 30]
        if arg5 != 27:
            if arg5 != 28:
                revert with 0, 32, 34, 0x2945434453413a20696e76616c6964207369676e6174757265202776272076616c75, mem[520 len 30]
        signer = erecover(sha3(0, stor7[chainid], sha3(sha3(0x655065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'ERC20Permit: invalid signature'
        nonces[address(arg1)]++
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x4545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        Mask(192, 0, arg7),
                        mem[578 len 4]
        if not arg2:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    else:
        mem[320 len 82] = 0x65454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374
        mem[352] = uint256(name.field_0)
        idx = 352
        s = 0
        while name.length + 320 > idx:
            mem[idx + 32] = name[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        stor7[chainid] = sha3(sha3(0x65454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[352 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
        if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 
                        32,
                        34,
                        0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                        mem[ceil32(name.length) + 808 len 30]
        if arg5 != 27:
            if arg5 != 28:
                revert with 0, 
                            32,
                            34,
                            0x2945434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                            mem[ceil32(name.length) + 808 len 30]
        signer = erecover(sha3(0, sha3(sha3(0x65454950373132446f6d61696e28737472696e67206e616d652c737472696e672076657273696f6e2c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[352 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(sha3(0x655065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'ERC20Permit: invalid signature'
        nonces[address(arg1)]++
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x4545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        Mask(192, 0, arg7),
                        mem[ceil32(name.length) + 866 len 4]
        if not arg2:
            revert with 0, 
                        32,
                        34,
                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        Mask(208, 0, arg7),
                        mem[ceil32(name.length) + 866 len 4]
    ('bool', ('param', 'arg2'))
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function claimTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7377534f54453a2063616e206e6f742073656e6420746f207a65726f20616464726573,
                    mem[199 len 29]
    if SOTEAddress != arg1:
        if not arg1:
            if not arg3:
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                if eth.balance(this.address) < arg3:
                    call arg2 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    call arg2 with:
                       value arg3 wei
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
            if not arg3:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'wSOTE: trying to send 0 balance'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
            else:
                if ext_call.return_data[0] < arg3:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'wSOTE: trying to send 0 balance'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
                else:
                    if arg3 <= 0:
                        revert with 0, 'wSOTE: trying to send 0 balance'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3) << 224, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if totalSupply > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - totalSupply <= 0:
            revert with 0, 32, 41, 0x7377534f54453a207468657265206973206e6f206163636964656e74616c6c792073656e7420534f54, mem[269 len 23]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not arg3:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, ext_call.return_data[0] - totalSupply) >> 32
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - totalSupply) << 224, mem[324 len 4]
        else:
            if ext_call.return_data[0] - totalSupply < arg3:
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, ext_call.return_data[0] - totalSupply) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - totalSupply) << 224, mem[324 len 4]
            else:
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 224, mem[324 len 4]
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
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
