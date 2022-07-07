contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;
array of uint256 stor5;

function split() payable {
    mem[64] = 96
    require not msg.value
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < 4:
        if eth.balance(this.address) and stor5[idx] > -1 / eth.balance(this.address):
            revert with 0, 17
        if idx >= 4:
            revert with 0, 50
        call stor1[idx] with:
           value eth.balance(this.address) * stor5[idx] / 10000 wei
             gas gas_remaining wei
        if return_data.size:
            _10 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_10] = return_data.size
            mem[_10 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Failed to send'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.sender, msg.value);
    else:
        require unknown_0xf7654176(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        idx = 0
        while idx < 4:
            if eth.balance(this.address) and stor5[idx] > -1 / eth.balance(this.address):
                revert with 0, 17
            if idx >= 4:
                revert with 0, 50
            call stor1[idx] with:
               value eth.balance(this.address) * stor5[idx] / 10000 wei
                 gas gas_remaining wei
            if return_data.size:
                _12 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_12] = return_data.size
                mem[_12 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor0 = 1
}



}
