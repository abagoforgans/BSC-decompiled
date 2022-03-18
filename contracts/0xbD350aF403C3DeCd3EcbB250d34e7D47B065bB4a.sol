contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint32 stor51;
uint128 stor51; offset 160
address adminAddress;
uint256 stor51;
uint256 stor51;
address tokenAddress;

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'require admin'
    tokenAddress = arg1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(stor51.field_0) = Mask(96, 0, stor51.field_160)
        tokenAddress = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            uint256(stor51.field_0) = Mask(96, 0, stor51.field_160)
            tokenAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint256(stor51.field_0) = Mask(96, 0, stor51.field_160)
            tokenAddress = arg1
            uint8(stor0.field_8) = 0
}

function claimTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'require admin'
    if not arg1:
        call adminAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = adminAddress
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor51.field_0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51.field_0), uint32(stor51.field_0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor51.field_0), uint32(stor51.field_0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor51.field_0), uint32(stor51.field_0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit ClaimedTokens(address(arg1), adminAddress, ext_call.return_data[0]);
}

function multisendToken(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length != arg1.length:
        revert with 0, 'length not match'
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        _84 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + arg2 + 36)]
        _85 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_85 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_85 + 36 len 28]
        mem[64] = _84 + 196
        mem[_84 + 132] = 32
        mem[_84 + 164] = 'SafeERC20: low-level call failed'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        _90 = mem[_85]
        t = 0
        while t < _90:
            mem[t + _84 + 196] = mem[t + _85 + 32]
            t = t + 32
            continue 
        if ceil32(_90) > _90:
            mem[_90 + _84 + 196] = 0
        call tokenAddress.mem[_84 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_84 + 200 len _90 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_84 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_84 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _84 + 264] = mem[idx + _84 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_84 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _84 + ceil32(return_data.size) + 197
            mem[_84 + 196] = return_data.size
            mem[_84 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_84 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_84 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _84 + ceil32(return_data.size) + 265] = mem[idx + _84 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_84 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_84 + 228] == bool(mem[_84 + 228])
                if not mem[_84 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * idx) + arg2 + 36)] + s
        continue 
    emit Multisended(s, tokenAddress);
}



}
