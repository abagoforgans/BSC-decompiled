contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address token_address;
array of uint256 sub_af374224;
address sub_19627622Address;
address sub_c9712a2bAddress;
mapping of uint8 stor105;
address sub_dd4c2387Address;
uint256 endTime;

function sub_19627622(?) payable {
    return sub_19627622Address
}

function endTime() payable {
    return endTime
}

function token_address() payable {
    return token_address
}

function owner() payable {
    return owner
}

function sub_958d1e5e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor105[arg1])
}

function sub_af374224(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_af374224.length
    return uint256(sub_af374224[arg1])
}

function sub_c9712a2b(?) payable {
    return sub_c9712a2bAddress
}

function sub_dd4c2387(?) payable {
    return sub_dd4c2387Address
}

function _fallback() payable {
    revert
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OW:f1'
    token_address = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OW:f1'
    sub_dd4c2387Address = arg1
}

function sub_5a9be659(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'OW:f1'
    sub_c9712a2bAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OW:f1'
    if not arg1:
        revert with 0, 'OW:f2'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_c9712a2bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Different: Not the archeNFTFactoryAddress'
    endTime = arg1
}

function sub_c2329933(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c9712a2bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Different: Not the archeNFTFactoryAddress'
    sub_19627622Address = address(arg1)
}

function sub_eb46058d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_dd4c2387Address != msg.sender:
        if owner != msg.sender:
            if sub_19627622Address != msg.sender:
                revert with 0, 'Different:No auth'
    if arg1 >= sub_af374224.length:
        revert with 0, 'Same:Index err'
    require sub_af374224.length - 1 < sub_af374224.length
    require arg1 < sub_af374224.length
    uint256(sub_af374224[arg1]) = uint256(sub_af374224[sub_af374224.length])
    stor105[uint256(stor102[arg1])] = 0
    require sub_af374224.length
    uint256(sub_af374224[sub_af374224.length]) = 0
    sub_af374224.length--
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_51a0513a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'OW:f1'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'Same:sendNFT err'
}

function sub_8758c5eb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'OW:f1'
    require arg2 < sub_af374224.length
    require ext_code.size(token_address)
    call token_address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), uint256(sub_af374224[arg2])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_dd4c2387Address != msg.sender:
        if owner != msg.sender:
            if sub_19627622Address != msg.sender:
                revert with 0, 'Different:No auth'
    if arg2 >= sub_af374224.length:
        revert with 0, 'Same:Index err'
    require sub_af374224.length - 1 < sub_af374224.length
    require arg2 < sub_af374224.length
    uint256(sub_af374224[arg2]) = uint256(sub_af374224[sub_af374224.length])
    stor105[uint256(stor102[arg2])] = 0
    require sub_af374224.length
    uint256(sub_af374224[sub_af374224.length]) = 0
    sub_af374224.length--
}

function sub_b95f73c1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if sub_dd4c2387Address != msg.sender:
        revert with 0, 'Same:No auth'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 105
        if not stor105[mem[(32 * idx) + 128]]:
            require idx < ('cd', 4).length
            sub_af374224.length++
            uint256(sub_af374224[sub_af374224.length]) = mem[(32 * idx) + 128]
            require idx < ('cd', 4).length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 105
            stor105[mem[(32 * idx) + 128]] = 1
        idx = idx + 1
        continue 
}

function sub_4a5dc3aa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    if sub_c9712a2bAddress != msg.sender:
        revert with 0, 'Same: Not the archeNFTFactoryAddress'
    if sub_af374224.length <= 0:
        revert with 0, 'Same:No NFT in the contract'
    require sub_af374224.length
    require arg4 % sub_af374224.length < sub_af374224.length
    require sub_af374224.length - 1 < sub_af374224.length
    require arg4 % sub_af374224.length < sub_af374224.length
    uint256(sub_af374224[arg4 % sub_af374224.length]) = uint256(sub_af374224[sub_af374224.length])
    stor105[uint256(stor102[arg4 % stor102.length])] = 0
    require sub_af374224.length
    uint256(sub_af374224[sub_af374224.length]) = 0
    sub_af374224.length--
    require ext_code.size(token_address)
    call token_address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), uint256(sub_af374224[arg4 % sub_af374224.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, Mask(224, 0, sub_af374224[arg4 % sub_af374224.length])
}

function sub_fe13b716(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require block.timestamp >= endTime
    require sub_19627622Address == msg.sender
    idx = 0
    while idx < arg2:
        require 0 < sub_af374224.length
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(arg1)
        mem[164] = uint256(sub_af374224)
        require ext_code.size(token_address)
        call token_address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), address(arg1), uint256(sub_af374224)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_dd4c2387Address != msg.sender:
            if owner != msg.sender:
                if sub_19627622Address != msg.sender:
                    revert with 0, 'Different:No auth'
        if 0 >= sub_af374224.length:
            revert with 0, 'Same:Index err'
        require sub_af374224.length - 1 < sub_af374224.length
        require 0 < sub_af374224.length
        uint256(sub_af374224) = uint256(sub_af374224[sub_af374224.length])
        mem[32] = 105
        stor105[uint256(stor102)] = 0
        require sub_af374224.length
        mem[0] = 102
        uint256(sub_af374224[sub_af374224.length]) = 0
        sub_af374224.length--
        idx = idx + 1
        continue 
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        sub_c9712a2bAddress = 0x20a58e4edddf855cf77bcb0333017ac394dafef
        token_address = arg1
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address) > 0:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            sub_c9712a2bAddress = 0x20a58e4edddf855cf77bcb0333017ac394dafef
            token_address = arg1
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            sub_c9712a2bAddress = 0x20a58e4edddf855cf77bcb0333017ac394dafef
            token_address = arg1
            if ext_code.size(this.address) > 0:
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                Mask(248, 0, stor0.field_8) = 0
                Mask(248, 0, stor0.field_8) = 0
}

function sub_3a849944(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == bool(arg4)
    if arg2 >= sub_af374224.length:
        revert with 0, 'Same:Index err'
    if arg3 >= sub_af374224.length:
        revert with 0, 'Same:Index err'
    if arg2 >= arg3:
        revert with 0, 'Same:Index err'
    idx = 0
    while uint32(idx) < arg3 - arg2:
        require arg2 + uint32(idx) < sub_af374224.length
        mem[0] = uint256(stor[('name', 'sub_af374224', 102) + arg2 + uint32(idx)])
        mem[32] = 105
        stor105[uint256(stor[('name', 'stor102', 102) + arg2 + uint32(idx)])] = 0
        idx = idx + 1
        continue 
    idx = 0
    while uint32(idx) < sub_af374224.length - arg3:
        require arg3 + uint32(idx) < sub_af374224.length
        require arg2 + uint32(idx) < sub_af374224.length
        mem[0] = 102
        uint256(stor[('name', 'sub_af374224', 102) + arg2 + uint32(idx)]) = uint256(stor[('name', 'sub_af374224', 102) + arg3 + uint32(idx)])
        if arg4:
            require arg2 < sub_af374224.length
            mem[0] = 102
            mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = address(arg1)
            mem[164] = uint256(sub_af374224[arg2])
            require ext_code.size(token_address)
            call token_address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), uint256(sub_af374224[arg2])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    while uint32(idx) < arg3 - arg2:
        require sub_af374224.length
        mem[0] = 102
        uint256(sub_af374224[sub_af374224.length]) = 0
        sub_af374224.length--
        idx = idx + 1
        continue 
}



}
