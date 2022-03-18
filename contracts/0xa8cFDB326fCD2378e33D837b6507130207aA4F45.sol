contract main {




// =====================  Runtime code  =====================


const BNB = 1


address feeToAddress;
address feeToSetterAddress;
mapping of address pair;
array of address allPairs;

function feeTo() {
    return feeToAddress
}

function feeToSetter() {
    return feeToSetterAddress
}

function allPairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allPairsLength() {
    return allPairs.length
}

function getPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'UniswapV2: FORBIDDEN'
    feeToAddress = arg1
}

function setFeeToSetter(address arg1) {
    require calldata.size - 4 >= 32
    if feeToSetterAddress != msg.sender:
        revert with 0, 'UniswapV2: FORBIDDEN'
    feeToSetterAddress = arg1
}

function pairAddressFor(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[11815 len 37], mem[201 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, Mask(160, 96, this.address) >> 96, sha3(arg1, arg2), sha3(code.data[3055 len 8760])))
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, Mask(160, 96, this.address) >> 96, sha3(arg2, arg1), sha3(code.data[3055 len 8760])))
}

function createPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'UniswapV2: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'UniswapV2: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[3055 len 8760]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'UniswapV2: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'UniswapV2: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[3055 len 8760]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg2, arg1);
    return address(create2.new_address)
}

function sub_37b2159c(?) payable {
    require calldata.size - 4 >= 160
    if arg1 == arg2:
        revert with 0, 'UniswapV2: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'UniswapV2: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[3055 len 8760]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg2);
    else:
        if not arg2:
            revert with 0, 'UniswapV2: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'UniswapV2: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[3055 len 8760]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit PairCreated(address(create2.new_address), allPairs.length, arg2, arg1);
    if 1 == arg1:
        if arg2 != 1:
            mem[9100 len 96] = unknown_0x23b872dd(?????), msg.sender, address(create2.new_address), Mask(224, 32, arg4) >> 32
            mem[9224 len 4] = uint32(arg4)
            call arg2 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg4) << 480, mem[9196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[11852 len 36], mem[9204 len 20], uint32(arg4), mem[9228 len 4]
                if not code.data[3055 len 32]:
                    revert with 0, 32, 36, code.data[11852 len 36], mem[9204 len 20], uint32(arg4), mem[9228 len 4]
            else:
                mem[9132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[11852 len 36], mem[ceil32(return_data.size) + 9205 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[9132]:
                        revert with 0, 32, 36, code.data[11852 len 36], mem[ceil32(return_data.size) + 9205 len 28]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).mint(address rg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return address(create2.new_address), ext_call.return_data[0]
    mem[9100 len 96] = unknown_0x23b872dd(?????), msg.sender, address(create2.new_address), Mask(224, 32, arg3) >> 32
    mem[9224 len 4] = uint32(arg3)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[9196 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 36, code.data[11852 len 36], mem[9204 len 20], uint32(arg3), mem[9228 len 4]
        if not code.data[3055 len 32]:
            revert with 0, 32, 36, code.data[11852 len 36], mem[9204 len 20], uint32(arg3), mem[9228 len 4]
        if 1 == arg2:
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).mint(address rg1) with:
               value msg.value wei
                 gas gas_remaining wei
                args arg5
        else:
            mem[9232 len 96] = unknown_0x23b872dd(?????), msg.sender, address(create2.new_address), Mask(224, 32, arg4) >> 32
            mem[9356 len 4] = uint32(arg4)
            call arg2 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg4) << 480, mem[9328 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[11852 len 36], mem[9336 len 20], uint32(arg4), mem[9360 len 4]
                if not code.data[3055 len 32]:
                    revert with 0, 32, 36, code.data[11852 len 36], mem[9336 len 20], uint32(arg4), mem[9360 len 4]
            else:
                mem[9264 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 36, code.data[11852 len 36], mem[ceil32(return_data.size) + 9337 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[9264]:
                        revert with 0, 32, 36, code.data[11852 len 36], mem[ceil32(return_data.size) + 9337 len 28]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).mint(address rg1) with:
                 gas gas_remaining wei
                args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return address(create2.new_address), ext_call.return_data[0]
    mem[9132 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 32, 36, code.data[11852 len 36], mem[ceil32(return_data.size) + 9205 len 28]
    if return_data.size:
        require return_data.size >= 32
        if not mem[9132]:
            revert with 0, 32, 36, code.data[11852 len 36], mem[ceil32(return_data.size) + 9205 len 28]
    if 1 == arg2:
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).mint(address rg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return address(create2.new_address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 9233 len 96] = unknown_0x23b872dd(?????), msg.sender, address(create2.new_address), Mask(224, 32, arg4) >> 32
    mem[ceil32(return_data.size) + 9357 len 4] = uint32(arg4)
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[ceil32(return_data.size) + 9329 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        code.data[11852 len 36],
                        mem[ceil32(return_data.size) + 9337 len 20],
                        uint32(arg4),
                        mem[ceil32(return_data.size) + 9361 len 4]
        if not code.data[3055 len 32]:
            revert with 0, 
                        32,
                        36,
                        code.data[11852 len 36],
                        mem[ceil32(return_data.size) + 9337 len 20],
                        uint32(arg4),
                        mem[ceil32(return_data.size) + 9361 len 4]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).mint(address rg1) with:
             gas gas_remaining wei
            args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return address(create2.new_address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 9265 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    code.data[11852 len 36],
                    mem[(2 * ceil32(return_data.size)) + 9338 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 9265]:
            revert with 0, 
                        32,
                        36,
                        code.data[11852 len 36],
                        mem[(2 * ceil32(return_data.size)) + 9338 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).mint(address rg1) with:
         gas gas_remaining wei
        args address(arg5), mem[(2 * ceil32(return_data.size)) + 9270 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(create2.new_address), 
           ext_call.return_data[0],
           mem[(2 * ceil32(return_data.size)) + 9298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
