contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - deposit()
#
const sub_0532b23c(?) = 0xb752f0cb591ecfb1c5058a93e1332f066bf38473

const balanceOfPool = ext_call.return_data[0]

const unirouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const sub_523db94d(?) = 0x8191113581cbfa3fcdc6b0d2e6f84753d4850080

const balanceOf = (2 * ext_call.return_data[0])

const withdrawalFee = 10

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const rewards = 0x453d4ba9a2d594314df88564248497f7d74d6b2c

const sub_abb9392d(?) = ext_call.return_data[0]

const drugs = 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7

const withdrawalMax = 10000

const callfee = 200

const fee = 800

const maxfee = 1000


address outputAddress;
address sub_b34a166bAddress;
uint32 stor2;
address vaultAddress;
uint256 stor2;
array of address sub_4e14f475;
array of address sub_3b3d6e2d;

function sub_3b3d6e2d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3b3d6e2d.length
    return sub_3b3d6e2d[arg1]
}

function sub_4e14f475(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4e14f475.length
    return sub_4e14f475[arg1]
}

function sub_b34a166b(?) payable {
    return sub_b34a166bAddress
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7)
    staticcall 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[452 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
            else:
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) >> 32
                mem[452 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) << 224, mem[452 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
                mem[452 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
            else:
                if 10 * arg1 / arg1 != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
                mem[452 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    else:
        require ext_code.size(0x8191113581cbfa3fcdc6b0d2e6f84753d4850080)
        staticcall 0x8191113581cbfa3fcdc6b0d2e6f84753d4850080.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_b34a166bAddress)
        call sub_b34a166bAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - (2 * ext_call.return_data[0]))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x8191113581cbfa3fcdc6b0d2e6f84753d4850080)
        staticcall 0x8191113581cbfa3fcdc6b0d2e6f84753d4850080.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb752f0cb591ecfb1c5058a93e1332f066bf38473)
        if ext_call.return_data[0] <= arg1:
            call 0xb752f0cb591ecfb1c5058a93e1332f066bf38473.leaveStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        else:
            call 0xb752f0cb591ecfb1c5058a93e1332f066bf38473.leaveStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7)
        staticcall 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[580 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
            else:
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 10 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) >> 32
                mem[580 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) << 224, mem[580 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
                mem[580 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[580 len 4]
            else:
                if 10 * arg1 / arg1 != 10:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 10 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_code.size(0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
                mem[580 len 0] = 0
                call 0xfd26889cd6454d8751562f1c0fcf88b18b46f7b7 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 627 len 22]
}



}
