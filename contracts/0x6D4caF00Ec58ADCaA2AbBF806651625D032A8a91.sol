contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - withdrawAll()
#
const getName = 'S0'

const want = 0x4197c6ef3879a08cd51e5560da5064b773aa1d

const pancakeSwapRouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const balanceOf = ext_call.return_data[0]

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const balanceOfWant = ext_call.return_data[0]

const cake = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const FEE_DENOMINATOR = 10000


address governanceAddress;
uint32 stor1;
address controllerAddress;
uint256 stor1;
address strategistAddress;
uint256 withdrawalFee;
uint256 harvesterReward;

function strategist() payable {
    return strategistAddress
}

function governance() payable {
    return governanceAddress
}

function withdrawalFee() payable {
    return withdrawalFee
}

function harvesterReward() payable {
    return harvesterReward
}

function controller() payable {
    return address(controllerAddress)
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if arg1 == 0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
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
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d)
    staticcall 0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call 0x004197c6ef3879a08cd51e5560da5064b773aa1d with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
        else:
            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if withdrawalFee * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
            call 0x004197c6ef3879a08cd51e5560da5064b773aa1d with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[388 len 4]
    else:
        if not ext_call.return_data[0]:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x004197c6ef3879a08cd51e5560da5064b773aa1d with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        else:
            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000004197c6ef3879a08cd51e5560da5064b773aa1d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4197c6ef3879a08cd51e5560da5064b773aa1d):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
            call 0x004197c6ef3879a08cd51e5560da5064b773aa1d with:
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[388 len 4]
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}



}
