contract main {




// =====================  Runtime code  =====================


const burnTo = 1


address stor0;
address stor1;
address stor2;
address sub_78150cc5Address;
address pairAddress;
address sub_74e14eb8Address;
address sub_9c5a6b1bAddress;
mapping of uint8 stor7;
uint256 price;
uint256 createPrice;
array of uint256 sub_3ceab278;
array of uint256 stor11;
uint256 sub_86e41115;

function sub_3ceab278(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 16
    return sub_3ceab278[arg1]
}

function createPrice() payable {
    return createPrice
}

function sub_74e14eb8(?) payable {
    return sub_74e14eb8Address
}

function sub_78150cc5(?) payable {
    return sub_78150cc5Address
}

function sub_86e41115(?) payable {
    return sub_86e41115
}

function sub_9c5a6b1b(?) payable {
    return sub_9c5a6b1bAddress
}

function price() payable {
    return price
}

function pairAddress() payable {
    return pairAddress
}

function _fallback() payable {
    revert
}

function sub_2408b7fb(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    sub_86e41115 = arg1
    return 1
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    price = arg1
    createPrice = arg2
    return 1
}

function sub_cd1ad0e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    sub_78150cc5Address = address(arg1)
    return 1
}

function sub_6fb44536(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    if not address(arg1):
        revert with 0, 'SangoRouter: 0019'
    sub_9c5a6b1bAddress = address(arg1)
    return 1
}

function setWhitelist(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    if arg2 != 1:
        stor7[address(arg1)] = 0
    else:
        stor7[address(arg1)] = 1
    return 1
}

function setFeeTo(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    if not arg1:
        revert with 0, 'SangoRouter: 0015'
    stor1 = arg1
    if not arg2:
        revert with 0, 'SangoRouter: 0016'
    stor2 = arg2
    return 1
}

function setPairAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    if not arg1:
        revert with 0, 'SangoRouter: 0017'
    pairAddress = arg1
    if not arg2:
        revert with 0, 'SangoRouter: 0018'
    sub_74e14eb8Address = arg2
    return 1
}

