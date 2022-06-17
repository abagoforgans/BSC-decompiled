contract main {




// =====================  Runtime code  =====================


#
#  - sub_3fec4f61(?)
#  - sub_5766106b(?)
#
address owner;
uint32 stor1;
address sub_3a1ff21bAddress;
uint256 stor1;
address sub_8092b214Address;
address sub_d5bcb610Address;
uint256 stor4;

function sub_3a1ff21b(?) {
    return address(sub_3a1ff21bAddress)
}

function sub_8092b214(?) {
    return sub_8092b214Address
}

function owner() {
    return owner
}

function sub_d5bcb610(?) {
    return sub_d5bcb610Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_452993d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8092b214Address = address(arg1)
    return 1
}

function sub_88a230a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_3a1ff21bAddress) = address(arg1)
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d47ea195(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return eth.balance(this.address)
}

function sub_b0b7895b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_15619ca5(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == uint16(cd[100])
    require cd[132] == cd[132]
    require cd[164] == uint32(cd[164])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    if ('cd', 196).length <= 1:
        mem[100] = msg.sender
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[68]:
            revert with 0, 'Atlas DEX: You have low balance to lock.'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = cd[68]
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[36])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0
        mem[ceil32(return_data.size) + 392] = 0
        call address(cd[36]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[68], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        call address(cd[4]).transferTokens(address arg1, uint256 arg2, uint16 arg3, bytes32 arg4, uint256 arg5, uint32 arg6) with:
             gas gas_remaining wei
            args address(cd[36]), cd[68], cd[100] << 240, cd[132], 0, uint32(cd[164])
    else:
        require 4 <= ('cd', 196).length
        require ('cd', 196).length <= ('cd', 196).length
        require ('cd', 196).length - 4 >= 96
        require ('cd', 196)[0] == address(('cd', 196)[0])
        require ('cd', 196)[1] <= test266151307()
        require ('cd', 196).length + -('cd', 196)[1] - 4 >= 256
        require cd[(cd[196] + ('cd', 196)[1] + 40)] == address(cd[(cd[196] + ('cd', 196)[1] + 40)])
        require cd[(cd[196] + ('cd', 196)[1] + 72)] == address(cd[(cd[196] + ('cd', 196)[1] + 72)])
        mem[128] = cd[(cd[196] + ('cd', 196)[1] + 72)]
        require cd[(cd[196] + ('cd', 196)[1] + 104)] == address(cd[(cd[196] + ('cd', 196)[1] + 104)])
        mem[160] = cd[(cd[196] + ('cd', 196)[1] + 104)]
        require cd[(cd[196] + ('cd', 196)[1] + 136)] == address(cd[(cd[196] + ('cd', 196)[1] + 136)])
        mem[192] = cd[(cd[196] + ('cd', 196)[1] + 136)]
        require cd[(cd[196] + ('cd', 196)[1] + 168)] == cd[(cd[196] + ('cd', 196)[1] + 168)]
        mem[224] = cd[(cd[196] + ('cd', 196)[1] + 168)]
        require cd[(cd[196] + ('cd', 196)[1] + 200)] == cd[(cd[196] + ('cd', 196)[1] + 200)]
        mem[256] = cd[(cd[196] + ('cd', 196)[1] + 200)]
        require cd[(cd[196] + ('cd', 196)[1] + 232)] == cd[(cd[196] + ('cd', 196)[1] + 232)]
        mem[288] = cd[(cd[196] + ('cd', 196)[1] + 232)]
        require cd[(cd[196] + ('cd', 196)[1] + 264)] <= test266151307()
        require cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 71 < cd[196] + ('cd', 196).length + 36
        if cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + 353 > test266151307() or ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + 353 < 352:
            revert with 'NH{q', 65
        mem[352] = cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)]
        require ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)] + 72 <= ('cd', 196).length + 36
        mem[384 len cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)]] = call.data[cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 72 len cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)]]
        mem[cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)] + 384] = 0
        mem[320] = 352
        require ('cd', 196)[2] <= test266151307()
        require cd[196] + ('cd', 196)[2] + 71 < cd[196] + ('cd', 196).length + 36
        if cd[(cd[196] + ('cd', 196)[2] + 40)] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 354 > test266151307() or ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 354 < 353:
            revert with 'NH{q', 65
        mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + 353] = cd[(cd[196] + ('cd', 196)[2] + 40)]
        require ('cd', 196)[2] + cd[(cd[196] + ('cd', 196)[2] + 40)] + 72 <= ('cd', 196).length + 36
        mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + 385 len cd[(cd[196] + ('cd', 196)[2] + 40)]] = call.data[cd[196] + ('cd', 196)[2] + 72 len cd[(cd[196] + ('cd', 196)[2] + 40)]]
        mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + cd[(cd[196] + ('cd', 196)[2] + 40)] + 385] = 0
        if address(cd[(cd[196] + ('cd', 196)[1] + 72)]) != address(cd[36]):
            revert with 0, 'Atlas DEX: Dest Token Not Matched'
        mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 354 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ('cd', 196).length + 354] = 0
        call address(sub_3a1ff21bAddress) with:
             gas gas_remaining wei
            args call.data[cd[196] + 36 len ('cd', 196).length]
        if not return_data.size:
            require ext_call.success
            require cd[(cd[196] + ('cd', 196)[1] + 40)] >= 64
            require cd[(cd[196] + ('cd', 196)[1] + 72)] == cd[(cd[196] + ('cd', 196)[1] + 72)]
            require cd[(cd[196] + ('cd', 196)[1] + 104)] == cd[(cd[196] + ('cd', 196)[1] + 104)]
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 358] = msg.sender
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 354] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < cd[(cd[196] + ('cd', 196)[1] + 72)]:
                revert with 0, 'Atlas DEX: You have low balance to lock.'
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 390] = msg.sender
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 422] = this.address
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 454] = cd[(cd[196] + ('cd', 196)[1] + 72)]
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 354] = 100
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 390 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 386 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 486] = 32
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 518] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[36])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 550 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[(cd[196] + ('cd', 196)[1] + 72)], 0
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 650] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[(cd[196] + ('cd', 196)[1] + 72)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[(cd[196] + ('cd', 196)[1] + 72)], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if cd[(cd[196] + ('cd', 196)[1] + 40)] > 0:
                        revert with memory
                          from 128
                           len cd[(cd[196] + ('cd', 196)[1] + 40)]
                    revert with 0, 'SafeERC20: low-level call failed'
                if cd[(cd[196] + ('cd', 196)[1] + 40)] > 0:
                    require cd[(cd[196] + ('cd', 196)[1] + 40)] >= 32
                    require cd[(cd[196] + ('cd', 196)[1] + 72)] == bool(cd[(cd[196] + ('cd', 196)[1] + 72)])
                    if not cd[(cd[196] + ('cd', 196)[1] + 72)]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 582 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 582] == bool(mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 582])
                    if not mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 582]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            call address(cd[4]).transferTokens(address arg1, uint256 arg2, uint16 arg3, bytes32 arg4, uint256 arg5, uint32 arg6) with:
                 gas gas_remaining wei
                args address(cd[36]), cd[(cd[196] + ('cd', 196)[1] + 72)], cd[100] << 240, cd[132], 0, uint32(cd[164])
        else:
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 354] = return_data.size
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 386 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            require return_data.size >= 64
            _137 = mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 386]
            require mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 386] == mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 386]
            require mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 418] == mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + 418]
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 359] = msg.sender
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + 355] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < _137:
                revert with 0, 'Atlas DEX: You have low balance to lock.'
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 391] = msg.sender
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 423] = this.address
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 455] = _137
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 355] = 100
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 391 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 387 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 487] = 32
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 519] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[36])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 551 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), _137, 0
            mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 651] = 0
            call address(cd[36]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), _137, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), _137, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if cd[(cd[196] + ('cd', 196)[1] + 40)] > 0:
                        revert with memory
                          from 128
                           len cd[(cd[196] + ('cd', 196)[1] + 40)]
                    revert with 0, 'SafeERC20: low-level call failed'
                if cd[(cd[196] + ('cd', 196)[1] + 40)] > 0:
                    require cd[(cd[196] + ('cd', 196)[1] + 40)] >= 32
                    require cd[(cd[196] + ('cd', 196)[1] + 72)] == bool(cd[(cd[196] + ('cd', 196)[1] + 72)])
                    if not cd[(cd[196] + ('cd', 196)[1] + 72)]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 583 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 583] == bool(mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 583])
                    if not mem[ceil32(ceil32(cd[(cd[196] + ('cd', 196)[1] + cd[(cd[196] + ('cd', 196)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[196] + ('cd', 196)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 583]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            call address(cd[4]).transferTokens(address arg1, uint256 arg2, uint16 arg3, bytes32 arg4, uint256 arg5, uint32 arg6) with:
                 gas gas_remaining wei
                args address(cd[36]), _137, cd[100] << 240, cd[132], 0, uint32(cd[164])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    return ext_call.return_data[24 len 8]
}

function sub_d8d66559(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require 4 <= ('cd', 4).length
    require ('cd', 4).length <= ('cd', 4).length
    require ('cd', 4).length - 4 >= 96
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] <= test266151307()
    require ('cd', 4).length + -('cd', 4)[1] - 4 >= 256
    require cd[(cd[4] + ('cd', 4)[1] + 40)] == address(cd[(cd[4] + ('cd', 4)[1] + 40)])
    require cd[(cd[4] + ('cd', 4)[1] + 72)] == address(cd[(cd[4] + ('cd', 4)[1] + 72)])
    mem[128] = cd[(cd[4] + ('cd', 4)[1] + 72)]
    require cd[(cd[4] + ('cd', 4)[1] + 104)] == address(cd[(cd[4] + ('cd', 4)[1] + 104)])
    mem[160] = cd[(cd[4] + ('cd', 4)[1] + 104)]
    require cd[(cd[4] + ('cd', 4)[1] + 136)] == address(cd[(cd[4] + ('cd', 4)[1] + 136)])
    mem[192] = cd[(cd[4] + ('cd', 4)[1] + 136)]
    require cd[(cd[4] + ('cd', 4)[1] + 168)] == cd[(cd[4] + ('cd', 4)[1] + 168)]
    mem[224] = cd[(cd[4] + ('cd', 4)[1] + 168)]
    require cd[(cd[4] + ('cd', 4)[1] + 200)] == cd[(cd[4] + ('cd', 4)[1] + 200)]
    mem[256] = cd[(cd[4] + ('cd', 4)[1] + 200)]
    require cd[(cd[4] + ('cd', 4)[1] + 232)] == cd[(cd[4] + ('cd', 4)[1] + 232)]
    mem[288] = cd[(cd[4] + ('cd', 4)[1] + 232)]
    require cd[(cd[4] + ('cd', 4)[1] + 264)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 71 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + 353 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + 353 < 352:
        revert with 'NH{q', 65
    mem[352] = cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)]
    require ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)] + 72 <= ('cd', 4).length + 36
    mem[384 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)]] = call.data[cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 72 len cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)]]
    mem[cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)] + 384] = 0
    mem[320] = 352
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 71 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[2] + 40)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + 354 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + 354 < 353:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + 353] = cd[(cd[4] + ('cd', 4)[2] + 40)]
    require ('cd', 4)[2] + cd[(cd[4] + ('cd', 4)[2] + 40)] + 72 <= ('cd', 4).length + 36
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + 385 len cd[(cd[4] + ('cd', 4)[2] + 40)]] = call.data[cd[4] + ('cd', 4)[2] + 72 len cd[(cd[4] + ('cd', 4)[2] + 40)]]
    if address(cd[(cd[4] + ('cd', 4)[1] + 40)]) == sub_d5bcb610Address:
        if msg.value < cd[(cd[4] + ('cd', 4)[1] + 168)]:
            revert with 0, 'Atlas DEX: Amount Not match with Swap Amount.'
        call address(sub_3a1ff21bAddress) with:
           value cd[(cd[4] + ('cd', 4)[1] + 168)] wei
             gas gas_remaining wei
            args call.data[cd[4] + 36 len ('cd', 4).length]
        if not ext_call.success:
            revert with 0, 'Atlas Dex: Swap Return Failed'
        return 1
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + 358] = this.address
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + 390] = address(sub_3a1ff21bAddress)
    staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(sub_3a1ff21bAddress)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + 354] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= cd[(cd[4] + ('cd', 4)[1] + 168)]:
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 358] = msg.sender
        staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 354] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[(cd[4] + ('cd', 4)[1] + 168)]:
            revert with 0, 'Atlas DEX: You have insufficent balance to swap'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 390] = msg.sender
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 422] = this.address
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 454] = cd[(cd[4] + ('cd', 4)[1] + 168)]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 354] = 100
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 390 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 386 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 486] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 518] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 550 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 650] = 0
        call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                    revert with memory
                      from 128
                       len cd[(cd[4] + ('cd', 4)[1] + 40)]
                revert with 0, 'SafeERC20: low-level call failed'
            if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
                require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
                if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 582 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 582] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 582])
                if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 582]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        call address(sub_3a1ff21bAddress) with:
             gas gas_remaining wei
            args call.data[cd[4] + 36 len ('cd', 4).length]
        if not ext_call.success:
            revert with 0, 'Atlas Dex: Swap Return Failed'
        return 1
    if not stor4:
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 390] = address(sub_3a1ff21bAddress)
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 422] = stor4
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 354] = 68
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 390 len 28] = Mask(224, 0, stor1)
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 386 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 454] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 486] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 518 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), stor4, 0
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 586] = 0
        call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), stor4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), stor4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                    revert with memory
                      from 128
                       len cd[(cd[4] + ('cd', 4)[1] + 40)]
                revert with 0, 'SafeERC20: low-level call failed'
            if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
                require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
                if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 522] = msg.sender
            staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 518] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < cd[(cd[4] + ('cd', 4)[1] + 168)]:
                revert with 0, 'Atlas DEX: You have insufficent balance to swap'
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 554] = msg.sender
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 586] = this.address
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 618] = cd[(cd[4] + ('cd', 4)[1] + 168)]
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 518] = 100
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 550 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 650] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 682] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 714 len 128] = 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 814] = 0
            call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
               funct Mask(32, 224, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                        revert with memory
                          from 128
                           len cd[(cd[4] + ('cd', 4)[1] + 40)]
                    revert with 0, 'SafeERC20: low-level call failed'
                if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                    require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
                    require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
                    if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                call address(sub_3a1ff21bAddress) with:
                     gas gas_remaining wei
                    args call.data[cd[4] + 36 len ('cd', 4).length]
                if not ext_call.success:
                    revert with 0, 'Atlas Dex: Swap Return Failed'
                return 1
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 714] = return_data.size
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 746 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 746] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 746])
                if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 746]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 4).length + 715] = 0
            call address(sub_3a1ff21bAddress) with:
                 gas gas_remaining wei
                args call.data[cd[4] + 36 len ('cd', 4).length]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Atlas Dex: Swap Return Failed'
                return 1
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715] = return_data.size
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                return 1
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 720] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 752] = 29
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 784] = 'Atlas Dex: Swap Return Failed'
            revert with memory
              from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716
               len (7 * ceil32(return_data.size)) + 100
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 518] = return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 550 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 550] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 550])
            if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 550]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 523] = msg.sender
        staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + ceil32(return_data.size) + 519] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[(cd[4] + ('cd', 4)[1] + 168)]:
            revert with 0, 'Atlas DEX: You have insufficent balance to swap'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 555] = msg.sender
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 587] = this.address
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = cd[(cd[4] + ('cd', 4)[1] + 168)]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 519] = 100
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 551 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 651] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 683] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len 128] = 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 815] = 0
        call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                    revert with memory
                      from 128
                       len cd[(cd[4] + ('cd', 4)[1] + 40)]
                revert with 0, 'SafeERC20: low-level call failed'
            if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
                require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
                if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 4).length + 715] = 0
            call address(sub_3a1ff21bAddress) with:
                 gas gas_remaining wei
                args call.data[cd[4] + 36 len ('cd', 4).length]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Atlas Dex: Swap Return Failed'
                return 1
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715] = return_data.size
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                return 1
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 720] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 752] = 29
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 784] = 'Atlas Dex: Swap Return Failed'
            revert with memory
              from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715] = return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 720] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 752] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 784] = 'SafeERC20: low-level call failed'
            revert with memory
              from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 747] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 747])
            if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 747]:
                mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 720] = 32
                mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 752] = 42
                mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 784] = 'SafeERC20: ERC20 operation did n'
                mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 816] = 'ot succeed'
                revert with memory
                  from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ('cd', 4).length + 716] = 0
        call address(sub_3a1ff21bAddress) with:
             gas gas_remaining wei
            args call.data[cd[4] + 36 len ('cd', 4).length]
        if not return_data.size:
            if ext_call.success:
                return 1
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 720] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 752] = 29
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 784] = 'Atlas Dex: Swap Return Failed'
            revert with memory
              from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 716
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 748 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 753] = 29
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = 'Atlas Dex: Swap Return Failed'
        revert with memory
          from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
           len (7 * ceil32(return_data.size)) + 100
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 358] = this.address
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 390] = address(sub_3a1ff21bAddress)
    staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(sub_3a1ff21bAddress)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + ceil32(return_data.size) + 354] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 390] = address(sub_3a1ff21bAddress)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 422] = stor4
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 354] = 68
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 390 len 28] = Mask(224, 0, stor1)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 386 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 454] = 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 486] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 518 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), stor4, 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 586] = 0
    call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), stor4, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), stor4, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                revert with memory
                  from 128
                   len cd[(cd[4] + ('cd', 4)[1] + 40)]
            revert with 0, 'SafeERC20: low-level call failed'
        if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
            require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
            require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
            if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 522] = msg.sender
        staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 518] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[(cd[4] + ('cd', 4)[1] + 168)]:
            revert with 0, 'Atlas DEX: You have insufficent balance to swap'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 554] = msg.sender
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 586] = this.address
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 618] = cd[(cd[4] + ('cd', 4)[1] + 168)]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 518] = 100
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 550 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 650] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 682] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 714 len 128] = 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 814] = 0
        call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                    revert with memory
                      from 128
                       len cd[(cd[4] + ('cd', 4)[1] + 40)]
                revert with 0, 'SafeERC20: low-level call failed'
            if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
                require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
                if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            call address(sub_3a1ff21bAddress) with:
                 gas gas_remaining wei
                args call.data[cd[4] + 36 len ('cd', 4).length]
            if not ext_call.success:
                revert with 0, 'Atlas Dex: Swap Return Failed'
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 714] = return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 746 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 746] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 746])
            if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + 746]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 4).length + 715] = 0
        call address(sub_3a1ff21bAddress) with:
             gas gas_remaining wei
            args call.data[cd[4] + 36 len ('cd', 4).length]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Atlas Dex: Swap Return Failed'
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 715] = return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 720] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 752] = 29
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 784] = 'Atlas Dex: Swap Return Failed'
        revert with memory
          from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716
           len (13 * ceil32(return_data.size)) + 100
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 518] = return_data.size
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 550 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 550] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 550])
        if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + 550]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 523] = msg.sender
    staticcall address(cd[(cd[4] + ('cd', 4)[1] + 40)]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 519] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[(cd[4] + ('cd', 4)[1] + 168)]:
        revert with 0, 'Atlas DEX: You have insufficent balance to swap'
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 555] = msg.sender
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 587] = this.address
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = cd[(cd[4] + ('cd', 4)[1] + 168)]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 519] = 100
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 551 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 651] = 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 683] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(cd[(cd[4] + ('cd', 4)[1] + 40)])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len 128] = 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 815] = 0
    call address(cd[(cd[4] + ('cd', 4)[1] + 40)]) with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), cd[(cd[4] + ('cd', 4)[1] + 168)], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
                revert with memory
                  from 128
                   len cd[(cd[4] + ('cd', 4)[1] + 40)]
            revert with 0, 'SafeERC20: low-level call failed'
        if cd[(cd[4] + ('cd', 4)[1] + 40)] > 0:
            require cd[(cd[4] + ('cd', 4)[1] + 40)] >= 32
            require cd[(cd[4] + ('cd', 4)[1] + 72)] == bool(cd[(cd[4] + ('cd', 4)[1] + 72)])
            if not cd[(cd[4] + ('cd', 4)[1] + 72)]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ('cd', 4).length + 715] = 0
        call address(sub_3a1ff21bAddress) with:
             gas gas_remaining wei
            args call.data[cd[4] + 36 len ('cd', 4).length]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Atlas Dex: Swap Return Failed'
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 715] = return_data.size
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 720] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 752] = 29
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 784] = 'Atlas Dex: Swap Return Failed'
        revert with memory
          from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 715] = return_data.size
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 720] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 752] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 784] = 'SafeERC20: low-level call failed'
        revert with memory
          from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 747] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 747])
        if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 747]:
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 720] = 32
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 752] = 42
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 784] = 'SafeERC20: ERC20 operation did n'
            mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 816] = 'ot succeed'
            revert with memory
              from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + ('cd', 4).length + 716] = 0
    call address(sub_3a1ff21bAddress) with:
         gas gas_remaining wei
        args call.data[cd[4] + 36 len ('cd', 4).length]
    if not return_data.size:
        if ext_call.success:
            return 1
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 720] = 32
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 752] = 29
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 784] = 'Atlas Dex: Swap Return Failed'
        revert with memory
          from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 716
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + 748 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        return 1
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 753] = 29
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = 'Atlas Dex: Swap Return Failed'
    revert with memory
      from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 264)] + 40)])) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[2] + 40)])) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 717
       len (13 * ceil32(return_data.size)) + 100
}



}
