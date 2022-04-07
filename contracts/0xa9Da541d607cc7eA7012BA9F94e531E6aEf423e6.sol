contract main {




// =====================  Runtime code  =====================


#
#  - sub_5507ddb9(?)
#
address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
mapping of uint256 stor4;

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
  stop
}

function sub_55089992(?) {
    require calldata.size - 4 >= 96
    if arg2:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if arg3:
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[288 len 0] = None
    return Array(len=3, data=mem[288 len 96])
}

function sub_ee4dfd7e(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'sender is not owner'
    if arg1:
        if arg1 <= 0:
            revert with 0, 'amount is 0'
        if eth.balance(this.address) < arg1:
            return 0
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        if eth.balance(this.address) <= 0:
            revert with 0, 'amount is 0'
        if eth.balance(this.address) < eth.balance(this.address):
            return 0
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_4d33678a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'sender is not owner'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
}

function takerWithdraw() {
    if stor0 != msg.sender:
        revert with 0, 'sender is not owner'
    require ext_code.size(0x7373c42502874c88954bdd6d50b53061f018422e)
    call 0x7373c42502874c88954bdd6d50b53061f018422e.0xb872dd0e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c)
    staticcall 0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c)
        call 0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function getReserves(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not arg2:
        if not arg3:
            return eth.balance(arg1), eth.balance(arg1)
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return eth.balance(arg1), ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        return ext_call.return_data[0], eth.balance(arg1)
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function withdrawtoken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'sender is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if arg2 <= 0:
            revert with 0, 'amount is 0'
        if ext_call.return_data[0] < arg2:
            return 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'amount is 0'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function allowances(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, 'sender is not owner or user'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6854524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe54524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe54524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(arg3)][address(arg1)]:
        return bool(stor4[address(arg3)][address(arg1)])
    return bool(stor4[address(arg3)][address(arg2)])
}

function sub_07d2c078(?) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, 'sender is not owner or user'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6854524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe54524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe54524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(arg3)][address(arg1)]:
        require ext_code.size(arg3)
        call arg3.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor4[address(arg3)][address(arg1)] = 1
    if not stor4[address(arg3)][address(arg2)]:
        require ext_code.size(arg3)
        call arg3.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor4[address(arg3)][address(arg2)] = 1
    return 1
}

