contract main {




// =====================  Runtime code  =====================


address owner;
address TOKENAddress;

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
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

function sub_46bbd731(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Airdrop: Wrong list lengths!'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        staticcall TOKENAddress.unvestedBalance(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if mem[_19] >= cd[((32 * idx) + cd[36] + 36)]:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[mem[64]] = 0x2dde3a0800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(TOKENAddress)
            call TOKENAddress.0x2dde3a08 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(TOKENAddress)
            call TOKENAddress.0x2dde3a08 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), mem[_19]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if cd[((32 * idx) + cd[36] + 36)] < mem[_19]:
                revert with 0, 17
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)] - _20
            call TOKENAddress.0x23b872dd with:
                 gas gas_remaining wei
                args owner, address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)] - _20
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5bc87b60(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Airdrop: Wrong list lengths!'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'Airdrop: Wrong list lengths!'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
        call TOKENAddress.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        staticcall TOKENAddress.unvestedBalance(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_29] <= 0:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            mem[mem[64]] = 0xa6f8bd3100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(TOKENAddress)
            call TOKENAddress.0xa6f8bd31 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        else:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            staticcall TOKENAddress.unvestedBalance(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _36 = mem[_35]
            if mem[_35] > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = 0xa6f8bd3100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = _36 + cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(TOKENAddress)
            call TOKENAddress.0xa6f8bd31 with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), _36 + cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
