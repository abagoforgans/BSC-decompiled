contract main {




// =====================  Runtime code  =====================


#
#  - yearn(address arg1, address arg2, uint256 arg3)
#
const max = 10000


uint32 stor0;
address governanceAddress;
uint256 stor0;
address onesplitAddress;
address rewardsAddress;
address factoryAddress;
mapping of address vaults;
mapping of uint32 strategies;
mapping of uint32 converters;
uint256 split;

function strategies(address arg1) payable {
    require calldata.size - 4 >= 32
    return address(strategies[arg1])
}

function governance() payable {
    return address(governanceAddress)
}

function rewards() payable {
    return rewardsAddress
}

function vaults(address arg1) payable {
    require calldata.size - 4 >= 32
    return vaults[arg1]
}

function factory() payable {
    return factoryAddress
}

function converters(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return address(converters[arg1][arg2])
}

function onesplit() payable {
    return onesplitAddress
}

function split() payable {
    return split
}

function _fallback() payable {
    revert
}

function setSplit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    split = arg1
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    factoryAddress = arg1
}

function setOneSplit(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    onesplitAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    address(governanceAddress) = arg1
}

function setVault(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    vaults[address(arg1)] = arg2
    emit NewVault(arg1, arg2);
}

function setConverter(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    address(converters[address(arg1)][address(arg2)]) = arg3
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if vaults[address(arg1)] != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(strategies[address(arg1)]))
    call address(strategies[address(arg1)]).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    require ext_code.size(address(strategies[address(arg1)]))
    call address(strategies[address(arg1)]).withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    if address(strategies[address(arg1)]):
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).withdrawAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    address(strategies[address(arg1)]) = arg2
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(governanceAddress) != msg.sender:
        revert with 0, '!governance'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = address(ext_call.return_data[0])
    mem[164] = ext_call.return_data[0]
    mem[196] = arg3
    mem[228] = 0
    require ext_code.size(onesplitAddress)
    staticcall onesplitAddress.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require 0, address(ext_call.return_data[0]) << 64 <= 4294967296
    require 0, address(ext_call.return_data[0]) << 64 + 32 <= return_data.size
    require mem[0, address(ext_call.return_data[0]) << 64 + 96] <= 4294967296 and 0, address(ext_call.return_data[0]) << 64 + (32 * mem[0, address(ext_call.return_data[0]) << 64 + 96]) + 32 <= return_data.size
    return mem[96 len 4], address(arg2) << 64
}

function earn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(strategies[address(arg1)]))
    staticcall address(strategies[address(arg1)]).want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if arg1 == ext_call.return_data[12 len 20]:
        mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(strategies[address(arg1)])
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, strategies[address(arg1)]):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        require ext_code.size(address(strategies[address(arg1)]))
        call address(strategies[address(arg1)]).deposit() with:
             gas gas_remaining wei
    else:
        mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]), uint32(converters[address(arg1)][address(ext_call.return_data[0])]), Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(converters[address(arg1)][address(ext_call.return_data[0])])
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
            call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address rg1) with:
                 gas gas_remaining wei
                args address(strategies[address(arg1)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[296 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(strategies[address(arg1)])
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 407 len 22]
            require ext_code.size(address(strategies[address(arg1)]))
            call address(strategies[address(arg1)]).deposit() with:
                 gas gas_remaining wei
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
            require ext_code.size(address(converters[address(arg1)][address(ext_call.return_data[0])]))
            call address(converters[address(arg1)][address(ext_call.return_data[0])]).convert(address rg1) with:
                 gas gas_remaining wei
                args address(strategies[address(arg1)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 297 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, strategies[address(arg1)]), uint32(strategies[address(arg1)]), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(strategies[address(arg1)])
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, converters[address(arg1)][address(ext_call.return_data[0])]):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
                require ext_code.size(address(strategies[address(arg1)]))
                call address(strategies[address(arg1)]).deposit() with:
                     gas gas_remaining wei
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(strategies[address(arg1)]))
                call address(strategies[address(arg1)]).deposit() with:
                     gas gas_remaining wei
                    args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