function getPair(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, 'sender is not owner or user'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        mem[544 len 0] = None
        mem[672 len 0] = None
        return 128, 256, 352, 384, 3, mem[544 len 96], 2, mem[672 len 64], 0, 0
    mem[324] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        if not ext_call.return_data[12 len 20]:
            mem[288] = eth.balance(ext_call.return_data[0])
            mem[320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _93 = mem[320]
            require mem[320] <= 4294967296
            require mem[320] + 32 <= return_data.size
            require return_data.size >= mem[mem[320] + 320] + mem[320] + 32 and mem[mem[320] + 320] <= 4294967296
            mem[ceil32(return_data.size) + 320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _114 = mem[ceil32(return_data.size) + 320]
            require mem[ceil32(return_data.size) + 320] <= 4294967296
            require mem[ceil32(return_data.size) + 320] + 32 <= return_data.size
            require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] + mem[ceil32(return_data.size) + 320] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] <= 4294967296
            mem[(2 * ceil32(return_data.size)) + 320] = 128
            mem[(2 * ceil32(return_data.size)) + 448] = 3
            mem[(2 * ceil32(return_data.size)) + 480 len 0] = None
            mem[(2 * ceil32(return_data.size)) + 352] = 256
            mem[(2 * ceil32(return_data.size)) + 576] = 2
            mem[(2 * ceil32(return_data.size)) + 608 len 0] = None
            mem[(2 * ceil32(return_data.size)) + 384] = 352
            mem[(2 * ceil32(return_data.size)) + 672] = mem[_93 + 320]
            _330 = mem[_93 + 320]
            mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_93 + 320])] = mem[_93 + 352 len ceil32(mem[_93 + 320])]
            if not _330 % 32:
                mem[(2 * ceil32(return_data.size)) + 416] = _330 + 384
                mem[_330 + (2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _114 + 320]
                _420 = mem[ceil32(return_data.size) + _114 + 320]
                mem[_330 + (2 * ceil32(return_data.size)) + 736 len ceil32(mem[ceil32(return_data.size) + _114 + 320])] = mem[ceil32(return_data.size) + _114 + 352 len ceil32(mem[ceil32(return_data.size) + _114 + 320])]
                if not _420 % 32:
                    return memory
                      from (2 * ceil32(return_data.size)) + 320
                       len _420 + _330 + ceil32(return_data.size) + 416
                mem[floor32(_420) + _330 + (2 * ceil32(return_data.size)) + 736] = mem[floor32(_420) + _330 + (2 * ceil32(return_data.size)) + -(_420 % 32) + 768 len _420 % 32]
                return memory
                  from (2 * ceil32(return_data.size)) + 320
                   len floor32(_420) + _330 + ceil32(return_data.size) + 448
            mem[floor32(_330) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_330) + (2 * ceil32(return_data.size)) + -(_330 % 32) + 736 len _330 % 32]
            mem[(2 * ceil32(return_data.size)) + 416] = floor32(_330) + 416
            mem[floor32(_330) + (2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _114 + 320]
            _432 = mem[ceil32(return_data.size) + _114 + 320]
            mem[floor32(_330) + (2 * ceil32(return_data.size)) + 768 len ceil32(mem[ceil32(return_data.size) + _114 + 320])] = mem[ceil32(return_data.size) + _114 + 352 len ceil32(mem[ceil32(return_data.size) + _114 + 320])]
            if not _432 % 32:
                return memory
                  from (2 * ceil32(return_data.size)) + 320
                   len _432 + floor32(_330) + ceil32(return_data.size) + 448
            mem[floor32(_432) + floor32(_330) + (2 * ceil32(return_data.size)) + 768] = mem[floor32(_432) + floor32(_330) + (2 * ceil32(return_data.size)) + -(_432 % 32) + 800 len _432 % 32]
            return memory
              from (2 * ceil32(return_data.size)) + 320
               len floor32(_432) + floor32(_330) + ceil32(return_data.size) + 480
        mem[324] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = ext_call.return_data[0]
        mem[320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _102 = mem[320]
        require mem[320] <= 4294967296
        require mem[320] + 32 <= return_data.size
        require return_data.size >= mem[mem[320] + 320] + mem[320] + 32 and mem[mem[320] + 320] <= 4294967296
        mem[ceil32(return_data.size) + 320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _122 = mem[ceil32(return_data.size) + 320]
        require mem[ceil32(return_data.size) + 320] <= 4294967296
        require mem[ceil32(return_data.size) + 320] + 32 <= return_data.size
        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] + mem[ceil32(return_data.size) + 320] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] <= 4294967296
        mem[(2 * ceil32(return_data.size)) + 320] = 128
        mem[(2 * ceil32(return_data.size)) + 448] = 3
        mem[(2 * ceil32(return_data.size)) + 480 len 0] = None
        mem[(2 * ceil32(return_data.size)) + 352] = 256
        mem[(2 * ceil32(return_data.size)) + 576] = 2
        mem[(2 * ceil32(return_data.size)) + 608 len 0] = None
        mem[(2 * ceil32(return_data.size)) + 384] = 352
        mem[(2 * ceil32(return_data.size)) + 672] = mem[_102 + 320]
        _327 = mem[_102 + 320]
        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_102 + 320])] = mem[_102 + 352 len ceil32(mem[_102 + 320])]
        if not _327 % 32:
            mem[(2 * ceil32(return_data.size)) + 416] = _327 + 384
            mem[_327 + (2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _122 + 320]
            _417 = mem[ceil32(return_data.size) + _122 + 320]
            mem[_327 + (2 * ceil32(return_data.size)) + 736 len ceil32(mem[ceil32(return_data.size) + _122 + 320])] = mem[ceil32(return_data.size) + _122 + 352 len ceil32(mem[ceil32(return_data.size) + _122 + 320])]
            if not _417 % 32:
                return memory
                  from (2 * ceil32(return_data.size)) + 320
                   len _417 + _327 + ceil32(return_data.size) + 416
            mem[floor32(_417) + _327 + (2 * ceil32(return_data.size)) + 736] = mem[floor32(_417) + _327 + (2 * ceil32(return_data.size)) + -(_417 % 32) + 768 len _417 % 32]
            return memory
              from (2 * ceil32(return_data.size)) + 320
               len floor32(_417) + _327 + ceil32(return_data.size) + 448
        mem[floor32(_327) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_327) + (2 * ceil32(return_data.size)) + -(_327 % 32) + 736 len _327 % 32]
        mem[(2 * ceil32(return_data.size)) + 416] = floor32(_327) + 416
        mem[floor32(_327) + (2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _122 + 320]
        _430 = mem[ceil32(return_data.size) + _122 + 320]
        mem[floor32(_327) + (2 * ceil32(return_data.size)) + 768 len ceil32(mem[ceil32(return_data.size) + _122 + 320])] = mem[ceil32(return_data.size) + _122 + 352 len ceil32(mem[ceil32(return_data.size) + _122 + 320])]
        if not _430 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 320
               len _430 + floor32(_327) + ceil32(return_data.size) + 448
        mem[floor32(_430) + floor32(_327) + (2 * ceil32(return_data.size)) + 768] = mem[floor32(_430) + floor32(_327) + (2 * ceil32(return_data.size)) + -(_430 % 32) + 800 len _430 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 320
           len floor32(_430) + floor32(_327) + ceil32(return_data.size) + 480
    mem[324] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        mem[288] = eth.balance(ext_call.return_data[0])
        mem[320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _101 = mem[320]
        require mem[320] <= 4294967296
        require mem[320] + 32 <= return_data.size
        require return_data.size >= mem[mem[320] + 320] + mem[320] + 32 and mem[mem[320] + 320] <= 4294967296
        mem[ceil32(return_data.size) + 320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _121 = mem[ceil32(return_data.size) + 320]
        require mem[ceil32(return_data.size) + 320] <= 4294967296
        require mem[ceil32(return_data.size) + 320] + 32 <= return_data.size
        require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] + mem[ceil32(return_data.size) + 320] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] <= 4294967296
        mem[(2 * ceil32(return_data.size)) + 320] = 128
        mem[(2 * ceil32(return_data.size)) + 448] = 3
        mem[(2 * ceil32(return_data.size)) + 480 len 0] = None
        mem[(2 * ceil32(return_data.size)) + 352] = 256
        mem[(2 * ceil32(return_data.size)) + 576] = 2
        mem[(2 * ceil32(return_data.size)) + 608 len 0] = None
        mem[(2 * ceil32(return_data.size)) + 384] = 352
        mem[(2 * ceil32(return_data.size)) + 672] = mem[_101 + 320]
        _324 = mem[_101 + 320]
        mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_101 + 320])] = mem[_101 + 352 len ceil32(mem[_101 + 320])]
        if not _324 % 32:
            mem[(2 * ceil32(return_data.size)) + 416] = _324 + 384
            mem[_324 + (2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _121 + 320]
            _414 = mem[ceil32(return_data.size) + _121 + 320]
            mem[_324 + (2 * ceil32(return_data.size)) + 736 len ceil32(mem[ceil32(return_data.size) + _121 + 320])] = mem[ceil32(return_data.size) + _121 + 352 len ceil32(mem[ceil32(return_data.size) + _121 + 320])]
            if not _414 % 32:
                return memory
                  from (2 * ceil32(return_data.size)) + 320
                   len _414 + _324 + ceil32(return_data.size) + 416
            mem[floor32(_414) + _324 + (2 * ceil32(return_data.size)) + 736] = mem[floor32(_414) + _324 + (2 * ceil32(return_data.size)) + -(_414 % 32) + 768 len _414 % 32]
            return memory
              from (2 * ceil32(return_data.size)) + 320
               len floor32(_414) + _324 + ceil32(return_data.size) + 448
        mem[floor32(_324) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_324) + (2 * ceil32(return_data.size)) + -(_324 % 32) + 736 len _324 % 32]
        mem[(2 * ceil32(return_data.size)) + 416] = floor32(_324) + 416
        mem[floor32(_324) + (2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _121 + 320]
        _428 = mem[ceil32(return_data.size) + _121 + 320]
        mem[floor32(_324) + (2 * ceil32(return_data.size)) + 768 len ceil32(mem[ceil32(return_data.size) + _121 + 320])] = mem[ceil32(return_data.size) + _121 + 352 len ceil32(mem[ceil32(return_data.size) + _121 + 320])]
        if not _428 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 320
               len _428 + floor32(_324) + ceil32(return_data.size) + 448
        mem[floor32(_428) + floor32(_324) + (2 * ceil32(return_data.size)) + 768] = mem[floor32(_428) + floor32(_324) + (2 * ceil32(return_data.size)) + -(_428 % 32) + 800 len _428 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 320
           len floor32(_428) + floor32(_324) + ceil32(return_data.size) + 480
    mem[324] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = ext_call.return_data[0]
    mem[320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _109 = mem[320]
    require mem[320] <= 4294967296
    require mem[320] + 32 <= return_data.size
    require return_data.size >= mem[mem[320] + 320] + mem[320] + 32 and mem[mem[320] + 320] <= 4294967296
    mem[ceil32(return_data.size) + 320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _129 = mem[ceil32(return_data.size) + 320]
    require mem[ceil32(return_data.size) + 320] <= 4294967296
    require mem[ceil32(return_data.size) + 320] + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] + mem[ceil32(return_data.size) + 320] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 320] <= 4294967296
    mem[(2 * ceil32(return_data.size)) + 320] = 128
    mem[(2 * ceil32(return_data.size)) + 448] = 3
    mem[(2 * ceil32(return_data.size)) + 480 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 352] = 256
    mem[(2 * ceil32(return_data.size)) + 576] = 2
    mem[(2 * ceil32(return_data.size)) + 608 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 384] = 352
    mem[(2 * ceil32(return_data.size)) + 672] = mem[_109 + 320]
    _321 = mem[_109 + 320]
    mem[(2 * ceil32(return_data.size)) + 704 len ceil32(mem[_109 + 320])] = mem[_109 + 352 len ceil32(mem[_109 + 320])]
    if not _321 % 32:
        mem[(2 * ceil32(return_data.size)) + 416] = _321 + 384
        mem[_321 + (2 * ceil32(return_data.size)) + 704] = mem[ceil32(return_data.size) + _129 + 320]
        _411 = mem[ceil32(return_data.size) + _129 + 320]
        mem[_321 + (2 * ceil32(return_data.size)) + 736 len ceil32(mem[ceil32(return_data.size) + _129 + 320])] = mem[ceil32(return_data.size) + _129 + 352 len ceil32(mem[ceil32(return_data.size) + _129 + 320])]
        if not _411 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 320
               len _411 + _321 + ceil32(return_data.size) + 416
        mem[floor32(_411) + _321 + (2 * ceil32(return_data.size)) + 736] = mem[floor32(_411) + _321 + (2 * ceil32(return_data.size)) + -(_411 % 32) + 768 len _411 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 320
           len floor32(_411) + _321 + ceil32(return_data.size) + 448
    mem[floor32(_321) + (2 * ceil32(return_data.size)) + 704] = mem[floor32(_321) + (2 * ceil32(return_data.size)) + -(_321 % 32) + 736 len _321 % 32]
    mem[(2 * ceil32(return_data.size)) + 416] = floor32(_321) + 416
    mem[floor32(_321) + (2 * ceil32(return_data.size)) + 736] = mem[ceil32(return_data.size) + _129 + 320]
    _426 = mem[ceil32(return_data.size) + _129 + 320]
    mem[floor32(_321) + (2 * ceil32(return_data.size)) + 768 len ceil32(mem[ceil32(return_data.size) + _129 + 320])] = mem[ceil32(return_data.size) + _129 + 352 len ceil32(mem[ceil32(return_data.size) + _129 + 320])]
    if not _426 % 32:
        return memory
          from (2 * ceil32(return_data.size)) + 320
           len _426 + floor32(_321) + ceil32(return_data.size) + 448
    mem[floor32(_426) + floor32(_321) + (2 * ceil32(return_data.size)) + 768] = mem[floor32(_426) + floor32(_321) + (2 * ceil32(return_data.size)) + -(_426 % 32) + 800 len _426 % 32]
    return memory
      from (2 * ceil32(return_data.size)) + 320
       len floor32(_426) + floor32(_321) + ceil32(return_data.size) + 480
}

function sub_1905fcd8(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'sender is not owner or user'
    require ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length
    if not address(('cd', 36)[0]):
        require 0 < ('cd', 68).length
        if not address(('cd', 68)[0]):
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = cd[4]
            mem[132] = 1
            mem[196] = this.address
            mem[228] = block.timestamp + 60
            mem[164] = 160
            mem[260] = ('cd', 36).length
            mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 36).length) + 292] = 0
            require ext_code.size(stor3)
            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            _88 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = _88
            mem[ceil32(return_data.size) + 132] = 1
            mem[ceil32(return_data.size) + 196] = this.address
            mem[ceil32(return_data.size) + 228] = block.timestamp + 60
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = ('cd', 68).length
            mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
            require ext_code.size(stor3)
            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _88, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _88) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _88) >> 32 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _88) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _88) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _88) >> 32 + 96]) + 32 <= return_data.size
        else:
            if stor2 == address(('cd', 68)[0]):
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = cd[4]
                mem[132] = 1
                mem[196] = this.address
                mem[228] = block.timestamp + 60
                mem[164] = 160
                mem[260] = ('cd', 36).length
                mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + 292] = 0
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                _105 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = _105
                mem[ceil32(return_data.size) + 132] = 1
                mem[ceil32(return_data.size) + 196] = this.address
                mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                mem[ceil32(return_data.size) + 164] = 160
                mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _105, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _105) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _105) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _105) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _105) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _105) >> 32 + 96]) + 32 <= return_data.size
            else:
                mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                mem[32] = sha3(address(('cd', 68)[0]), 4)
                if stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300]:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[4]
                    mem[132] = 1
                    mem[196] = this.address
                    mem[228] = block.timestamp + 60
                    mem[164] = 160
                    mem[260] = ('cd', 36).length
                    mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    _125 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = _125
                    mem[ceil32(return_data.size) + 132] = 1
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                    mem[ceil32(return_data.size) + 164] = 160
                    mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                    mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _125, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _125) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _125) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _125) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _125) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _125) >> 32 + 96]) + 32 <= return_data.size
                else:
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                    mem[32] = sha3(address(('cd', 68)[0]), 4)
                    stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300] = 1
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[4]
                    mem[132] = 1
                    mem[196] = this.address
                    mem[228] = block.timestamp + 60
                    mem[164] = 160
                    mem[260] = ('cd', 36).length
                    mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    _178 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = _178
                    mem[ceil32(return_data.size) + 132] = 1
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                    mem[ceil32(return_data.size) + 164] = 160
                    mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                    mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _178, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _178) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _178) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _178) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _178) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _178) >> 32 + 96]) + 32 <= return_data.size
    else:
        if stor2 == address(('cd', 36)[0]):
            require 0 < ('cd', 68).length
            if not address(('cd', 68)[0]):
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = cd[4]
                mem[132] = 1
                mem[196] = this.address
                mem[228] = block.timestamp + 60
                mem[164] = 160
                mem[260] = ('cd', 36).length
                mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 36).length) + 292] = 0
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                _111 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = _111
                mem[ceil32(return_data.size) + 132] = 1
                mem[ceil32(return_data.size) + 196] = this.address
                mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                mem[ceil32(return_data.size) + 164] = 160
                mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                require ext_code.size(stor3)
                call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _111, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _111) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _111) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _111) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _111) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _111) >> 32 + 96]) + 32 <= return_data.size
            else:
                if stor2 == address(('cd', 68)[0]):
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[4]
                    mem[132] = 1
                    mem[196] = this.address
                    mem[228] = block.timestamp + 60
                    mem[164] = 160
                    mem[260] = ('cd', 36).length
                    mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    _128 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = _128
                    mem[ceil32(return_data.size) + 132] = 1
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                    mem[ceil32(return_data.size) + 164] = 160
                    mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                    mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _128, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _128) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _128) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _128) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _128) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _128) >> 32 + 96]) + 32 <= return_data.size
                else:
                    mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                    mem[32] = sha3(address(('cd', 68)[0]), 4)
                    if stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300]:
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = cd[4]
                        mem[132] = 1
                        mem[196] = this.address
                        mem[228] = block.timestamp + 60
                        mem[164] = 160
                        mem[260] = ('cd', 36).length
                        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                        _149 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = _149
                        mem[ceil32(return_data.size) + 132] = 1
                        mem[ceil32(return_data.size) + 196] = this.address
                        mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                        mem[ceil32(return_data.size) + 164] = 160
                        mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                        mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _149, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _149) >> 32 <= 4294967296
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _149) >> 32 + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _149) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _149) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _149) >> 32 + 96]) + 32 <= return_data.size
                    else:
                        require ext_code.size(address(('cd', 68)[0]))
                        call address(('cd', 68)[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                        mem[32] = sha3(address(('cd', 68)[0]), 4)
                        stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300] = 1
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = cd[4]
                        mem[132] = 1
                        mem[196] = this.address
                        mem[228] = block.timestamp + 60
                        mem[164] = 160
                        mem[260] = ('cd', 36).length
                        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                        _200 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = _200
                        mem[ceil32(return_data.size) + 132] = 1
                        mem[ceil32(return_data.size) + 196] = this.address
                        mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                        mem[ceil32(return_data.size) + 164] = 160
                        mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                        mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _200, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _200) >> 32 <= 4294967296
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _200) >> 32 + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _200) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _200) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _200) >> 32 + 96]) + 32 <= return_data.size
        else:
            mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
            mem[32] = sha3(address(('cd', 36)[0]), 4)
            if stor4[address(('cd', 36)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300]:
                require 0 < ('cd', 68).length
                if not address(('cd', 68)[0]):
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[4]
                    mem[132] = 1
                    mem[196] = this.address
                    mem[228] = block.timestamp + 60
                    mem[164] = 160
                    mem[260] = ('cd', 36).length
                    mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    _134 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = _134
                    mem[ceil32(return_data.size) + 132] = 1
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                    mem[ceil32(return_data.size) + 164] = 160
                    mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                    mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _134, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _134) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _134) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _134) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _134) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _134) >> 32 + 96]) + 32 <= return_data.size
                else:
                    if stor2 == address(('cd', 68)[0]):
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = cd[4]
                        mem[132] = 1
                        mem[196] = this.address
                        mem[228] = block.timestamp + 60
                        mem[164] = 160
                        mem[260] = ('cd', 36).length
                        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                        _152 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = _152
                        mem[ceil32(return_data.size) + 132] = 1
                        mem[ceil32(return_data.size) + 196] = this.address
                        mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                        mem[ceil32(return_data.size) + 164] = 160
                        mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                        mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _152, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _152) >> 32 <= 4294967296
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _152) >> 32 + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _152) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _152) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _152) >> 32 + 96]) + 32 <= return_data.size
                    else:
                        mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                        mem[32] = sha3(address(('cd', 68)[0]), 4)
                        if stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300]:
                            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[100] = cd[4]
                            mem[132] = 1
                            mem[196] = this.address
                            mem[228] = block.timestamp + 60
                            mem[164] = 160
                            mem[260] = ('cd', 36).length
                            mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                            _170 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = _170
                            mem[ceil32(return_data.size) + 132] = 1
                            mem[ceil32(return_data.size) + 196] = this.address
                            mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                            mem[ceil32(return_data.size) + 164] = 160
                            mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                            mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _170, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _170) >> 32 <= 4294967296
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _170) >> 32 + 32 <= return_data.size
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _170) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _170) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _170) >> 32 + 96]) + 32 <= return_data.size
                        else:
                            require ext_code.size(address(('cd', 68)[0]))
                            call address(('cd', 68)[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                            mem[32] = sha3(address(('cd', 68)[0]), 4)
                            stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300] = 1
                            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[100] = cd[4]
                            mem[132] = 1
                            mem[196] = this.address
                            mem[228] = block.timestamp + 60
                            mem[164] = 160
                            mem[260] = ('cd', 36).length
                            mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                            _222 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = _222
                            mem[ceil32(return_data.size) + 132] = 1
                            mem[ceil32(return_data.size) + 196] = this.address
                            mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                            mem[ceil32(return_data.size) + 164] = 160
                            mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                            mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _222, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _222) >> 32 <= 4294967296
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _222) >> 32 + 32 <= return_data.size
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _222) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _222) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _222) >> 32 + 96]) + 32 <= return_data.size
            else:
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                mem[32] = sha3(address(('cd', 36)[0]), 4)
                stor4[address(('cd', 36)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300] = 1
                require 0 < ('cd', 68).length
                if not address(('cd', 68)[0]):
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = cd[4]
                    mem[132] = 1
                    mem[196] = this.address
                    mem[228] = block.timestamp + 60
                    mem[164] = 160
                    mem[260] = ('cd', 36).length
                    mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 36).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                    _188 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = _188
                    mem[ceil32(return_data.size) + 132] = 1
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                    mem[ceil32(return_data.size) + 164] = 160
                    mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                    mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _188, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _188) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _188) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _188) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _188) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _188) >> 32 + 96]) + 32 <= return_data.size
                else:
                    if stor2 == address(('cd', 68)[0]):
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = cd[4]
                        mem[132] = 1
                        mem[196] = this.address
                        mem[228] = block.timestamp + 60
                        mem[164] = 160
                        mem[260] = ('cd', 36).length
                        mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                        mem[(32 * ('cd', 36).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                        require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                        _207 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = _207
                        mem[ceil32(return_data.size) + 132] = 1
                        mem[ceil32(return_data.size) + 196] = this.address
                        mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                        mem[ceil32(return_data.size) + 164] = 160
                        mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                        mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _207, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _207) >> 32 <= 4294967296
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _207) >> 32 + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _207) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _207) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 32 <= return_data.size
                    else:
                        mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                        mem[32] = sha3(address(('cd', 68)[0]), 4)
                        if stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300]:
                            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[100] = cd[4]
                            mem[132] = 1
                            mem[196] = this.address
                            mem[228] = block.timestamp + 60
                            mem[164] = 160
                            mem[260] = ('cd', 36).length
                            mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                            _226 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = _226
                            mem[ceil32(return_data.size) + 132] = 1
                            mem[ceil32(return_data.size) + 196] = this.address
                            mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                            mem[ceil32(return_data.size) + 164] = 160
                            mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                            mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _226, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _226) >> 32 <= 4294967296
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _226) >> 32 + 32 <= return_data.size
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _226) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _226) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _226) >> 32 + 96]) + 32 <= return_data.size
                        else:
                            require ext_code.size(address(('cd', 68)[0]))
                            call address(('cd', 68)[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300, -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                            mem[32] = sha3(address(('cd', 68)[0]), 4)
                            stor4[address(('cd', 68)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300] = 1
                            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[100] = cd[4]
                            mem[132] = 1
                            mem[196] = this.address
                            mem[228] = block.timestamp + 60
                            mem[164] = 160
                            mem[260] = ('cd', 36).length
                            mem[292 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                            mem[(32 * ('cd', 36).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(cd[4]), 1, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, call.data[cd[36] + 36 len floor32(('cd', 36).length)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
                            require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
                            require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1 < mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
                            _272 = mem[(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] - 1) + mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
                            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = _272
                            mem[ceil32(return_data.size) + 132] = 1
                            mem[ceil32(return_data.size) + 196] = this.address
                            mem[ceil32(return_data.size) + 228] = block.timestamp + 60
                            mem[ceil32(return_data.size) + 164] = 160
                            mem[ceil32(return_data.size) + 260] = ('cd', 68).length
                            mem[ceil32(return_data.size) + 292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 292] = 0
                            require ext_code.size(stor3)
                            call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _272, 1, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(this.address), block.timestamp + 60
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _272) >> 32 <= 4294967296
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _272) >> 32 + 32 <= return_data.size
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _272) >> 32 + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _272) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, _272) >> 32 + 96]) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 96] = 0xb872dd0e00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x7373c42502874c88954bdd6d50b53061f018422e)
    call 0x7373c42502874c88954bdd6d50b53061f018422e.0xb872dd0e with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c)
    staticcall 0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 100).length
    if address(('cd', 100)[0]):
        if stor2 != address(('cd', 100)[0]):
            if not stor4[address(('cd', 100)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300]:
                mem[(2 * ceil32(return_data.size)) + 100] = 0xed7d5f38c79115ca12fe6c0041abb22f0a06c300
                mem[(2 * ceil32(return_data.size)) + 132] = -1
                require ext_code.size(address(('cd', 100)[0]))
                call address(('cd', 100)[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor4[address(('cd', 100)[0])][0xed7d5f38c79115ca12fe6c0041abb22f0a06c300] = 1
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 292] = 0
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + floor32(('cd', 100).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 100 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 96] = 1
        return memory
          from (4 * ceil32(return_data.size)) + 96
           len (5 * ceil32(return_data.size)) + 32
    mem[(4 * ceil32(return_data.size)) + 96] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = 32
    mem[(4 * ceil32(return_data.size)) + 132] = 30
    mem[(4 * ceil32(return_data.size)) + 164] = 'Error: BOT_TOKEN_OUTPUT_AMOUNT'
    revert with memory
      from (4 * ceil32(return_data.size)) + 96
       len (5 * ceil32(return_data.size)) + 100
}



}
