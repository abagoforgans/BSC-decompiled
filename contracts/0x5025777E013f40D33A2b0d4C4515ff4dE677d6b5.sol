contract main {




// =====================  Runtime code  =====================


const govToken = 0

const stakeToken = 0

const balance = Array(len=2, data=ext_call.return_data[0], ext_call.return_data[0])

const depositToken = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82


address _owner;

function _owner() {
    return _owner
}

function _fallback() payable {
    revert
}

function compound() {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.pendingCake(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.enterStaking(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    if _owner != tx.origin:
        revert with 0, 'only owner'
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != tx.origin:
        revert with 0, 'only owner'
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    if arg1:
        call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.pendingCake(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        require arg1 > 0
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x73feaa1ee314f8c655e354234017be2193c9e24e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg1:
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.pendingCake(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
            mem[(4 * ceil32(return_data.size)) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(4 * ceil32(return_data.size)) + 196] = arg1 + ext_call.return_data[0]
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            call 0x73feaa1ee314f8c655e354234017be2193c9e24e.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 32]
        else:
            require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x73feaa1ee314f8c655e354234017be2193c9e24e, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.pendingCake(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, address(this.address), mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(8 * ceil32(return_data.size)) + 196] = arg1 + ext_call.return_data[0]
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            call 0x73feaa1ee314f8c655e354234017be2193c9e24e.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 32]
    else:
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x73feaa1ee314f8c655e354234017be2193c9e24e
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.pendingCake(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, address(this.address), mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[(8 * ceil32(return_data.size)) + 196] = 2 * ext_call.return_data[0]
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            call 0x73feaa1ee314f8c655e354234017be2193c9e24e.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 32]
        else:
            require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x73feaa1ee314f8c655e354234017be2193c9e24e, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.pendingCake(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            mem[(7 * ceil32(return_data.size)) + 192 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            call 0x73feaa1ee314f8c655e354234017be2193c9e24e.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