function sub_cfbde8bd(?) payable {
    require calldata.size - 4 >= 512
    require 35 < calldata.size
    require calldata.size >= 516
    s = 4
    t = 96
    idx = 0
    while idx < 16:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Auth: caller is not the owner'
    s = 10
    idx = 96
    while 608 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 26
    while 26 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_4627c927(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if not pairAddress:
        revert with 0, 'SangoRouter: 0011'
    if not sub_74e14eb8Address:
        revert with 0, 'SangoRouter: 0012'
    if not sub_78150cc5Address:
        revert with 0, 'SangoRouter: 0013'
    require ext_code.size(sub_78150cc5Address)
    staticcall sub_78150cc5Address.0x865bdc30 with:
            gas gas_remaining wei
           args pairAddress, sub_74e14eb8Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SangoRouter: 0014'
    return ext_call.return_data[0]
}

function sub_a2f27f15(?) payable {
    require calldata.size - 4 >= 64
    if not stor7[msg.sender]:
        revert with 0, 'Tip: 0001'
    if not sub_9c5a6b1bAddress:
        revert with 0, 'SangoRouter: 0009'
    if arg2 and sub_86e41115 > -1 / arg2:
        revert with 0, 17
    if arg2 * sub_86e41115 <= 0:
        revert with 0, 'SangoRouter: 0010'
    require ext_code.size(sub_9c5a6b1bAddress)
    call sub_9c5a6b1bAddress.0xd2608eab with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2 * sub_86e41115 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_ffb318d2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if not stor7[msg.sender]:
        revert with 0, 'Tip: 0001'
    if not sub_9c5a6b1bAddress:
        revert with 0, 'SangoRouter: 0004'
    if createPrice:
        if not pairAddress:
            revert with 0, 'SangoRouter: 0011'
        if not sub_74e14eb8Address:
            revert with 0, 'SangoRouter: 0012'
        if not sub_78150cc5Address:
            revert with 0, 'SangoRouter: 0013'
        mem[ceil32(ceil32(arg3.length)) + 101] = pairAddress
        mem[ceil32(ceil32(arg3.length)) + 133] = sub_74e14eb8Address
        require ext_code.size(sub_78150cc5Address)
        staticcall sub_78150cc5Address.0x865bdc30 with:
                gas gas_remaining wei
               args pairAddress, sub_74e14eb8Address, createPrice
        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SangoRouter: 0014'
        if ext_call.return_data[0]:
            if not stor2:
                revert with 0, 'SangoRouter: 0005'
            if not sub_74e14eb8Address:
                revert with 0, 'SangoRouter: 0006'
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = 100
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_74e14eb8Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 293 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, stor2, ext_call.return_data[0], 0
            call sub_74e14eb8Address with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, stor2, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, stor2, ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if arg3.length:
                        revert with arg3[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg3.length:
                    require arg3.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325] == bool(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325])
                    if not mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_code.size(stor2):
                require ext_code.size(stor2)
                call stor2.0x324dafde with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9c5a6b1bAddress)
    call sub_9c5a6b1bAddress.0x877eb063 with:
         gas gas_remaining wei
        args msg.sender, arg1, address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function upgrade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        revert with 0, 'Tip: 0001'
    if not sub_9c5a6b1bAddress:
        revert with 0, 'SangoRouter: 0007'
    require ext_code.size(sub_9c5a6b1bAddress)
    staticcall sub_9c5a6b1bAddress.getAttrs(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 416] = ext_call.return_data[0 len 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    require return_data.size >= 352
    if not bool(ceil32(return_data.size) + 448 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[256]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[288]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[320]
    if 1 > !ext_call.return_data[352]:
        revert with 0, 17
    if ext_call.return_data[352] + 1 >= 16:
        revert with 0, 50
    if stor11[ext_call.return_data[352]]:
        if ext_call.return_data[352] > -2:
            revert with 0, 17
        if stor11[ext_call.return_data[352]] and ext_call.return_data[352] + 1 > -1 / stor11[ext_call.return_data[352]]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 484] = msg.sender
        mem[ceil32(return_data.size) + 516] = 1
        mem[ceil32(return_data.size) + 548] = stor11[ext_call.return_data[352]] + (ext_call.return_data[352] * stor11[ext_call.return_data[352]])
        mem[ceil32(return_data.size) + 448] = 100
        mem[ceil32(return_data.size) + 484 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 480 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[ceil32(return_data.size) + 580] = 32
        mem[ceil32(return_data.size) + 612] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[288])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 644 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 1, stor11[ext_call.return_data[352]] + (ext_call.return_data[352] * stor11[ext_call.return_data[352]]), 0
        mem[ceil32(return_data.size) + 744] = 0
        call address(ext_call.return_data[288]) with:
           funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 1, stor11[ext_call.return_data[352]] + (ext_call.return_data[352] * stor11[ext_call.return_data[352]]), 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 1, stor11[ext_call.return_data[352]] + (ext_call.return_data[352] * stor11[ext_call.return_data[352]]), 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 676] == bool(mem[ceil32(return_data.size) + 676])
                if not mem[ceil32(return_data.size) + 676]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_9c5a6b1bAddress)
    call sub_9c5a6b1bAddress.upgrade(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_8edcf538(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    mem[96 len 192] = call.data[calldata.size len 192]
    if not stor7[msg.sender]:
        revert with 0, 'Tip: 0001'
    if not sub_9c5a6b1bAddress:
        revert with 0, 'SangoRouter: 0001'
    if not price:
        require ext_code.size(sub_9c5a6b1bAddress)
        call sub_9c5a6b1bAddress.0xa5ee219 with:
             gas gas_remaining wei
            args msg.sender, arg1, uint8(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 224
        require 351 < return_data.size + 288
        if not bool(ceil32(return_data.size) + 480 <= test266151307()):
            revert with 0, 65
    else:
        if not pairAddress:
            revert with 0, 'SangoRouter: 0011'
        if not sub_74e14eb8Address:
            revert with 0, 'SangoRouter: 0012'
        if not sub_78150cc5Address:
            revert with 0, 'SangoRouter: 0013'
        mem[292] = pairAddress
        mem[324] = sub_74e14eb8Address
        mem[356] = price
        require ext_code.size(sub_78150cc5Address)
        staticcall sub_78150cc5Address.0x865bdc30 with:
                gas gas_remaining wei
               args pairAddress, sub_74e14eb8Address, price
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SangoRouter: 0014'
        if not ext_call.return_data[0]:
            require ext_code.size(sub_9c5a6b1bAddress)
            call sub_9c5a6b1bAddress.0xa5ee219 with:
                 gas gas_remaining wei
                args msg.sender, arg1, uint8(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 224
            require ceil32(return_data.size) + 351 < ceil32(return_data.size) + return_data.size + 288
            if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
                revert with 0, 65
        else:
            if not stor1:
                revert with 0, 'SangoRouter: 0002'
            if not sub_74e14eb8Address:
                revert with 0, 'SangoRouter: 0003'
            mem[ceil32(return_data.size) + 324] = msg.sender
            mem[ceil32(return_data.size) + 356] = stor1
            mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 288] = 100
            mem[ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 320 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[ceil32(return_data.size) + 420] = 32
            mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_74e14eb8Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 484 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, stor1, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 584] = 0
            call sub_74e14eb8Address with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, stor1, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, stor1, ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if call.data[calldata.size]:
                        revert with memory
                          from 128
                           len call.data[calldata.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[calldata.size]:
                    require call.data[calldata.size] >= 32
                    require call.data[calldata.size + 32] == bool(call.data[calldata.size + 32])
                    if not call.data[calldata.size + 32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ext_code.size(stor1):
                    require ext_code.size(stor1)
                    call stor1.0x324dafde with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9c5a6b1bAddress)
                call sub_9c5a6b1bAddress.0xa5ee219 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, uint8(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 224
                require ceil32(return_data.size) + 547 < ceil32(return_data.size) + return_data.size + 484
                if not bool((2 * ceil32(return_data.size)) + 676 <= test266151307()):
                    revert with 0, 65
            else:
                mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                    if not mem[ceil32(return_data.size) + 516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ext_code.size(stor1):
                    require ext_code.size(stor1)
                    call stor1.0x324dafde with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9c5a6b1bAddress)
                call sub_9c5a6b1bAddress.0xa5ee219 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, uint8(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 224
                require ceil32(return_data.size) + ceil32(return_data.size) + 548 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 485
                if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 677 <= test266151307()):
                    revert with 0, 65
    require return_data.size >= 224
    emit 0xb4907965: ext_call.return_data[0], ext_call.return_data[32 len 192]
    return ext_call.return_data[0], ext_call.return_data[32 len 192]
}



}
