contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - deposit()
#
const balanceOfPool = ext_call.return_data[0]

const unirouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const balanceOf = (2 * ext_call.return_data[0])

const balanceOfCake = ext_call.return_data[0]

const syrup = 0x9cf7bc57584b7998236eff51b98a168dcea9b0

const withdrawalFee = 10

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const rewards = 0x453d4ba9a2d594314df88564248497f7d74d6b2c

const withdrawalMax = 10000

const callfee = 200

const cake = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const fee = 800

const maxfee = 1000

const masterchef = 0x73feaa1ee314f8c655e354234017be2193c9e24e


address outputAddress;
address sub_fcde5e1cAddress;
uint32 stor2;
address vaultAddress;
uint256 stor2;
array of address sub_30041650;
array of address cakeToWbnbRoute;

function sub_30041650(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_30041650.length
    return sub_30041650[arg1]
}

function cakeToWbnbRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < cakeToWbnbRoute.length
    return cakeToWbnbRoute[arg1]
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function sub_fcde5e1c(?) payable {
    return sub_fcde5e1cAddress
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x9cf7bc57584b7998236eff51b98a168dcea9b0)
    staticcall 0x9cf7bc57584b7998236eff51b98a168dcea9b0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            mem[452 len 0] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
        else:
            require arg1
            if 10 * arg1 / arg1 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_fcde5e1cAddress)
        call sub_fcde5e1cAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 < arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            mem[516 len 0] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[516 len 4]
        else:
            require arg1
            if 10 * arg1 / arg1 != 10:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
            mem[516 len 0] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
}



}
