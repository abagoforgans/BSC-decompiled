contract main {




// =====================  Runtime code  =====================


const dead = 57005


address tokenAddress;
address sub_9c0fd0ffAddress;
uint256 pricePerFullShare;

function sub_9c0fd0ff(?) payable {
    return sub_9c0fd0ffAddress
}

function pricePerFullShare() payable {
    return pricePerFullShare
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function refund() payable {
    if ext_code.size(msg.sender):
        revert with 0, '!contract'
    require ext_code.size(sub_9c0fd0ffAddress)
    staticcall sub_9c0fd0ffAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(sub_9c0fd0ffAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    call sub_9c0fd0ffAddress.0xdead with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not ext_call.return_data[0]:
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[584 len 4]
        else:
            if pricePerFullShare * ext_call.return_data[0] / ext_call.return_data[0] != pricePerFullShare:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[520 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, pricePerFullShare * ext_call.return_data[0] / 10^18) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, pricePerFullShare * ext_call.return_data[0] / 10^18) << 224, mem[584 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
        else:
            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[552]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 631 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not ext_call.return_data[0]:
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 585 len 4]
        else:
            if pricePerFullShare * ext_call.return_data[0] / ext_call.return_data[0] != pricePerFullShare:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, pricePerFullShare * ext_call.return_data[0] / 10^18) >> 32
            call tokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, pricePerFullShare * ext_call.return_data[0] / 10^18) << 224, mem[ceil32(return_data.size) + 585 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 631 len 22]
        else:
            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 553]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
